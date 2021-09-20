//
// Created by zelenyy on 28.10.17.
//
#ifndef GEANT4_THUNDERSTORM_STACKINGACTION_HH
#define GEANT4_THUNDERSTORM_STACKINGACTION_HH

#include <G4TrackingManager.hh>
#include "G4ClassificationOfNewTrack.hh"
//#include "G4Event.hh"
#include "G4Track.hh"
#include "G4StackManager.hh"
#include "G4UserStackingAction.hh"
#include "G4VUserActionInitialization.hh"
#include <fstream>
#include <iostream>
#include <ctime>
#include <math.h>
#include <vector>
#include <string>
#include <map>
#include <G4EventManager.hh>

using namespace std;

class UserStackingAction: public G4UserStackingAction
{
public:
    UserStackingAction();
    ~UserStackingAction();

protected:
    G4StackManager * stackManager;

public:
    G4ClassificationOfNewTrack ClassifyNewTrack(const G4Track*);
//    void PrepareNewEvent();
protected:
    G4TrackingManager* fpTrackingManager;

private:
    ofstream outist_energy_positron;
    ofstream outist_coordinate_positron;
    ofstream outist_momentum_positron;
    ofstream outist_energy_gamma;
    ofstream outist_coordinate_gamma;
    ofstream outist_momentum_gamma;
    ofstream outist_energy_electron;
    ofstream outist_coordinate_electron;
    ofstream outist_momentum_electron;
//    int id_array[10000000];
//    int i;
};

#endif
