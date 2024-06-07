%% Configuration Parameters / User Inputs
%  Centralized location for specifying values for configuration parameters 
%  for running the Flight Data Analysis Demo of the Quadcopter Series. 

%  NOTE: Architecture is to align with user inputs from a future application


%% File Info and Meta Data for Test
%
filename     = 'flightTestData_20170516.csv';

%Vehicle ID
vehicleID    = 'QC16a';

%Test ID
testID       = '42A';


%% Flight Phases
%    
%   #1 GroundRotOff      ==>  On Ground with Blades Not Moving (Off)
%   #2 GroundRotOn       ==>  On Ground with Blades Not Moving (Off)
%   #3 inFlight          ==>  On Ground with Blades Not Moving (Off)
%  
phaseNumMin = 1;

phaseName = categorical(["GroundRotOff" ...
                         "GroundRotOn" ...
                         "InFlight"]');
           
phaseNumber = phaseNumMin:1:length(phaseName);

%Transpose
phaseNumber = phaseNumber';

phaseInfo = table(phaseNumber, phaseName);

%% Flight Modes (Modes)

modeName = categorical(["WaitForComms" ...
                        "Init" ...
                        "Calibration" ...
                        "ReadyForTO" ...
                        "TakeOff" ...
                        "TrackAlt" ...
                        "Track3D" ...
                        "LostBall" ...
                        "Land" ...
                        "EmergencyOff"]');

modeNumMin = 1;

modeNumber = modeNumMin:1:length(modeName);

modeNumber = modeNumber';

modeInfo = table(modeNumber, modeName);

%% Mapping between Flight Modes (Modes) and Operational Phases (Phases)
modeToPhase = [     phaseInfo(1,:); ...
                    phaseInfo(1,:); ...
                    phaseInfo(1,:); ...
                    phaseInfo(2,:); ...
                    phaseInfo(3,:); ...
                    phaseInfo(3,:); ...
                    phaseInfo(3,:); ...
                    phaseInfo(3,:); ...
                    phaseInfo(3,:); ...
                    phaseInfo(1,:) ];   
                