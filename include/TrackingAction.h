//
// Created by npm-geant on 10.10.17.
//

#ifndef GEANT4_TEMPLATE_CXX_TRACKINGACTION_H
#define GEANT4_TEMPLATE_CXX_TRACKINGACTION_H

#include "G4VUserPrimaryGeneratorAction.hh"
#include "G4VUserActionInitialization.hh"
#include "G4Track.hh"
#include "G4UserTrackingAction.hh"
#include <vector>
#include <string>
#include <map>
#include "G4VUserDetectorConstruction.hh"
#include "G4GDMLParser.hh"
#include <fstream>
#include <iostream>
#include <ctime>
#include <math.h>

using namespace CLHEP;
using namespace std;


class TrackingAction: public G4UserTrackingAction{
public:
    void PreUserTrackingAction(const G4Track *track) override;

    void PostUserTrackingAction(const G4Track *track) override;


};

#endif //GEANT4_TEMPLATE_CXX_TRACKINGACTION_H
