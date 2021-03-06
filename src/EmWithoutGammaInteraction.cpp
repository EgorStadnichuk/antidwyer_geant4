//
// Created by npm-geant on 05.09.18.
//

#include "EmWithoutGammaInteraction.h"
#include "G4SystemOfUnits.hh"
#include "G4ParticleDefinition.hh"
#include "G4EmParameters.hh"
#include "G4LossTableManager.hh"

#include "G4ComptonScattering.hh"
#include "G4GammaConversion.hh"
#include "G4PhotoElectricEffect.hh"

#include "G4eMultipleScattering.hh"
#include "G4MuMultipleScattering.hh"
#include "G4hMultipleScattering.hh"
#include "G4CoulombScattering.hh"
#include "G4eCoulombScatteringModel.hh"
#include "G4WentzelVIModel.hh"
#include "G4UrbanMscModel.hh"

#include "G4MuBremsstrahlungModel.hh"
#include "G4MuPairProductionModel.hh"
#include "G4hBremsstrahlungModel.hh"
#include "G4hPairProductionModel.hh"

#include "G4eIonisation.hh"
#include "G4eBremsstrahlung.hh"
#include "G4eplusAnnihilation.hh"
#include "G4UAtomicDeexcitation.hh"

#include "G4MuIonisation.hh"
#include "G4MuBremsstrahlung.hh"
#include "G4MuPairProduction.hh"
#include "G4hBremsstrahlung.hh"
#include "G4hPairProduction.hh"

#include "G4hIonisation.hh"
#include "G4ionIonisation.hh"
#include "G4alphaIonisation.hh"

#include "G4Gamma.hh"
#include "G4Electron.hh"
#include "G4Positron.hh"
#include "G4MuonPlus.hh"
#include "G4MuonMinus.hh"
#include "G4PionPlus.hh"
#include "G4PionMinus.hh"
#include "G4KaonPlus.hh"
#include "G4KaonMinus.hh"
#include "G4Proton.hh"
#include "G4AntiProton.hh"
#include "G4Deuteron.hh"
#include "G4Triton.hh"
#include "G4He3.hh"
#include "G4Alpha.hh"
#include "G4GenericIon.hh"

#include "G4PhysicsListHelper.hh"
#include "G4BuilderType.hh"
#include "G4EmModelActivator.hh"

// factory
#include "G4PhysicsConstructorFactory.hh"
//
G4_DECLARE_PHYSCONSTR_FACTORY(EmWithoutGammaInteraction);

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EmWithoutGammaInteraction::EmWithoutGammaInteraction(G4int ver, const G4String&)
        : G4VPhysicsConstructor("G4EmStandard"), verbose(ver)
{
    G4EmParameters* param = G4EmParameters::Instance();
    param->SetDefaults();
    param->SetVerbose(verbose);
    SetPhysicsType(bElectromagnetic);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EmWithoutGammaInteraction::~EmWithoutGammaInteraction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void EmWithoutGammaInteraction::ConstructParticle()
{
    // gamma
    G4Gamma::Gamma();

    // leptons
    G4Electron::Electron();
    G4Positron::Positron();
    G4MuonPlus::MuonPlus();
    G4MuonMinus::MuonMinus();

    // mesons
    G4PionPlus::PionPlusDefinition();
    G4PionMinus::PionMinusDefinition();
    G4KaonPlus::KaonPlusDefinition();
    G4KaonMinus::KaonMinusDefinition();

    // barions
    G4Proton::Proton();
    G4AntiProton::AntiProton();

    // ions
    G4Deuteron::Deuteron();
    G4Triton::Triton();
    G4He3::He3();
    G4Alpha::Alpha();
    G4GenericIon::GenericIonDefinition();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void EmWithoutGammaInteraction::ConstructProcess()
{
    if(verbose > 1) {
        G4cout << "### " << GetPhysicsName() << " Construct Processes " << G4endl;
    }
    G4PhysicsListHelper* ph = G4PhysicsListHelper::GetPhysicsListHelper();

    // muon & hadron bremsstrahlung and pair production
    G4MuBremsstrahlung* mub = new G4MuBremsstrahlung();
    G4MuPairProduction* mup = new G4MuPairProduction();
    G4hBremsstrahlung* pib = new G4hBremsstrahlung();
    G4hPairProduction* pip = new G4hPairProduction();
    G4hBremsstrahlung* kb = new G4hBremsstrahlung();
    G4hPairProduction* kp = new G4hPairProduction();
    G4hBremsstrahlung* pb = new G4hBremsstrahlung();
    G4hPairProduction* pp = new G4hPairProduction();

    // muon & hadron multiple scattering
    G4MuMultipleScattering* mumsc = new G4MuMultipleScattering();
    mumsc->AddEmModel(0, new G4WentzelVIModel());
    G4CoulombScattering* muss = new G4CoulombScattering();

    G4MuMultipleScattering* pimsc = new G4MuMultipleScattering();
    pimsc->AddEmModel(0, new G4WentzelVIModel());
    G4CoulombScattering* piss = new G4CoulombScattering();

    G4MuMultipleScattering* kmsc = new G4MuMultipleScattering();
    kmsc->AddEmModel(0, new G4WentzelVIModel());
    G4CoulombScattering* kss = new G4CoulombScattering();

    G4MuMultipleScattering* pmsc = new G4MuMultipleScattering();
    pmsc->AddEmModel(0, new G4WentzelVIModel());
    G4CoulombScattering* pss = new G4CoulombScattering();

    G4hMultipleScattering* hmsc = new G4hMultipleScattering("ionmsc");

    // high energy limit for e+- scattering models
    G4double highEnergyLimit = 100*MeV;

    // Add standard EM Processes
    auto myParticleIterator=GetParticleIterator();
    myParticleIterator->reset();
    while( (*myParticleIterator)() ){
        G4ParticleDefinition* particle = myParticleIterator->value();
        G4String particleName = particle->GetParticleName();

        if (particleName == "gamma") {

            ph->RegisterProcess(new G4PhotoElectricEffect(), particle);
            ph->RegisterProcess(new G4ComptonScattering(), particle);
            ph->RegisterProcess(new G4GammaConversion(), particle);

        } else if (particleName == "e-") {

            G4eMultipleScattering* msc = new G4eMultipleScattering;
            G4UrbanMscModel* msc1 = new G4UrbanMscModel();
            G4WentzelVIModel* msc2 = new G4WentzelVIModel();
            msc1->SetNewDisplacementFlag(false);
            msc1->SetHighEnergyLimit(highEnergyLimit);
            msc2->SetLowEnergyLimit(highEnergyLimit);
            msc->AddEmModel(0, msc1);
            msc->AddEmModel(0, msc2);

            G4eCoulombScatteringModel* ssm = new G4eCoulombScatteringModel();
            G4CoulombScattering* ss = new G4CoulombScattering();
            ss->SetEmModel(ssm, 1);
            ss->SetMinKinEnergy(highEnergyLimit);
            ssm->SetLowEnergyLimit(highEnergyLimit);
            ssm->SetActivationLowEnergyLimit(highEnergyLimit);

            ph->RegisterProcess(msc, particle);
            ph->RegisterProcess(new G4eIonisation(), particle);
            ph->RegisterProcess(new G4eBremsstrahlung(), particle);
            ph->RegisterProcess(ss, particle);

        } else if (particleName == "e+") {

            G4eMultipleScattering* msc = new G4eMultipleScattering;
            G4UrbanMscModel* msc1 = new G4UrbanMscModel();
            G4WentzelVIModel* msc2 = new G4WentzelVIModel();
            msc1->SetNewDisplacementFlag(false);
            msc1->SetHighEnergyLimit(highEnergyLimit);
            msc2->SetLowEnergyLimit(highEnergyLimit);
            msc->AddEmModel(0, msc1);
            msc->AddEmModel(0, msc2);

            G4eCoulombScatteringModel* ssm = new G4eCoulombScatteringModel();
            G4CoulombScattering* ss = new G4CoulombScattering();
            ss->SetEmModel(ssm, 1);
            ss->SetMinKinEnergy(highEnergyLimit);
            ssm->SetLowEnergyLimit(highEnergyLimit);
            ssm->SetActivationLowEnergyLimit(highEnergyLimit);

            ph->RegisterProcess(msc, particle);
            ph->RegisterProcess(new G4eIonisation(), particle);
            ph->RegisterProcess(new G4eBremsstrahlung(), particle);
            ph->RegisterProcess(new G4eplusAnnihilation(), particle);
            ph->RegisterProcess(ss, particle);

        } else if (particleName == "mu+" ||
                   particleName == "mu-"    ) {

            ph->RegisterProcess(mumsc, particle);
            ph->RegisterProcess(new G4MuIonisation(), particle);
            ph->RegisterProcess(mub, particle);
            ph->RegisterProcess(mup, particle);
            ph->RegisterProcess(muss, particle);

        } else if (particleName == "alpha" ||
                   particleName == "He3") {

            //ph->RegisterProcess(hmsc, particle);
            ph->RegisterProcess(new G4hMultipleScattering(), particle);
            ph->RegisterProcess(new G4ionIonisation(), particle);

        } else if (particleName == "GenericIon") {

            ph->RegisterProcess(hmsc, particle);
            ph->RegisterProcess(new G4ionIonisation(), particle);

        } else if (particleName == "pi+" ||
                   particleName == "pi-" ) {

            //G4hMultipleScattering* pimsc = new G4hMultipleScattering();
            ph->RegisterProcess(pimsc, particle);
            ph->RegisterProcess(new G4hIonisation(), particle);
            ph->RegisterProcess(pib, particle);
            ph->RegisterProcess(pip, particle);
            ph->RegisterProcess(piss, particle);

        } else if (particleName == "kaon+" ||
                   particleName == "kaon-" ) {

            //G4hMultipleScattering* kmsc = new G4hMultipleScattering();
            ph->RegisterProcess(kmsc, particle);
            ph->RegisterProcess(new G4hIonisation(), particle);
            ph->RegisterProcess(kb, particle);
            ph->RegisterProcess(kp, particle);
            ph->RegisterProcess(kss, particle);

        } else if (particleName == "proton" ||
                   particleName == "anti_proton") {

            //G4hMultipleScattering* pmsc = new G4hMultipleScattering();
            ph->RegisterProcess(pmsc, particle);
            ph->RegisterProcess(new G4hIonisation(), particle);
            ph->RegisterProcess(pb, particle);
            ph->RegisterProcess(pp, particle);
            ph->RegisterProcess(pss, particle);

        } else if (particleName == "B+" ||
                   particleName == "B-" ||
                   particleName == "D+" ||
                   particleName == "D-" ||
                   particleName == "Ds+" ||
                   particleName == "Ds-" ||
                   particleName == "anti_He3" ||
                   particleName == "anti_alpha" ||
                   particleName == "anti_deuteron" ||
                   particleName == "anti_lambda_c+" ||
                   particleName == "anti_omega-" ||
                   particleName == "anti_sigma_c+" ||
                   particleName == "anti_sigma_c++" ||
                   particleName == "anti_sigma+" ||
                   particleName == "anti_sigma-" ||
                   particleName == "anti_triton" ||
                   particleName == "anti_xi_c+" ||
                   particleName == "anti_xi-" ||
                   particleName == "deuteron" ||
                   particleName == "lambda_c+" ||
                   particleName == "omega-" ||
                   particleName == "sigma_c+" ||
                   particleName == "sigma_c++" ||
                   particleName == "sigma+" ||
                   particleName == "sigma-" ||
                   particleName == "tau+" ||
                   particleName == "tau-" ||
                   particleName == "triton" ||
                   particleName == "xi_c+" ||
                   particleName == "xi-" ) {

            ph->RegisterProcess(hmsc, particle);
            ph->RegisterProcess(new G4hIonisation(), particle);
        }
    }

    // Deexcitation
    //
    G4VAtomDeexcitation* de = new G4UAtomicDeexcitation();
    G4LossTableManager::Instance()->SetAtomDeexcitation(de);

    G4EmModelActivator mact(GetPhysicsName());
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......