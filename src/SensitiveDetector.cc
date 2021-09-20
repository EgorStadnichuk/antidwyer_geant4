//
// Created by mihail on 24.05.17.
//

#include "SensitiveDetector.hh"

using namespace std;

SensitiveDetector::SensitiveDetector(const G4String &name) : G4VSensitiveDetector(name) {}

G4bool SensitiveDetector::ProcessHits(G4Step *aStep, G4TouchableHistory *ROhist) {
    G4cout << "Hit!" << endl;
//    aStep->GetTrack().
    return true;
}
