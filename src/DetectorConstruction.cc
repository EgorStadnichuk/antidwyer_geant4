//
// Created by mihail on 24.05.17.
//

#include <G4ElectricField.hh>
#include <G4UniformElectricField.hh>
#include <G4EqMagElectricField.hh>
#include <G4ClassicalRK4.hh>
#include <G4MagIntegratorDriver.hh>
#include <G4ChordFinder.hh>
#include "G4FieldManager.hh"
#include "DetectorConstruction.hh"
#include "SensitiveDetector.hh"
#include "G4SDManager.hh"

using namespace CLHEP;

G4VPhysicalVolume *DetectorConstruction::Construct() {
    G4VPhysicalVolume *worldPhys = parser.GetWorldVolume();
    return worldPhys;
}


void DetectorConstruction::ConstructSDandField() {
    SensitiveDetector *sensitiveDetector = new SensitiveDetector("SensitiveDetector");
    G4SDManager *fSDM = G4SDManager::GetSDMpointer();
    fSDM->AddNewDetector(sensitiveDetector);

    const G4GDMLAuxMapType *auxmap = parser.GetAuxMap();
    G4cout << "Found " << auxmap->size()
           << " volume(s) with auxiliary information."
           << G4endl << G4endl;

    for (G4GDMLAuxMapType::const_iterator iter = auxmap->begin();
         iter != auxmap->end(); iter++) {
        G4cout << "Volume " << ((*iter).first)->GetName()
               << " has the following list of auxiliary information: "
               << G4endl << G4endl;
        for (G4GDMLAuxListType::const_iterator vit = (*iter).second.begin();
             vit != (*iter).second.end(); vit++) {
            G4cout << "--> Type: " << (*vit).type
                   << " Value: " << (*vit).value << G4endl;
            for (auto chit = (*vit).auxList->begin(); chit != (*vit).auxList->end(); ++chit) {
                G4cout << (*chit).type << "\t" << (*chit).value << endl;
            }
        }
    }
    G4cout << G4endl;

    // The same as above, but now we are looking for

    // sensitive detectors setting them for the volumes

    for (G4GDMLAuxMapType::const_iterator iter = auxmap->begin();
         iter != auxmap->end(); iter++) {
         G4cout << "Volume " << ((*iter).first)->GetName()
               << " has the following list of auxiliary information: "
               << G4endl << G4endl;
        for (G4GDMLAuxListType::const_iterator vit = (*iter).second.begin();
             vit != (*iter).second.end(); vit++) {
            if ((*vit).type == "SensDet") {
                G4cout << "Attaching sensitive detector " << (*vit).value
                       << " to volume " << ((*iter).first)->GetName()
                       << G4endl << G4endl;

                G4VSensitiveDetector *mydet =
                        fSDM->FindSensitiveDetector((*vit).value);
                if (mydet) {
                    G4LogicalVolume *myvol = (*iter).first;
                    myvol->SetSensitiveDetector(mydet);
                } else {
                    G4cout << (*vit).value << " detector not found" << G4endl;
                }
            } else if ((*vit).type == "ElectricField") {
                //Construct field
                auto fieldList = (*vit).auxList;
                map<string, double> E;
                for (auto fieldIt = fieldList->begin(); fieldIt != fieldList->end(); ++fieldIt) {
                    E[(*fieldIt).type] = stod((*fieldIt).value);
                }
                G4ElectricField *fEMfield = new G4UniformElectricField(G4ThreeVector(E["Ex"], E["Ey"], E["Ez"]));
                G4EqMagElectricField *fEquation = new G4EqMagElectricField(fEMfield);
                G4int nvar = 8;
                G4MagIntegratorStepper *fStepper = new G4ClassicalRK4(fEquation, nvar);
                G4FieldManager *fFieldMgr = new G4FieldManager();
//    electricFieldRegionLogic->SetFieldManager(fFieldMgr, true);
                auto fieldVol = (*iter).first;
                fieldVol->SetFieldManager(fFieldMgr, true);
                fFieldMgr->SetDetectorField(fEMfield);
                G4double fMinStep = 100 * mm; // minimal step
                G4MagInt_Driver *fIntgrDriver = new G4MagInt_Driver(fMinStep, fStepper,
                                                                    fStepper->GetNumberOfVariables());
                G4ChordFinder *fChordFinder = new G4ChordFinder(fIntgrDriver);
                fFieldMgr->SetChordFinder(fChordFinder);
            }
        }

    }

}

DetectorConstruction::DetectorConstruction(string nameGDML) : G4VUserDetectorConstruction(), fileName(nameGDML) {
    parser.Read(fileName, false);
}