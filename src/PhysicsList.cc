//
// Created by mihail on 24.05.17.
//

#include "PhysicsList.hh"
#include "G4EmStandardPhysics.hh"
#include "G4EmStandardPhysics_option4.hh"
#include "G4EmLowEPPhysics.hh"
#include "G4EmLivermorePhysics.hh"
#include "G4EmPenelopePhysics.hh"

PhysicsList::PhysicsList() {
//    RegisterPhysics(new EmWithoutGammaInteraction());
//    RegisterPhysics(new G4EmStandardPhysics());
    RegisterPhysics(new G4EmStandardPhysics_option4());
//    RegisterPhysics(new G4EmLivermorePhysics());
//    RegisterPhysics(new G4EmPenelopePhysics());
//    RegisterPhysics(new G4EmLowEPPhysics());
}

