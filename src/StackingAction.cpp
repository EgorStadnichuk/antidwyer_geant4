//
// Created by zelenyy on 28.10.17.
//

#include <G4Positron.hh>
#include "StackingAction.h"
#include "G4Track.hh"
#include "G4EventManager.hh"
#include <G4Gamma.hh>
#include <G4Electron.hh>

using namespace CLHEP;
using namespace std;

UserStackingAction::UserStackingAction() {
    outist_momentum_positron.open("../output/PositronMomentumOutput.txt", ios_base::app | ios_base::out);
    outist_energy_positron.open("../output/PositronEnergyOutput.txt", ios_base::app | ios_base::out);
    outist_coordinate_positron.open("../output/PositronZCoordOutput.txt", ios_base::app | ios_base::out);
    outist_momentum_gamma.open("../output/GammaMomentumOutput.txt", ios_base::app | ios_base::out);
    outist_energy_gamma.open("../output/GammaEnergyOutput.txt", ios_base::app | ios_base::out);
    outist_coordinate_gamma.open("../output/GammaZCoordOutput.txt", ios_base::app | ios_base::out);
    outist_momentum_electron.open("../output/ElectronMomentumOutput.txt", ios_base::app | ios_base::out);
    outist_energy_electron.open("../output/ElectronEnergyOutput.txt", ios_base::app | ios_base::out);
    outist_coordinate_electron.open("../output/ElectronZCoordOutput.txt", ios_base::app | ios_base::out);
}

UserStackingAction::~UserStackingAction() {
    outist_coordinate_positron.close();
    outist_energy_positron.close();
    outist_momentum_positron.close();
    outist_coordinate_gamma.close();
    outist_energy_gamma.close();
    outist_momentum_gamma.close();
    outist_coordinate_electron.close();
    outist_energy_electron.close();
    outist_momentum_electron.close();
}

G4ClassificationOfNewTrack UserStackingAction::ClassifyNewTrack(const G4Track *aTrack) {
    if (aTrack->GetKineticEnergy() / MeV < 0.1){
        return fKill;
    }

//    id_array[aTrack->GetTrackID()] = aTrack->GetParticleDefinition()->GetInstanceID();
//
//    if (aTrack->GetDefinition() == G4Positron::PositronDefinition()){
//        G4double PositronEnergy = aTrack->GetKineticEnergy() / MeV;
//        G4ThreeVector PositronMomentumDir = aTrack->GetMomentumDirection();
//        G4ThreeVector PositronZCoord = aTrack->GetPosition() / m;
//
//        outist_energy_positron << PositronEnergy << endl;
//        outist_momentum_positron << PositronMomentumDir[2] << endl;
//        outist_coordinate_positron << PositronZCoord[2] << endl;
//
//        return fKill;
//    }
//    if (aTrack->GetDefinition() == G4Gamma::GammaDefinition()){
//        G4double GammaEnergy = aTrack->GetKineticEnergy() / MeV;
//        G4ThreeVector GammaMomentumDir = aTrack->GetMomentumDirection();
//       G4ThreeVector GammaZCoord = aTrack->GetPosition() / m;
//
//        outist_momentum_gamma << GammaMomentumDir[2] << endl;
//        outist_energy_gamma << GammaEnergy << endl;
//        outist_coordinate_gamma << GammaZCoord[2] << endl;
//
//        return fUrgent;
//    }
//    if (aTrack->GetDefinition() == G4Electron::ElectronDefinition()){
//        if (id_array[aTrack->GetParentID()] == G4Gamma::Definition()->GetInstanceID() and aTrack->GetPosition()[2] / m > 0){
//            return fKill;
//        }
//        return fUrgent;
//    }
    if (aTrack->GetDefinition() == G4Electron::ElectronDefinition()){
        G4double ElectronEnergy = aTrack->GetKineticEnergy() / MeV;
        G4ThreeVector ElectronMomentumDir = aTrack->GetMomentumDirection();
        G4ThreeVector ElectronZCoord = aTrack->GetPosition() / m;

        outist_momentum_electron << ElectronMomentumDir[2] << ' ' << endl;
        outist_energy_electron << ElectronEnergy << endl;
        outist_coordinate_electron << ElectronZCoord[2] << endl;

        return fUrgent;
    }
    return fUrgent;
}

//void UserStackingAction::PrepareNewEvent() {
//    for (i=0; i<=9999999; i++){
//        id_array[i] = 0;
//    }
//}
