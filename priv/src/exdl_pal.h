/*  
 *  Copyright (c) 2009 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id: exdl_pal.h,v 1.0 2009/05/30 07:49:22 kochise Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_PAL

  enum
  { EXDL_PAL_H
/* Simulator.h */
/* Solid.h */
/* SolidData.h */
/* ShapeData.h */
/* BoxShapeData.h */
/* SphereShapeData.h */
/* CapsuleShapeData.h */
/* PlaneShapeData.h */
/* Mass.h */
/* MeshShapeData.h */
/* Motor.h */
/* MotorData.h */
/* AttractorMotor.h */
/* AttractorMotorData.h */
/* GearedMotor.h */
/* GearedMotorData.h */
/* ServoMotor.h */
/* ServoMotorData.h */
/* ThrusterMotor.h */
/* ThrusterMotorData.h */
/* VelocityMotor.h */
/* VelocityMotorData.h */
/* SpringMotor.h */
/* SpringMotorData.h */
/* Joint.h */
/* JointData.h */
/* Sensor.h */
/* SensorData.h */
/* AccelerationSensor.h */
/* AccelerationSensorData.h */
/* InclineSensor.h */
/* InclineSensorData.h */
/* RaycastSensor.h */
/* RaycastSensorData.h */
/* VolumeSensor.h */
/* VolumeSensorData.h */
/* EventHandler.h */
/* JointBreakEventHandler.h */
/* CollisionEventHandler.h */
/* PostStepEventHandler.h */
/* Blueprint.h */
/* BlueprintInstance.h */
/* BlueprintManager.h */
/* Defines.h */
  , _ENUM_EXDL_PAL
  };


/* Simulator.h */
/* Solid.h */
/* SolidData.h */
/* ShapeData.h */
/* BoxShapeData.h */
/* SphereShapeData.h */
/* CapsuleShapeData.h */
/* PlaneShapeData.h */
/* Mass.h */
/* MeshShapeData.h */
/* Motor.h */
/* MotorData.h */
/* AttractorMotor.h */
/* AttractorMotorData.h */
/* GearedMotor.h */
/* GearedMotorData.h */
/* ServoMotor.h */
/* ServoMotorData.h */
/* ThrusterMotor.h */
/* ThrusterMotorData.h */
/* VelocityMotor.h */
/* VelocityMotorData.h */
/* SpringMotor.h */
/* SpringMotorData.h */
/* Joint.h */
/* JointData.h */
/* Sensor.h */
/* SensorData.h */
/* AccelerationSensor.h */
/* AccelerationSensorData.h */
/* InclineSensor.h */
/* InclineSensorData.h */
/* RaycastSensor.h */
/* RaycastSensorData.h */
/* VolumeSensor.h */
/* VolumeSensorData.h */
/* EventHandler.h */
/* JointBreakEventHandler.h */
/* CollisionEventHandler.h */
/* PostStepEventHandler.h */
/* Blueprint.h */
/* BlueprintInstance.h */
/* BlueprintManager.h */
/* Defines.h */

#else // COMPILE_PAL

  enum { _ENUM_EXDL_PAL = EXDL_PAL_H };

#endif // COMPILE_PAL

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
