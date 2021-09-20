//
// Created by npm-geant on 10.10.17.
//

#include "TrackingAction.h"


    /*

    G4ThreeVector vec = track->GetVertexPosition()/m;

    trackData data;

    data.trackID = track->GetTrackID();

    data.parentID=track->GetParentID();

    data.particleID = track->GetDefinition()->GetParticleDefinitionID();

    data.localTime = track->GetLocalTime()/ ns;

    data.globalTime = track->GetGlobalTime()/ns;

    data.properTime = track->GetProperTime()/ns;

    data.vertexKineticEnergy = track->GetVertexKineticEnergy()/MeV;

    data.vertexCoord.x = vec.getX();

    data.vertexCoord.y = vec.getY();

    data.vertexCoord.z = vec.getZ();

   //как-то сохраняем data

     */

void TrackingAction::PreUserTrackingAction(const G4Track *track) {
        // cout << 'CRAZY MOTHERFUCKER' << endl;

//        if (track->GetDefinition()->GetParticleName() == "e-") {
////            if (track->GetParentID() == 1) {
//            if (track->GetMomentumDirection()[2] <= 0){
//                G4double ElectronEnergy = track->GetVertexKineticEnergy() / MeV;
//                G4ThreeVector ElectronMomentumDir = track->GetMomentumDirection();
//                G4ThreeVector ElectronZCoord = track->GetVertexPosition() / m;
//                if (ElectronEnergy > 0.5 & -200 < ElectronZCoord[0] < 200 & -200 < ElectronZCoord[1] < 200) {
//                    ofstream outist;
//                    outist.open("../output/ElectronEnergyOutput.txt", ios_base::app | ios_base::out);
//                    outist << ElectronEnergy << endl;
//                    outist.close();
//                    outist.open("../output/ElectronMomentumOutput.txt", ios_base::app | ios_base::out);
//                    outist << ElectronMomentumDir[2] << endl;
//                    outist.close();
//                    outist.open("../output/ElectronZCoordOutput.txt", ios_base::app | ios_base::out);
//                    outist << ElectronZCoord[2] << endl;
//                    outist.close();
//                }
//            }
//
//        }
//
//        if (track->GetDefinition()->GetParticleName() == "e+") {
//            G4double PositronEnergy = track->GetVertexKineticEnergy() / MeV;
//            G4ThreeVector PositronMomentumDir = track->GetMomentumDirection();
//            G4ThreeVector PositronZCoord = track->GetVertexPosition() / m;
//            if (PositronMomentumDir[2] > 0 & -200 < PositronZCoord[0] < 200 & -200 < PositronZCoord[1] < 200) {
//
//                ofstream outist;
//                outist.open("../output/PositronMomentumOutput.txt", ios_base::app | ios_base::out);
//                outist << PositronMomentumDir[2] << endl;
//                outist.close();
//
//                outist.open("../output/PositronEnergyOutput.txt", ios_base::app | ios_base::out);
//                outist << PositronEnergy << endl;
//                outist.close();
//
//                ofstream outlist;
//                outlist.open("../output/PositronZCoordOutput.txt", ios_base::app | ios_base::out);
//                outlist << PositronZCoord[2] << endl;
//                outlist.close();
//            }
//
//        }

//        if (track->GetDefinition()->GetParticleName() == "gamma") {
//            G4double GammaEnergy = track->GetVertexKineticEnergy() / MeV;
//            G4ThreeVector GammaMomentumDir = track->GetMomentumDirection();
//            G4ThreeVector GammaZCoord = track->GetVertexPosition() / m;
//
//            if (GammaZCoord[2] > -200 || GammaMomentumDir[2] > 0) {
//                ofstream outist;
//                outist.open("./output/GammaOuput.txt", ios_base::app | ios_base::out);
//                outist << GammaMomentumDir[2] << ' ' << GammaEnergy << endl;
//                outist.close();
//
//                ofstream outlist;
//                outlist.open("./output/GammaZCoord.txt", ios_base::app | ios_base::out);
//                outlist << GammaZCoord[2] << endl;
//                outlist.close();
//            }
//        }

}

void TrackingAction::PostUserTrackingAction(const G4Track *track) {
    /*if (track->GetParentID() == 1 && track->GetDefinition()->GetParticleName() == "e-") {
        G4ThreeVector ZCoord = track->GetVertexPosition() / m;
        if (ZCoord[2] > -200 && ZCoord[2] < 200) {
            ofstream outlist;
            outlist.open("../output/zzcococo.txt", ios_base::app | ios_base::out);
            outlist << ZCoord[2] << endl;
            outlist.close();
        }
    }*/
}

