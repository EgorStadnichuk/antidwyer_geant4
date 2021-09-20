//
// Created by mihail on 24.05.17.
//

#include "ActionInitialization.hh"
#include "GeneralParticleSource.hh"
#include "TrackingAction.h"
#include "StackingAction.h"
//#include "SteppingAction.hh"
//#include "TrackingAction.hh"
//#include "EventAction.hh"
//#include "RunAction.hh"


void ActionInitialization::Build() const {
    GeneralParticleSource *generalParticleSource = new GeneralParticleSource();
    SetUserAction(generalParticleSource);

    TrackingAction *myAction = new TrackingAction();
    SetUserAction(myAction);

    UserStackingAction *myStack = new UserStackingAction();
    SetUserAction(myStack);

//    StackingAction* stackingAction = new StackingAction();
//    SetUserAction(stackingAction);
//    SteppingAction* steppingAction = new SteppingAction();
//    SetUserAction(steppingAction);

}
