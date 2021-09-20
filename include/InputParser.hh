//
// Created by zelenyy on 18.08.17.
//
/// @author iain

#ifndef GEANT4_TEMPLATE_CXX_INPUTPARSER_HH
#define GEANT4_TEMPLATE_CXX_INPUTPARSER_HH

#include <vector>
#include <string>
#include <map>


using namespace std;

class InputParser {
public:
    InputParser(int &argc, char **argv);

    const void printHelp();

    vector<string> macros;
    map<string, string> valuesMap;
    bool guiStart = false;
private:
    vector<string> tokens;
    vector<string> options;
    map<string, string> helpMap;
};


#endif //GEANT4_TEMPLATE_CXX_INPUTPARSER_HH
