//
// Created by zelenyy on 18.08.17.
//
#include "InputParser.hh"
#include <algorithm>
#include <iostream>

using namespace std;

InputParser::InputParser(int &argc, char **argv) {
    options = {"-g", "-gps", "-i", "-m", "-v", "-d"};
    helpMap["-g"] = "usage -g [file.gdml] - set geometry";
    helpMap["-gps"] = "usage -gps [gps.mac] - set particle source";
    helpMap["-i"] = "usage -i [init.mac] - set start macros";
    helpMap["-m"] = "usage -m [name1.mac name2.mac ...] - set optional macros";
    helpMap["-v"] = "usage -v - start GUI session with user's OR default option: default.gdml gps.mac init_vis.mac";
    helpMap["-d"] = "usage -d - start run with ALL default option: default.gdml gps.mac init.mac";


    if (argc == 1) {
        printHelp();
    } else {

        for (int i = 1; i < argc; ++i)
            this->tokens.push_back(std::string(argv[i]));

        valuesMap["-g"] = "gdml/default.gdml";
        valuesMap["-gps"] = "gps/gps.mac";
        auto it = find(tokens.begin(), tokens.end(), "-v");

        if (it != tokens.end()) {
            valuesMap["-i"] = "mac/init_vis.mac";
        } else {
            valuesMap["-i"] = "mac/init.mac";
        }

        for (it = options.begin(); it != options.end(); ++it) {
            auto valIt = find(tokens.begin(), tokens.end(), *it);
            if (valIt != tokens.end() and *it != "-d") {
                if (*it == "-v") guiStart = true;
                else {
                    if (*it == "-m") {
                        valuesMap[*it] = "true";
                        while (true) {
                            valIt++;
                            if (valIt != tokens.end()) {
                                if (((*valIt)[0]) != *"-") macros.insert(macros.end(), *valIt);
                                else break;
                            } else {
                                break;
                            }
                        }
                    } else {
                        if (valIt++ != tokens.end())
                            valuesMap[*it] = *valIt;
                    }
                }
            }
        }


    }
}

const void InputParser::printHelp() {
    for (auto it = options.begin(); it != options.end(); it++) {
        cout << "\t" << *it << "\t" << helpMap[*it] << endl;
    }
    return;
}
