%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_pal_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_PAL).

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


  %% EXDL_OGLBLIT C SRC ENUM CHECK
  -define(_ENUM_EXDL_PAL, ?EXDL_PAL_HRL + 0).

-else. % COMPILE_PAL

  -define(_ENUM_EXDL_PAL, ?EXDL_PAL_HRL).

-endif. % COMPILE_PAL
