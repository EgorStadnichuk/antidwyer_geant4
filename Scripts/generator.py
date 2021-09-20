import xml.etree.ElementTree as ET
from string import Template
import sys, os
import shutil
import subprocess
from multiprocessing import Pool
import numpy as np


ROOT_PATH = '/home/npm-geant/CLionProjects/Atmosphere/AntiDwyer/seed/Scripts/'
GDML_PATH = ROOT_PATH + 'default.gdml'
GPS_PATH = ROOT_PATH + 'gps.mac'
INIT_PATH = ROOT_PATH + 'init_practice.mac'
print('yo')
print(ROOT_PATH)
print('yo')
PROGRAMM_GEANT4_PATH = ROOT_PATH + '../cmake-build-debug/'

# materials = ["G4_Ca", "G4_Fe","G4_GLASS_PLATE", "G4_WATER"]
# energy = [30, 50, 100, 150, 200, 300, 400, 500]
ElectricField = ["5e-4"]
energy = [5]
# raduis = [200, 500]
files = [GDML_PATH, GPS_PATH]


def createFile(electric=None, energy=None):
    energy = list(map(str,energy))
    runPath = []
    dictTemp = {'energy': None, 'ElectricField': None}
    # materialScreen = ["G4_Fe", "G4_C"]
    fgdml = open(GDML_PATH)
    fgps = open(GPS_PATH)
    finit = open(INIT_PATH)
    init = finit.read()
    gdml = fgdml.read()
    gps = fgps.read()
    finit.close()
    fgdml.close()
    fgps.close()
    for field in electric:
        os.mkdir(field)
        pathM = field
        dictTemp['ElectricField'] = field
        # for r in radius:
        #     pathR = pathM+"/" + radius
        #     os.mkdir(pathR)
        #     dictTemp['radius'] = r
        for e in energy:
            pathE = pathM + "/" + e
            os.mkdir(pathE)
            pathE += "/"
            dictTemp['energy'] = e
            runPath.append(pathE)
            os.mkdir(pathE + 'gdml')
            os.mkdir(pathE + 'gps')
            os.mkdir(pathE + 'mac')
            with open(pathE + 'gdml/default.gdml', 'w') as fgdml, open(pathE + 'gps/gps.mac', 'w') as fgps, open(pathE + 'mac/init.mac', 'w') as finit:
                tempGDML = Template(gdml)
                tempGPS = Template(gps)
                tempINIT = Template(init)
                fgdml.write(tempGDML.safe_substitute(dictTemp))
                fgps.write(tempGPS.safe_substitute(dictTemp))
                finit.write(init)
            os.mkdir(pathE + 'output')

    # with open('path.txt', 'w') as fout:
    #     for path in runPath:
    #         fout.write(path+'\n')
    return runPath


def runSimulations(runPath):
    print(runPath)
    os.chdir(PROGRAMM_GEANT4_PATH)
    shutil.copy('geant4.exe', runPath)
    os.chdir(runPath)
    p = subprocess.Popen(runPath + '/geant4.exe -d -g ./gdml/default.gdml -i ./mac/init.mac -gps ./gps/gps.mac', shell=True)
    p.wait()

    return 0

# def countPositrons(runPath):
#    print(runPath)
#    os.chdir(runPath + '/output')
#    i = 0
#    with open('PositronZCoord.txt') as fin:
#        for line in enumerate(fin.readlines()):
#            i = i + 1
#    i = i - 1


def readPath():
    with open('path.txt') as fin:
        paths = fin.read()
    return paths.splitlines()


def main():
    currPath = os.getcwd()
    print(currPath)
    # subprocess.call('rm -rf *', shell=True)
    electric = ['2.2e-4', '2.4e-4', '2.6e-4', '2.8e-4', '3e-4'] # ['1e-4', '1.2e-4', '1.4e-4', '1.6e-4', '1.8e-4', '2e-4'] 
    with open('result.txt', 'w') as f:
        for j in range(len(electric)):
            field = []
            field.append(electric[j])
            paths = createFile(field, energy)
            for i in range(len(paths)):
                paths[i] = currPath + '/' + paths[i][:-1]
            # for i in range(1):
            with Pool(os.cpu_count()) as p:
                print(p.map(runSimulations, paths))
                # print(p.map(countPositrons, paths))
            os.chdir(ROOT_PATH)
            data = np.loadtxt(paths[0] + '/output/PositronMomentumOutput.txt')
            number = 0
            try:
                if len(data) != 0:
                    for k in range(len(data)):
                            number = number + 1
                else:
                    number = 0
            except TypeError:
                number = 0
            f.write(field[0] + ' ' + str(number) + '\n')
            shutil.rmtree(field[0])

    return 0


if __name__ == "__main__":
    main()




# 1) описание метода моделирования, основные особенности, зашитые
# возможности, описание используемой физической модели (1 — 1 1⁄2
# страница).
# 2) Моделирование изображений нескольких облучаемых объектов: шарик
# (железо, кальций, стекло) и цилиндр (отношение радиуса к высоте 1/8, те же
# материалы) за плоской преградой (железо, графит) в воздухе и в воде для 3-4
# значений энергий в диапазоне 100 — 500 кэВ. Источник излучения плоский
# монохроматический. Значение интенсивности подбирается из соображений
# различимости конечного изображения (порядка Е7).
# 3) Аналитический пересчет размеров изображения из случая шарика с
# диаметром 10 см на диаметр 200 мк.

# dictTemp['ElectricField'] = field
#         if field == '1e-4':
#             dictTemp['Primary'] = '50000'
#         elif field == '1.2e-4' or field == '1.4e-4':
#             dictTemp['Primary'] = '10000'
#         elif field == '1.6e-4' or field == '1.8e-4':
#             dictTemp['Primary'] = '500'
#         elif field == '2e-4':
#             dictTemp['Primary'] = '200'
#         # os.mkdir('/home/npm-geant/CLionProjects/AntiDwyer/PositronsFromElectricField/Scripts/' + dictTemp['Primary'] + 'primary')
#         os.mkdir('/home/npm-geant/CLionProjects/AntiDwyer/PositronsFromElectricField/Scripts/' + dictTemp['Primary'] + 'primary/' + field)
#         pathM = '/home/npm-geant/CLionProjects/AntiDwyer/PositronsFromElectricField/Scripts/' + dictTemp['Primary'] + 'primary/' + field
