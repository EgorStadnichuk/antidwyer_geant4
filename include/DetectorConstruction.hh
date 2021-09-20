//
// Created by mihail on 24.05.17.
//

#ifndef GEANT4_DETECTORCONSTRUCTION_HH
#define GEANT4_DETECTORCONSTRUCTION_HH

#include "G4VUserDetectorConstruction.hh"
#include "G4GDMLParser.hh"
#include <string>

using namespace std;

class G4VPhysicalVolume;

class G4LogicalVolume;

class G4Material;

class DetectorConstruction : public G4VUserDetectorConstruction {
public:
    G4VPhysicalVolume *Construct();

    void ConstructSDandField() override;

    DetectorConstruction(string nameGDML);

private:
    string fileName;
    G4GDMLParser parser;

};


#endif //GEANT4_DETECTORCONSTRUCTION_HH
