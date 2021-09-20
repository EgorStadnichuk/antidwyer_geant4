//
// Created by mihail on 24.05.17.
//


#include "G4RunManager.hh"

//Mandatory user option
#include "ActionInitialization.hh"
#include "DetectorConstruction.hh"
#include "PhysicsList.hh"
#include "InputParser.hh"
#include "TrackingAction.h"
#include "StackingAction.h"
//std
#include <fstream>
#include <iostream>
#include <string>
#include <ctime>


#ifdef G4VIS_USE

#include "G4VisExecutive.hh"

#endif
#include "G4UImanager.hh"

#ifdef G4UI_USE

#include "G4UIExecutive.hh"

#endif


using namespace CLHEP;
using namespace std;


int main(int argc, char **argv) {
    // cout << 'CRAZY MOTHERFUCKER' << endl;

  //  ofstream outist;
  //  outist.open ("../output/ouput.txt");

   /* struct PositronSpectre {
        double Angle[100];
        double Energy[100];
    };*/

    InputParser inputParser(argc, argv);
    if (argc == 1) {
        return 0;
    }
//    cout<< inputParser.valuesMap["-g"] << endl <<inputParser.valuesMap["-gps"]<<endl<<inputParser.valuesMap["-i"]<<endl;

    // Set the custom seed for the random engine
    G4Random::setTheEngine(new CLHEP::RanecuEngine);
    G4long seed = time(NULL);
    //G4long seed = 1;
    G4Random::setTheSeed(seed);

//    ofstream flog;
//    flog.open("boxes.log", ios_base::out | ios_base::app);
//    time_t seconds = time(NULL);
//    tm *timeinfo = localtime(&seconds);
//    flog << "Старт программы. Время и дата:" << asctime(timeinfo) << endl;

    G4RunManager *runManager = new G4RunManager;
    DetectorConstruction *massWorld = new DetectorConstruction(inputParser.valuesMap["-g"]);
    runManager->SetUserInitialization(massWorld);
    G4VModularPhysicsList *physicsList = new PhysicsList;
    runManager->SetUserInitialization(physicsList);
    ActionInitialization *action = new ActionInitialization();
    runManager->SetUserInitialization(action);

    runManager->Initialize();
//    runManager->BeamOn(100);

    G4UImanager *UImanager = G4UImanager::GetUIpointer();
    UImanager->ApplyCommand("/control/execute " + inputParser.valuesMap["-gps"]);

    if (inputParser.valuesMap.find("-m") != inputParser.valuesMap.end()) {
        for (auto it = inputParser.macros.begin(); it != inputParser.macros.end(); ++it) {
            UImanager->ApplyCommand("/control/execute " + *it);
        }
    }
    if (inputParser.guiStart) {
#ifdef G4UI_USE
        G4UIExecutive *ui = new G4UIExecutive(argc, argv);
#ifdef G4VIS_USE
        G4VisManager *visManager = new G4VisExecutive;
        visManager->Initialize();
        UImanager->ApplyCommand("/control/execute " + inputParser.valuesMap["-i"]);
#endif
        ui->SessionStart();
        delete ui;
#endif
    } else {
        UImanager->ApplyCommand("/control/execute " + inputParser.valuesMap["-i"]);
    }
    delete runManager;


//    seconds = time(NULL);
//    timeinfo = localtime(&seconds);
//    flog << "Конец программы. Время и дата:" << asctime(timeinfo) << endl;
//    flog.close();

   // outist.close();

    return 0;

}



