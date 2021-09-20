//
// Created by mihail on 24.05.17.
//

#ifndef GEANT4_SENSITIVEDETECTOR_HH
#define GEANT4_SENSITIVEDETECTOR_HH

#include "G4VSensitiveDetector.hh"

using namespace CLHEP;
using namespace std;

class G4Step;

class G4HCofThisEvent;

class G4TouchableHistory;

class SensitiveDetector : public G4VSensitiveDetector {
public:
    SensitiveDetector(const G4String &name);

    ~SensitiveDetector() {};

    G4bool ProcessHits(G4Step *aStep, G4TouchableHistory *ROhist) override;


};


#endif //GEANT4_SENSITIVEDETECTOR_HH
