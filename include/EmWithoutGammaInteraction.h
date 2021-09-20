//
// Created by npm-geant on 05.09.18.
//

#ifndef GEANT4_TEMPLATE_CXX_EMWITHOUTGAMMAINTERACTION_H
#define GEANT4_TEMPLATE_CXX_EMWITHOUTGAMMAINTERACTION_H

#include "G4VPhysicsConstructor.hh"
#include "globals.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

class EmWithoutGammaInteraction : public G4VPhysicsConstructor
{
public:

    explicit EmWithoutGammaInteraction(G4int ver=0, const G4String& name="");

    virtual ~EmWithoutGammaInteraction();

    virtual void ConstructParticle();
    virtual void ConstructProcess();

private:
    G4int  verbose;
};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......


#endif //GEANT4_TEMPLATE_CXX_EMWITHOUTGAMMAINTERACTION_H
