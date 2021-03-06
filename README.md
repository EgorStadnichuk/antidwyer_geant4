# README #
Версия: 0.1
В репозитории храниться программа-заготовка для моделирования с помощью GEANT4.

Использование:
```    
    geant4.exe [опция] [аргумент]
```
При запуске без аргументов выводится help.

Требования для сборки:

- [GEANT4](http://geant4.cern.ch/) со следующими опциями:
    - [GDML](http://gdml.web.cern.ch/GDML/)
    - FORCE_QT4

Структура репозитория (данной структуры я собираюсь придерживаться в своих проектах):

- geant4-template-cxx/
    - gdml - директория для файлов с геометрией определенных с помощью [GDML](http://gdml.web.cern.ch/GDML/).
        - default.gdml - геометрия по умолчанию.
    - gps - директория для файлов с описанием источников первичных частиц.
        - gps.mac - источник по умолчанию.
    - include - директория для заголовочных файлов.
        - ActionInitialization.hh - обязательный класс, подключает user action, пример  внутри.
        - DetectorConstruction.hh - обязательный класс, подключает геометрию определеную в файлах *.gdml, редактирование данного класса необходимо только для подключения дополнительной auxiliary information и sensitiveDetector.
        - GeneralParticleSource.hh - обязательный класс, необходим для чтения параметров источника первичных частиц из файлов-макросов. Редактировать не нужно.
        - InputParser.hh - класс - обработчик параметров командной строки. Редактировать не надо.
        - PhysicsList.hh - класс определяющий физические процессы используемые при моделировании. Редактируется под конткретныю задачу. Сейчас подключена стандартная электромагнитная физика.
        - SensitiveDetector.hh - класс задающий детектор, необходим для используемого в заготовке файла с геометрией, редактируется под конкретный детектор.
    - mac - директория для стартовых и дополнительных макросов
        - init.mac - стартовый макрос для симуляции в фоне
        - init_vis.mac - стартовый макрос для работы в оконной среде
    - schema - файлы с описанием GDML
    - src - файлы с реализацией
        - *.cc - смотри описание заголовочных файлов
    - CMakeLists.txt - инструкция для cmake
    - main.cc - точка входа

