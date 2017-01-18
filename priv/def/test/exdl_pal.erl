%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_pal.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_pal).

-include("exdl.hrl").

-ifdef(COMPILE_OGLBLIT).

%% 1- EXPORT

%-compile(export_all).

%% Simulator.h

-export( [ %% Solid.h

-export( [ %% SolidData.h

-export( [ %% ShapeData.h

-export( [ %% BoxShapeData.h

-export( [ %% SphereShapeData.h

-export( [ %% CapsuleShapeData.h

-export( [ %% PlaneShapeData.h

-export( [ %% Mass.h

-export( [ %% MeshShapeData.h

-export( [ %% Motor.h

-export( [ %% MotorData.h

-export( [ %% AttractorMotor.h

-export( [ %% AttractorMotorData.h

-export( [ %% GearedMotor.h

-export( [ %% GearedMotorData.h

-export( [ %% ServoMotor.h

-export( [ %% ServoMotorData.h

-export( [ %% ThrusterMotor.h

-export( [ %% ThrusterMotorData.h

-export( [ %% VelocityMotor.h

-export( [ %% VelocityMotorData.h

-export( [ %% SpringMotor.h

-export( [ %% SpringMotorData.h

-export( [ %% Joint.h

-export( [ %% JointData.h

-export( [ %% Sensor.h

-export( [ %% SensorData.h

-export( [ %% AccelerationSensor.h

-export( [ %% AccelerationSensorData.h

-export( [ %% InclineSensor.h

-export( [ %% InclineSensorData.h

-export( [ %% RaycastSensor.h

-export( [ %% RaycastSensorData.h

-export( [ %% VolumeSensor.h

-export( [ %% VolumeSensorData.h

-export( [ %% EventHandler.h

-export( [ %% JointBreakEventHandler.h

-export( [ %% CollisionEventHandler.h

-export( [ %% PostStepEventHandler.h

-export( [ %% Blueprint.h

-export( [ %% BlueprintInstance.h

-export( [ %% BlueprintManager.h

-export( [ %% Defines.h

-export( [ 
         ]
       ).

%% 2- INCLUDE

-include("exdl_pal.hrl").

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


-endif. % COMPILE_OGLBLIT
