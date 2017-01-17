%%
%%  Copyright (c) 2008 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: exdl_pal.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_pal).

-include("exdl.hrl").

-ifdef(COMPILE_PAL).

%% 1- EXPORT

%-compile(export_all).

%% Simulator.h

%% Solid.h

%% SolidData.h

%% ShapeData.h

%% BoxShapeData.h

%% SphereShapeData.h

%% CapsuleShapeData.h

%% PlaneShapeData.h

%% Mass.h

%% MeshShapeData.h

%% Motor.h

%% MotorData.h

%% AttractorMotor.h

%% AttractorMotorData.h

%% GearedMotor.h

%% GearedMotorData.h

%% ServoMotor.h

%% ServoMotorData.h

%% ThrusterMotor.h

%% ThrusterMotorData.h

%% VelocityMotor.h

%% VelocityMotorData.h

%% SpringMotor.h

%% SpringMotorData.h

%% Joint.h

%% JointData.h

%% Sensor.h

%% SensorData.h

%% AccelerationSensor.h

%% AccelerationSensorData.h

%% InclineSensor.h

%% InclineSensorData.h

%% RaycastSensor.h

%% RaycastSensorData.h

%% VolumeSensor.h

%% VolumeSensorData.h

%% EventHandler.h

%% JointBreakEventHandler.h

%% CollisionEventHandler.h

%% PostStepEventHandler.h

%% Blueprint.h

%% BlueprintInstance.h

%% BlueprintManager.h

%% Defines.h

%% 2- INCLUDE

-include("exdl.hrl").

-include("exdl_pal.hrl").
%-include("exdl_pal_fp.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% Simulator.h

%% Solid.h

%% SolidData.h

%% ShapeData.h

%% BoxShapeData.h

%% SphereShapeData.h

%% CapsuleShapeData.h

%% PlaneShapeData.h

%% Mass.h

%% MeshShapeData.h

%% Motor.h

%% MotorData.h

%% AttractorMotor.h

%% AttractorMotorData.h

%% GearedMotor.h

%% GearedMotorData.h

%% ServoMotor.h

%% ServoMotorData.h

%% ThrusterMotor.h

%% ThrusterMotorData.h

%% VelocityMotor.h

%% VelocityMotorData.h

%% SpringMotor.h

%% SpringMotorData.h

%% Joint.h

%% JointData.h

%% Sensor.h

%% SensorData.h

%% AccelerationSensor.h

%% AccelerationSensorData.h

%% InclineSensor.h

%% InclineSensorData.h

%% RaycastSensor.h

%% RaycastSensorData.h

%% VolumeSensor.h

%% VolumeSensorData.h

%% EventHandler.h

%% JointBreakEventHandler.h

%% CollisionEventHandler.h

%% PostStepEventHandler.h

%% Blueprint.h

%% BlueprintInstance.h

%% BlueprintManager.h

%% Defines.h


-endif. % COMPILE_PAL
