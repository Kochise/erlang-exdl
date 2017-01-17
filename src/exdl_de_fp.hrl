%%
%%  Copyright (c) 2010 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_de_fp.hrl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

%% Using original C function name as identifier for driver callback

-ifdef(COMPILE_DE).

%% odeconfig.h

%% compatibility.h

%% common.h

  -define(dGetConfiguration,                            ?EXDL_DE_HRL                                  + 0).
  -define(dCheckConfiguration,                          ?dGetConfiguration                            + 1).

%% odeinit.h

  -define(dInitODE,                                     ?dCheckConfiguration                          + 1).
  -define(dInitODE2,                                    ?dInitODE                                     + 1).
  -define(dAllocateODEDataForThread,                    ?dInitODE2                                    + 1).
  -define(dCleanupODEAllDataForThread,                  ?dAllocateODEDataForThread                    + 1).
  -define(dCloseODE,                                    ?dCleanupODEAllDataForThread                  + 1).

%% contact.h

%% error.h

  -define(dSetErrorHandler,                             ?dCloseODE                                    + 1).
  -define(dSetDebugHandler,                             ?dSetErrorHandler                             + 1).
  -define(dSetMessageHandler,                           ?dSetDebugHandler                             + 1).
  -define(dGetErrorHandler,                             ?dSetMessageHandler                           + 1).
  -define(dGetDebugHandler,                             ?dGetErrorHandler                             + 1).
  -define(dGetMessageHandler,                           ?dGetDebugHandler                             + 1).
  -define(dError,                                       ?dGetMessageHandler                           + 1).
  -define(dDebug,                                       ?dError                                       + 1).
  -define(dMessage,                                     ?dDebug                                       + 1).

%% memory.h

  -define(dSetAllocHandler,                             ?dMessage                                     + 1).
  -define(dSetReallocHandler,                           ?dSetAllocHandler                             + 1).
  -define(dSetFreeHandler,                              ?dSetReallocHandler                           + 1).
  -define(dGetAllocHandler,                             ?dSetFreeHandler                              + 1).
  -define(dGetReallocHandler,                           ?dGetAllocHandler                             + 1).
  -define(dGetFreeHandler,                              ?dGetReallocHandler                           + 1).
  -define(dAlloc,                                       ?dGetFreeHandler                              + 1).
  -define(dRealloc,                                     ?dAlloc                                       + 1).
  -define(dFree,                                        ?dRealloc                                     + 1).

%% odemath.h

  -define(dSafeNormalize3,                              ?dFree                                        + 1).
  -define(dSafeNormalize4,                              ?dSafeNormalize3                              + 1).
  -define(dNormalize3,                                  ?dSafeNormalize4                              + 1).
  -define(dNormalize4,                                  ?dNormalize3                                  + 1).
  -define(dPlaneSpace,                                  ?dNormalize4                                  + 1).

%% matrix.h

  -define(dSetZero,                                     ?dPlaneSpace                                  + 1).
  -define(dSetValue,                                    ?dSetZero                                     + 1).
  -define(dDot,                                         ?dSetValue                                    + 1).
  -define(dMultiply0,                                   ?dDot                                         + 1).
  -define(dMultiply1,                                   ?dMultiply0                                   + 1).
  -define(dMultiply2,                                   ?dMultiply1                                   + 1).
  -define(dFactorCholesky,                              ?dMultiply2                                   + 1).
  -define(dSolveCholesky,                               ?dFactorCholesky                              + 1).
  -define(dInvertPDMatrix,                              ?dSolveCholesky                               + 1).
  -define(dIsPositiveDefinite,                          ?dInvertPDMatrix                              + 1).
  -define(dFactorLDLT,                                  ?dIsPositiveDefinite                          + 1).
  -define(dSolveL1,                                     ?dFactorLDLT                                  + 1).
  -define(dSolveL1T,                                    ?dSolveL1                                     + 1).
  -define(dVectorScale,                                 ?dSolveL1T                                    + 1).
  -define(dSolveLDLT,                                   ?dVectorScale                                 + 1).
  -define(dLDLTAddTL,                                   ?dSolveLDLT                                   + 1).
  -define(dLDLTRemove,                                  ?dLDLTAddTL                                   + 1).
  -define(dRemoveRowCol,                                ?dLDLTRemove                                  + 1).

%% timer.h

  -define(dStopwatchReset,                              ?dRemoveRowCol                                + 1).
  -define(dStopwatchStart,                              ?dStopwatchReset                              + 1).
  -define(dStopwatchStop,                               ?dStopwatchStart                              + 1).
  -define(dStopwatchTime,                               ?dStopwatchStop                               + 1).
  -define(dTimerStart,                                  ?dStopwatchTime                               + 1).
  -define(dTimerNow,                                    ?dTimerStart                                  + 1).
  -define(dTimerEnd,                                    ?dTimerNow                                    + 1).
  -define(dTimerReport,                                 ?dTimerEnd                                    + 1).
  -define(dTimerTicksPerSecond,                         ?dTimerReport                                 + 1).
  -define(dTimerResolution,                             ?dTimerTicksPerSecond                         + 1).

%% rotation.h

  -define(dRSetIdentity,                                ?dTimerResolution                             + 1).
  -define(dRFromAxisAndAngle,                           ?dRSetIdentity                                + 1).
  -define(dRFromEulerAngles,                            ?dRFromAxisAndAngle                           + 1).
  -define(dRFrom2Axes,                                  ?dRFromEulerAngles                            + 1).
  -define(dRFromZAxis,                                  ?dRFrom2Axes                                  + 1).
  -define(dQSetIdentity,                                ?dRFromZAxis                                  + 1).
  -define(dQFromAxisAndAngle,                           ?dQSetIdentity                                + 1).
  -define(dQMultiply0,                                  ?dQFromAxisAndAngle                           + 1).
  -define(dQMultiply1,                                  ?dQMultiply0                                  + 1).
  -define(dQMultiply2,                                  ?dQMultiply1                                  + 1).
  -define(dQMultiply3,                                  ?dQMultiply2                                  + 1).
  -define(dRfromQ,                                      ?dQMultiply3                                  + 1).
  -define(dQfromR,                                      ?dRfromQ                                      + 1).
  -define(dDQfromW,                                     ?dQfromR                                      + 1).

%% mass.h

  -define(dMassCheck,                                   ?dDQfromW                                     + 1).
  -define(dMassSetZero,                                 ?dMassCheck                                   + 1).
  -define(dMassSetParameters,                           ?dMassSetZero                                 + 1).
  -define(dMassSetSphere,                               ?dMassSetParameters                           + 1).
  -define(dMassSetSphereTotal,                          ?dMassSetSphere                               + 1).
  -define(dMassSetCapsule,                              ?dMassSetSphereTotal                          + 1).
  -define(dMassSetCapsuleTotal,                         ?dMassSetCapsule                              + 1).
  -define(dMassSetCylinder,                             ?dMassSetCapsuleTotal                         + 1).
  -define(dMassSetCylinderTotal,                        ?dMassSetCylinder                             + 1).
  -define(dMassSetBox,                                  ?dMassSetCylinderTotal                        + 1).
  -define(dMassSetBoxTotal,                             ?dMassSetBox                                  + 1).
  -define(dMassSetTrimesh,                              ?dMassSetBoxTotal                             + 1).
  -define(dMassSetTrimeshTotal,                         ?dMassSetTrimesh                              + 1).
  -define(dMassAdjust,                                  ?dMassSetTrimeshTotal                         + 1).
  -define(dMassTranslate,                               ?dMassAdjust                                  + 1).
  -define(dMassRotate,                                  ?dMassTranslate                               + 1).
  -define(dMassAdd,                                     ?dMassRotate                                  + 1).

%% misc.h

  -define(dTestRand,                                    ?dMassAdd                                     + 1).
  -define(dRand,                                        ?dTestRand                                    + 1).
  -define(dRandGetSeed,                                 ?dRand                                        + 1).
  -define(dRandSetSeed,                                 ?dRandGetSeed                                 + 1).
  -define(dRandInt,                                     ?dRandSetSeed                                 + 1).
  -define(dRandReal,                                    ?dRandInt                                     + 1).
  -define(dPrintMatrix,                                 ?dRandReal                                    + 1).
  -define(dMakeRandomVector,                            ?dPrintMatrix                                 + 1).
  -define(dMakeRandomMatrix,                            ?dMakeRandomVector                            + 1).
  -define(dClearUpperTriangle,                          ?dMakeRandomMatrix                            + 1).
  -define(dMaxDifference,                               ?dClearUpperTriangle                          + 1).
  -define(dMaxDifferenceLowerTriangle,                  ?dMaxDifference                               + 1).

%% objects.h

  -define(dWorldCreate,                                 ?dMaxDifferenceLowerTriangle                  + 1).
  -define(dWorldDestroy,                                ?dWorldCreate                                 + 1).
  -define(dWorldSetGravity,                             ?dWorldDestroy                                + 1).
  -define(dWorldGetGravity,                             ?dWorldSetGravity                             + 1).
  -define(dWorldSetERP,                                 ?dWorldGetGravity                             + 1).
  -define(dWorldGetERP,                                 ?dWorldSetERP                                 + 1).
  -define(dWorldSetCFM,                                 ?dWorldGetERP                                 + 1).
  -define(dWorldGetCFM,                                 ?dWorldSetCFM                                 + 1).
  -define(dWorldStep,                                   ?dWorldGetCFM                                 + 1).
  -define(dWorldImpulseToForce,                         ?dWorldStep                                   + 1).
  -define(dWorldQuickStep,                              ?dWorldImpulseToForce                         + 1).
  -define(dWorldSetQuickStepNumIterations,              ?dWorldQuickStep                              + 1).
  -define(dWorldGetQuickStepNumIterations,              ?dWorldSetQuickStepNumIterations              + 1).
  -define(dWorldSetQuickStepW,                          ?dWorldGetQuickStepNumIterations              + 1).
  -define(dWorldGetQuickStepW,                          ?dWorldSetQuickStepW                          + 1).
  -define(dWorldSetContactMaxCorrectingVel,             ?dWorldGetQuickStepW                          + 1).
  -define(dWorldGetContactMaxCorrectingVel,             ?dWorldSetContactMaxCorrectingVel             + 1).
  -define(dWorldSetContactSurfaceLayer,                 ?dWorldGetContactMaxCorrectingVel             + 1).
  -define(dWorldGetContactSurfaceLayer,                 ?dWorldSetContactSurfaceLayer                 + 1).
  -define(dWorldStepFast1,                              ?dWorldGetContactSurfaceLayer                 + 1).
  -define(dWorldSetAutoEnableDepthSF1,                  ?dWorldStepFast1                              + 1).
  -define(dWorldGetAutoEnableDepthSF1,                  ?dWorldSetAutoEnableDepthSF1                  + 1).
  -define(dWorldGetAutoDisableLinearThreshold,          ?dWorldGetAutoEnableDepthSF1                  + 1).
  -define(dWorldSetAutoDisableLinearThreshold,          ?dWorldGetAutoDisableLinearThreshold          + 1).
  -define(dWorldGetAutoDisableAngularThreshold,         ?dWorldSetAutoDisableLinearThreshold          + 1).
  -define(dWorldSetAutoDisableAngularThreshold,         ?dWorldGetAutoDisableAngularThreshold         + 1).
  -define(dWorldGetAutoDisableLinearAverageThreshold,   ?dWorldSetAutoDisableAngularThreshold         + 1).
  -define(dWorldSetAutoDisableLinearAverageThreshold,   ?dWorldGetAutoDisableLinearAverageThreshold   + 1).
  -define(dWorldGetAutoDisableAngularAverageThreshold,  ?dWorldSetAutoDisableLinearAverageThreshold   + 1).
  -define(dWorldSetAutoDisableAngularAverageThreshold,  ?dWorldGetAutoDisableAngularAverageThreshold  + 1).
  -define(dWorldGetAutoDisableAverageSamplesCount,      ?dWorldSetAutoDisableAngularAverageThreshold  + 1).
  -define(dWorldSetAutoDisableAverageSamplesCount,      ?dWorldGetAutoDisableAverageSamplesCount      + 1).
  -define(dWorldGetAutoDisableSteps,                    ?dWorldSetAutoDisableAverageSamplesCount      + 1).
  -define(dWorldSetAutoDisableSteps,                    ?dWorldGetAutoDisableSteps                    + 1).
  -define(dWorldGetAutoDisableTime,                     ?dWorldSetAutoDisableSteps                    + 1).
  -define(dWorldSetAutoDisableTime,                     ?dWorldGetAutoDisableTime                     + 1).
  -define(dWorldGetAutoDisableFlag,                     ?dWorldSetAutoDisableTime                     + 1).
  -define(dWorldSetAutoDisableFlag,                     ?dWorldGetAutoDisableFlag                     + 1).
  -define(dWorldGetLinearDampingThreshold,              ?dWorldSetAutoDisableFlag                     + 1).
  -define(dWorldSetLinearDampingThreshold,              ?dWorldGetLinearDampingThreshold              + 1).
  -define(dWorldGetAngularDampingThreshold,             ?dWorldSetLinearDampingThreshold              + 1).
  -define(dWorldSetAngularDampingThreshold,             ?dWorldGetAngularDampingThreshold             + 1).
  -define(dWorldGetLinearDamping,                       ?dWorldSetAngularDampingThreshold             + 1).
  -define(dWorldSetLinearDamping,                       ?dWorldGetLinearDamping                       + 1).
  -define(dWorldGetAngularDamping,                      ?dWorldSetLinearDamping                       + 1).
  -define(dWorldSetAngularDamping,                      ?dWorldGetAngularDamping                      + 1).
  -define(dWorldSetDamping,                             ?dWorldSetAngularDamping                      + 1).
  -define(dWorldGetMaxAngularSpeed,                     ?dWorldSetDamping                             + 1).
  -define(dWorldSetMaxAngularSpeed,                     ?dWorldGetMaxAngularSpeed                     + 1).
  -define(dBodyGetAutoDisableLinearThreshold,           ?dWorldSetMaxAngularSpeed                     + 1).
  -define(dBodySetAutoDisableLinearThreshold,           ?dBodyGetAutoDisableLinearThreshold           + 1).
  -define(dBodyGetAutoDisableAngularThreshold,          ?dBodySetAutoDisableLinearThreshold           + 1).
  -define(dBodySetAutoDisableAngularThreshold,          ?dBodyGetAutoDisableAngularThreshold          + 1).
  -define(dBodyGetAutoDisableAverageSamplesCount,       ?dBodySetAutoDisableAngularThreshold          + 1).
  -define(dBodySetAutoDisableAverageSamplesCount,       ?dBodyGetAutoDisableAverageSamplesCount       + 1).
  -define(dBodyGetAutoDisableSteps,                     ?dBodySetAutoDisableAverageSamplesCount       + 1).
  -define(dBodySetAutoDisableSteps,                     ?dBodyGetAutoDisableSteps                     + 1).
  -define(dBodyGetAutoDisableTime,                      ?dBodySetAutoDisableSteps                     + 1).
  -define(dBodySetAutoDisableTime,                      ?dBodyGetAutoDisableTime                      + 1).
  -define(dBodyGetAutoDisableFlag,                      ?dBodySetAutoDisableTime                      + 1).
  -define(dBodySetAutoDisableFlag,                      ?dBodyGetAutoDisableFlag                      + 1).
  -define(dBodySetAutoDisableDefaults,                  ?dBodySetAutoDisableFlag                      + 1).
  -define(dBodyGetWorld,                                ?dBodySetAutoDisableDefaults                  + 1).
  -define(dBodyCreate,                                  ?dBodyGetWorld                                + 1).
  -define(dBodyDestroy,                                 ?dBodyCreate                                  + 1).
  -define(dBodySetData,                                 ?dBodyDestroy                                 + 1).
  -define(dBodyGetData,                                 ?dBodySetData                                 + 1).
  -define(dBodySetPosition,                             ?dBodyGetData                                 + 1).
  -define(dBodySetRotation,                             ?dBodySetPosition                             + 1).
  -define(dBodySetQuaternion,                           ?dBodySetRotation                             + 1).
  -define(dBodySetLinearVel,                            ?dBodySetQuaternion                           + 1).
  -define(dBodySetAngularVel,                           ?dBodySetLinearVel                            + 1).
  -define(dBodyGetPosition,                             ?dBodySetAngularVel                           + 1).
  -define(dBodyCopyPosition,                            ?dBodyGetPosition                             + 1).
  -define(dBodyGetRotation,                             ?dBodyCopyPosition                            + 1).
  -define(dBodyCopyRotation,                            ?dBodyGetRotation                             + 1).
  -define(dBodyGetQuaternion,                           ?dBodyCopyRotation                            + 1).
  -define(dBodyCopyQuaternion,                          ?dBodyGetQuaternion                           + 1).
  -define(dBodyGetLinearVel,                            ?dBodyCopyQuaternion                          + 1).
  -define(dBodyGetAngularVel,                           ?dBodyGetLinearVel                            + 1).
  -define(dBodySetMass,                                 ?dBodyGetAngularVel                           + 1).
  -define(dBodyGetMass,                                 ?dBodySetMass                                 + 1).
  -define(dBodyAddForce,                                ?dBodyGetMass                                 + 1).
  -define(dBodyAddTorque,                               ?dBodyAddForce                                + 1).
  -define(dBodyAddRelForce,                             ?dBodyAddTorque                               + 1).
  -define(dBodyAddRelTorque,                            ?dBodyAddRelForce                             + 1).
  -define(dBodyAddForceAtPos,                           ?dBodyAddRelTorque                            + 1).
  -define(dBodyAddForceAtRelPos,                        ?dBodyAddForceAtPos                           + 1).
  -define(dBodyAddRelForceAtPos,                        ?dBodyAddForceAtRelPos                        + 1).
  -define(dBodyAddRelForceAtRelPos,                     ?dBodyAddRelForceAtPos                        + 1).
  -define(dBodyGetForce,                                ?dBodyAddRelForceAtRelPos                     + 1).
  -define(dBodyGetTorque,                               ?dBodyGetForce                                + 1).
  -define(dBodySetForce,                                ?dBodyGetTorque                               + 1).
  -define(dBodySetTorque,                               ?dBodySetForce                                + 1).
  -define(dBodyGetRelPointPos,                          ?dBodySetTorque                               + 1).
  -define(dBodyGetRelPointVel,                          ?dBodyGetRelPointPos                          + 1).
  -define(dBodyGetPointVel,                             ?dBodyGetRelPointVel                          + 1).
  -define(dBodyGetPosRelPoint,                          ?dBodyGetPointVel                             + 1).
  -define(dBodyVectorToWorld,                           ?dBodyGetPosRelPoint                          + 1).
  -define(dBodyVectorFromWorld,                         ?dBodyVectorToWorld                           + 1).
  -define(dBodySetFiniteRotationMode,                   ?dBodyVectorFromWorld                         + 1).
  -define(dBodySetFiniteRotationAxis,                   ?dBodySetFiniteRotationMode                   + 1).
  -define(dBodyGetFiniteRotationMode,                   ?dBodySetFiniteRotationAxis                   + 1).
  -define(dBodyGetFiniteRotationAxis,                   ?dBodyGetFiniteRotationMode                   + 1).
  -define(dBodyGetNumJoints,                            ?dBodyGetFiniteRotationAxis                   + 1).
  -define(dBodyGetJoint,                                ?dBodyGetNumJoints                            + 1).
  -define(dBodyEnable,                                  ?dBodyGetJoint                                + 1).
  -define(dBodyDisable,                                 ?dBodyEnable                                  + 1).
  -define(dBodyIsEnabled,                               ?dBodyDisable                                 + 1).
  -define(dBodySetGravityMode,                          ?dBodyIsEnabled                               + 1).
  -define(dBodyGetGravityMode,                          ?dBodySetGravityMode                          + 1).
  -define(dBodySetMovedCallback,                        ?dBodyGetGravityMode                          + 1).
  -define(dBodyGetFirstGeom,                            ?dBodySetMovedCallback                        + 1).
  -define(dBodyGetNextGeom,                             ?dBodyGetFirstGeom                            + 1).
  -define(dBodySetDampingDefaults,                      ?dBodyGetNextGeom                             + 1).
  -define(dBodyGetLinearDamping,                        ?dBodySetDampingDefaults                      + 1).
  -define(dBodySetLinearDamping,                        ?dBodyGetLinearDamping                        + 1).
  -define(dBodyGetAngularDamping,                       ?dBodySetLinearDamping                        + 1).
  -define(dBodySetAngularDamping,                       ?dBodyGetAngularDamping                       + 1).
  -define(dBodySetDamping,                              ?dBodySetAngularDamping                       + 1).
  -define(dBodyGetLinearDampingThreshold,               ?dBodySetDamping                              + 1).
  -define(dBodySetLinearDampingThreshold,               ?dBodyGetLinearDampingThreshold               + 1).
  -define(dBodyGetAngularDampingThreshold,              ?dBodySetLinearDampingThreshold               + 1).
  -define(dBodySetAngularDampingThreshold,              ?dBodyGetAngularDampingThreshold              + 1).
  -define(dBodyGetMaxAngularSpeed,                      ?dBodySetAngularDampingThreshold              + 1).
  -define(dBodySetMaxAngularSpeed,                      ?dBodyGetMaxAngularSpeed                      + 1).
  -define(dJointCreateBall,                             ?dBodySetMaxAngularSpeed                      + 1).
  -define(dJointCreateHinge,                            ?dJointCreateBall                             + 1).
  -define(dJointCreateSlider,                           ?dJointCreateHinge                            + 1).
  -define(dJointCreateContact,                          ?dJointCreateSlider                           + 1).
  -define(dJointCreateHinge2,                           ?dJointCreateContact                          + 1).
  -define(dJointCreateUniversal,                        ?dJointCreateHinge2                           + 1).
  -define(dJointCreatePR,                               ?dJointCreateUniversal                        + 1).
  -define(dJointCreatePU,                               ?dJointCreatePR                               + 1).
  -define(dJointCreatePiston,                           ?dJointCreatePU                               + 1).
  -define(dJointCreateFixed,                            ?dJointCreatePiston                           + 1).
  -define(dJointCreateNull,                             ?dJointCreateFixed                            + 1).
  -define(dJointCreateAMotor,                           ?dJointCreateNull                             + 1).
  -define(dJointCreateLMotor,                           ?dJointCreateAMotor                           + 1).
  -define(dJointCreatePlane2D,                          ?dJointCreateLMotor                           + 1).
  -define(dJointDestroy,                                ?dJointCreatePlane2D                          + 1).
  -define(dJointGroupCreate,                            ?dJointDestroy                                + 1).
  -define(dJointGroupDestroy,                           ?dJointGroupCreate                            + 1).
  -define(dJointGroupEmpty,                             ?dJointGroupDestroy                           + 1).
  -define(dJointGetNumBodies,                           ?dJointGroupEmpty                             + 1).
  -define(dJointAttach,                                 ?dJointGetNumBodies                           + 1).
  -define(dJointSetData,                                ?dJointAttach                                 + 1).
  -define(dJointGetData,                                ?dJointSetData                                + 1).
  -define(dJointGetType,                                ?dJointGetData                                + 1).
  -define(dJointGetBody,                                ?dJointGetType                                + 1).
  -define(dJointSetFeedback,                            ?dJointGetBody                                + 1).
  -define(dJointGetFeedback,                            ?dJointSetFeedback                            + 1).
  -define(dJointSetBallAnchor,                          ?dJointGetFeedback                            + 1).
  -define(dJointSetBallAnchor2,                         ?dJointSetBallAnchor                          + 1).
  -define(dJointSetBallParam,                           ?dJointSetBallAnchor2                         + 1).
  -define(dJointSetHingeAnchor,                         ?dJointSetBallParam                           + 1).
  -define(dJointSetHingeAnchorDelta,                    ?dJointSetHingeAnchor                         + 1).
  -define(dJointSetHingeAxis,                           ?dJointSetHingeAnchorDelta                    + 1).
  -define(dJointSetHingeAxisOffset,                     ?dJointSetHingeAxis                           + 1).
  -define(dJointSetHingeParam,                          ?dJointSetHingeAxisOffset                     + 1).
  -define(dJointAddHingeTorque,                         ?dJointSetHingeParam                          + 1).
  -define(dJointSetSliderAxis,                          ?dJointAddHingeTorque                         + 1).
  -define(dJointSetSliderAxisDelta,                     ?dJointSetSliderAxis                          + 1).
  -define(dJointSetSliderParam,                         ?dJointSetSliderAxisDelta                     + 1).
  -define(dJointAddSliderForce,                         ?dJointSetSliderParam                         + 1).
  -define(dJointSetHinge2Anchor,                        ?dJointAddSliderForce                         + 1).
  -define(dJointSetHinge2Axis1,                         ?dJointSetHinge2Anchor                        + 1).
  -define(dJointSetHinge2Axis2,                         ?dJointSetHinge2Axis1                         + 1).
  -define(dJointSetHinge2Param,                         ?dJointSetHinge2Axis2                         + 1).
  -define(dJointAddHinge2Torques,                       ?dJointSetHinge2Param                         + 1).
  -define(dJointSetUniversalAnchor,                     ?dJointAddHinge2Torques                       + 1).
  -define(dJointSetUniversalAxis1,                      ?dJointSetUniversalAnchor                     + 1).
  -define(dJointSetUniversalAxis2,                      ?dJointSetUniversalAxis1                      + 1).
  -define(dJointSetUniversalParam,                      ?dJointSetUniversalAxis2                      + 1).
  -define(dJointAddUniversalTorques,                    ?dJointSetUniversalParam                      + 1).
  -define(dJointSetPRAnchor,                            ?dJointAddUniversalTorques                    + 1).
  -define(dJointSetPRAxis1,                             ?dJointSetPRAnchor                            + 1).
  -define(dJointSetPRAxis2,                             ?dJointSetPRAxis1                             + 1).
  -define(dJointSetPRParam,                             ?dJointSetPRAxis2                             + 1).
  -define(dJointAddPRTorque,                            ?dJointSetPRParam                             + 1).
  -define(dJointSetPUAnchor,                            ?dJointAddPRTorque                            + 1).
  -define(dJointSetPUAnchorDelta,                       ?dJointSetPUAnchor                            + 1).
  -define(dJointSetPUAxis1,                             ?dJointSetPUAnchorDelta                       + 1).
  -define(dJointSetPUAxis2,                             ?dJointSetPUAxis1                             + 1).
  -define(dJointSetPUAxis3,                             ?dJointSetPUAxis2                             + 1).
  -define(dJointSetPUAxisP,                             ?dJointSetPUAxis3                             + 1).
  -define(dJointSetPUParam,                             ?dJointSetPUAxisP                             + 1).
  -define(dJointAddPUTorque,                            ?dJointSetPUParam                             + 1).
  -define(dJointSetPistonAnchor,                        ?dJointAddPUTorque                            + 1).
  -define(dJointSetPistonAnchorOffset,                  ?dJointSetPistonAnchor                        + 1).
  -define(dJointSetPistonAxis,                          ?dJointSetPistonAnchorOffset                  + 1).
  -define(dJointSetPistonAxisDelta,                     ?dJointSetPistonAxis                          + 1).
  -define(dJointSetPistonParam,                         ?dJointSetPistonAxisDelta                     + 1).
  -define(dJointAddPistonForce,                         ?dJointSetPistonParam                         + 1).
  -define(dJointSetFixed,                               ?dJointAddPistonForce                         + 1).
  -define(dJointSetFixedParam,                          ?dJointSetFixed                               + 1).
  -define(dJointSetAMotorNumAxes,                       ?dJointSetFixedParam                          + 1).
  -define(dJointSetAMotorAxis,                          ?dJointSetAMotorNumAxes                       + 1).
  -define(dJointSetAMotorAngle,                         ?dJointSetAMotorAxis                          + 1).
  -define(dJointSetAMotorParam,                         ?dJointSetAMotorAngle                         + 1).
  -define(dJointSetAMotorMode,                          ?dJointSetAMotorParam                         + 1).
  -define(dJointAddAMotorTorques,                       ?dJointSetAMotorMode                          + 1).
  -define(dJointSetLMotorNumAxes,                       ?dJointAddAMotorTorques                       + 1).
  -define(dJointSetLMotorAxis,                          ?dJointSetLMotorNumAxes                       + 1).
  -define(dJointSetLMotorParam,                         ?dJointSetLMotorAxis                          + 1).
  -define(dJointSetPlane2DXParam,                       ?dJointSetLMotorParam                         + 1).
  -define(dJointSetPlane2DYParam,                       ?dJointSetPlane2DXParam                       + 1).
  -define(dJointSetPlane2DAngleParam,                   ?dJointSetPlane2DYParam                       + 1).
  -define(dJointGetBallAnchor,                          ?dJointSetPlane2DAngleParam                   + 1).
  -define(dJointGetBallAnchor2,                         ?dJointGetBallAnchor                          + 1).
  -define(dJointGetBallParam,                           ?dJointGetBallAnchor2                         + 1).
  -define(dJointGetHingeAnchor,                         ?dJointGetBallParam                           + 1).
  -define(dJointGetHingeAnchor2,                        ?dJointGetHingeAnchor                         + 1).
  -define(dJointGetHingeAxis,                           ?dJointGetHingeAnchor2                        + 1).
  -define(dJointGetHingeParam,                          ?dJointGetHingeAxis                           + 1).
  -define(dJointGetHingeAngle,                          ?dJointGetHingeParam                          + 1).
  -define(dJointGetHingeAngleRate,                      ?dJointGetHingeAngle                          + 1).
  -define(dJointGetSliderPosition,                      ?dJointGetHingeAngleRate                      + 1).
  -define(dJointGetSliderPositionRate,                  ?dJointGetSliderPosition                      + 1).
  -define(dJointGetSliderAxis,                          ?dJointGetSliderPositionRate                  + 1).
  -define(dJointGetSliderParam,                         ?dJointGetSliderAxis                          + 1).
  -define(dJointGetHinge2Anchor,                        ?dJointGetSliderParam                         + 1).
  -define(dJointGetHinge2Anchor2,                       ?dJointGetHinge2Anchor                        + 1).
  -define(dJointGetHinge2Axis1,                         ?dJointGetHinge2Anchor2                       + 1).
  -define(dJointGetHinge2Axis2,                         ?dJointGetHinge2Axis1                         + 1).
  -define(dJointGetHinge2Param,                         ?dJointGetHinge2Axis2                         + 1).
  -define(dJointGetHinge2Angle1,                        ?dJointGetHinge2Param                         + 1).
  -define(dJointGetHinge2Angle1Rate,                    ?dJointGetHinge2Angle1                        + 1).
  -define(dJointGetHinge2Angle2Rate,                    ?dJointGetHinge2Angle1Rate                    + 1).
  -define(dJointGetUniversalAnchor,                     ?dJointGetHinge2Angle2Rate                    + 1).
  -define(dJointGetUniversalAnchor2,                    ?dJointGetUniversalAnchor                     + 1).
  -define(dJointGetUniversalAxis1,                      ?dJointGetUniversalAnchor2                    + 1).
  -define(dJointGetUniversalAxis2,                      ?dJointGetUniversalAxis1                      + 1).
  -define(dJointGetUniversalParam,                      ?dJointGetUniversalAxis2                      + 1).
  -define(dJointGetUniversalAngles,                     ?dJointGetUniversalParam                      + 1).
  -define(dJointGetUniversalAngle1,                     ?dJointGetUniversalAngles                     + 1).
  -define(dJointGetUniversalAngle2,                     ?dJointGetUniversalAngle1                     + 1).
  -define(dJointGetUniversalAngle1Rate,                 ?dJointGetUniversalAngle2                     + 1).
  -define(dJointGetUniversalAngle2Rate,                 ?dJointGetUniversalAngle1Rate                 + 1).
  -define(dJointGetPRAnchor,                            ?dJointGetUniversalAngle2Rate                 + 1).
  -define(dJointGetPRPosition,                          ?dJointGetPRAnchor                            + 1).
  -define(dJointGetPRPositionRate,                      ?dJointGetPRPosition                          + 1).
  -define(dJointGetPRAxis1,                             ?dJointGetPRPositionRate                      + 1).
  -define(dJointGetPRAxis2,                             ?dJointGetPRAxis1                             + 1).
  -define(dJointGetPRParam,                             ?dJointGetPRAxis2                             + 1).
  -define(dJointGetPUAnchor,                            ?dJointGetPRParam                             + 1).
  -define(dJointGetPUPosition,                          ?dJointGetPUAnchor                            + 1).
  -define(dJointGetPUPositionRate,                      ?dJointGetPUPosition                          + 1).
  -define(dJointGetPUAxis1,                             ?dJointGetPUPositionRate                      + 1).
  -define(dJointGetPUAxis2,                             ?dJointGetPUAxis1                             + 1).
  -define(dJointGetPUAxis3,                             ?dJointGetPUAxis2                             + 1).
  -define(dJointGetPUAxisP,                             ?dJointGetPUAxis3                             + 1).
  -define(dJointGetPUAngles,                            ?dJointGetPUAxisP                             + 1).
  -define(dJointGetPUAngle1,                            ?dJointGetPUAngles                            + 1).
  -define(dJointGetPUAngle1Rate,                        ?dJointGetPUAngle1                            + 1).
  -define(dJointGetPUAngle2,                            ?dJointGetPUAngle1Rate                        + 1).
  -define(dJointGetPUAngle2Rate,                        ?dJointGetPUAngle2                            + 1).
  -define(dJointGetPUParam,                             ?dJointGetPUAngle2Rate                        + 1).
  -define(dJointGetPistonPosition,                      ?dJointGetPUParam                             + 1).
  -define(dJointGetPistonPositionRate,                  ?dJointGetPistonPosition                      + 1).
  -define(dJointGetPistonAngle,                         ?dJointGetPistonPositionRate                  + 1).
  -define(dJointGetPistonAngleRate,                     ?dJointGetPistonAngle                         + 1).
  -define(dJointGetPistonAnchor,                        ?dJointGetPistonAngleRate                     + 1).
  -define(dJointGetPistonAnchor2,                       ?dJointGetPistonAnchor                        + 1).
  -define(dJointGetPistonAxis,                          ?dJointGetPistonAnchor2                       + 1).
  -define(dJointGetPistonParam,                         ?dJointGetPistonAxis                          + 1).
  -define(dJointGetAMotorNumAxes,                       ?dJointGetPistonParam                         + 1).
  -define(dJointGetAMotorAxis,                          ?dJointGetAMotorNumAxes                       + 1).
  -define(dJointGetAMotorAxisRel,                       ?dJointGetAMotorAxis                          + 1).
  -define(dJointGetAMotorAngle,                         ?dJointGetAMotorAxisRel                       + 1).
  -define(dJointGetAMotorAngleRate,                     ?dJointGetAMotorAngle                         + 1).
  -define(dJointGetAMotorParam,                         ?dJointGetAMotorAngleRate                     + 1).
  -define(dJointGetAMotorMode,                          ?dJointGetAMotorParam                         + 1).
  -define(dJointGetLMotorNumAxes,                       ?dJointGetAMotorMode                          + 1).
  -define(dJointGetLMotorAxis,                          ?dJointGetLMotorNumAxes                       + 1).
  -define(dJointGetLMotorParam,                         ?dJointGetLMotorAxis                          + 1).
  -define(dJointGetFixedParam,                          ?dJointGetLMotorParam                         + 1).
  -define(dConnectingJoint,                             ?dJointGetFixedParam                          + 1).
  -define(dConnectingJointList,                         ?dConnectingJoint                             + 1).
  -define(dAreConnected,                                ?dConnectingJointList                         + 1).
  -define(dAreConnectedExcluding,                       ?dAreConnected                                + 1).

%% odecpp.h

%% collision_space.h

  -define(dSimpleSpaceCreate,                           ?dAreConnectedExcluding                       + 1).
  -define(dHashSpaceCreate,                             ?dSimpleSpaceCreate                           + 1).
  -define(dQuadTreeSpaceCreate,                         ?dHashSpaceCreate                             + 1).
  -define(dSweepAndPruneSpaceCreate,                    ?dQuadTreeSpaceCreate                         + 1).
  -define(dSpaceDestroy,                                ?dSweepAndPruneSpaceCreate                    + 1).
  -define(dHashSpaceSetLevels,                          ?dSpaceDestroy                                + 1).
  -define(dHashSpaceGetLevels,                          ?dHashSpaceSetLevels                          + 1).
  -define(dSpaceSetCleanup,                             ?dHashSpaceGetLevels                          + 1).
  -define(dSpaceGetCleanup,                             ?dSpaceSetCleanup                             + 1).
  -define(dSpaceSetSublevel,                            ?dSpaceGetCleanup                             + 1).
  -define(dSpaceGetSublevel,                            ?dSpaceSetSublevel                            + 1).
  -define(dSpaceAdd,                                    ?dSpaceGetSublevel                            + 1).
  -define(dSpaceRemove,                                 ?dSpaceAdd                                    + 1).
  -define(dSpaceQuery,                                  ?dSpaceRemove                                 + 1).
  -define(dSpaceClean,                                  ?dSpaceQuery                                  + 1).
  -define(dSpaceGetNumGeoms,                            ?dSpaceClean                                  + 1).
  -define(dSpaceGetGeom,                                ?dSpaceGetNumGeoms                            + 1).
  -define(dSpaceGetClass,                               ?dSpaceGetGeom                                + 1).

%% collision.h

  -define(dGeomDestroy,                                 ?dSpaceGetClass                               + 1).
  -define(dGeomSetData,                                 ?dGeomDestroy                                 + 1).
  -define(dGeomGetData,                                 ?dGeomSetData                                 + 1).
  -define(dGeomSetBody,                                 ?dGeomGetData                                 + 1).
  -define(dGeomGetBody,                                 ?dGeomSetBody                                 + 1).
  -define(dGeomSetPosition,                             ?dGeomGetBody                                 + 1).
  -define(dGeomSetRotation,                             ?dGeomSetPosition                             + 1).
  -define(dGeomSetQuaternion,                           ?dGeomSetRotation                             + 1).
  -define(dGeomGetPosition,                             ?dGeomSetQuaternion                           + 1).
  -define(dGeomCopyPosition,                            ?dGeomGetPosition                             + 1).
  -define(dGeomGetRotation,                             ?dGeomCopyPosition                            + 1).
  -define(dGeomCopyRotation,                            ?dGeomGetRotation                             + 1).
  -define(dGeomGetQuaternion,                           ?dGeomCopyRotation                            + 1).
  -define(dGeomGetAABB,                                 ?dGeomGetQuaternion                           + 1).
  -define(dGeomIsSpace,                                 ?dGeomGetAABB                                 + 1).
  -define(dGeomGetSpace,                                ?dGeomIsSpace                                 + 1).
  -define(dGeomGetClass,                                ?dGeomGetSpace                                + 1).
  -define(dGeomSetCategoryBits,                         ?dGeomGetClass                                + 1).
  -define(dGeomSetCollideBits,                          ?dGeomSetCategoryBits                         + 1).
  -define(dGeomGetCategoryBits,                         ?dGeomSetCollideBits                          + 1).
  -define(dGeomGetCollideBits,                          ?dGeomGetCategoryBits                         + 1).
  -define(dGeomEnable,                                  ?dGeomGetCollideBits                          + 1).
  -define(dGeomDisable,                                 ?dGeomEnable                                  + 1).
  -define(dGeomIsEnabled,                               ?dGeomDisable                                 + 1).
  -define(dGeomSetOffsetPosition,                       ?dGeomIsEnabled                               + 1).
  -define(dGeomSetOffsetRotation,                       ?dGeomSetOffsetPosition                       + 1).
  -define(dGeomSetOffsetQuaternion,                     ?dGeomSetOffsetRotation                       + 1).
  -define(dGeomSetOffsetWorldPosition,                  ?dGeomSetOffsetQuaternion                     + 1).
  -define(dGeomSetOffsetWorldRotation,                  ?dGeomSetOffsetWorldPosition                  + 1).
  -define(dGeomSetOffsetWorldQuaternion,                ?dGeomSetOffsetWorldRotation                  + 1).
  -define(dGeomClearOffset,                             ?dGeomSetOffsetWorldQuaternion                + 1).
  -define(dGeomIsOffset,                                ?dGeomClearOffset                             + 1).
  -define(dGeomGetOffsetPosition,                       ?dGeomIsOffset                                + 1).
  -define(dGeomCopyOffsetPosition,                      ?dGeomGetOffsetPosition                       + 1).
  -define(dGeomGetOffsetRotation,                       ?dGeomCopyOffsetPosition                      + 1).
  -define(dGeomCopyOffsetRotation,                      ?dGeomGetOffsetRotation                       + 1).
  -define(dGeomGetOffsetQuaternion,                     ?dGeomCopyOffsetRotation                      + 1).
  -define(dCollide,                                     ?dGeomGetOffsetQuaternion                     + 1).
  -define(dSpaceCollide,                                ?dCollide                                     + 1).
  -define(dSpaceCollide2,                               ?dSpaceCollide                                + 1).
  -define(dCreateSphere,                                ?dSpaceCollide2                               + 1).
  -define(dGeomSphereSetRadius,                         ?dCreateSphere                                + 1).
  -define(dGeomSphereGetRadius,                         ?dGeomSphereSetRadius                         + 1).
  -define(dGeomSpherePointDepth,                        ?dGeomSphereGetRadius                         + 1).
  -define(dCreateConvex,                                ?dGeomSpherePointDepth                        + 1).
  -define(dGeomSetConvex,                               ?dCreateConvex                                + 1).
  -define(dCreateBox,                                   ?dGeomSetConvex                               + 1).
  -define(dGeomBoxSetLengths,                           ?dCreateBox                                   + 1).
  -define(dGeomBoxGetLengths,                           ?dGeomBoxSetLengths                           + 1).
  -define(dGeomBoxPointDepth,                           ?dGeomBoxGetLengths                           + 1).
  -define(dCreatePlane,                                 ?dGeomBoxPointDepth                           + 1).
  -define(dGeomPlaneSetParams,                          ?dCreatePlane                                 + 1).
  -define(dGeomPlaneGetParams,                          ?dGeomPlaneSetParams                          + 1).
  -define(dGeomPlanePointDepth,                         ?dGeomPlaneGetParams                          + 1).
  -define(dCreateCapsule,                               ?dGeomPlanePointDepth                         + 1).
  -define(dGeomCapsuleSetParams,                        ?dCreateCapsule                               + 1).
  -define(dGeomCapsuleGetParams,                        ?dGeomCapsuleSetParams                        + 1).
  -define(dGeomCapsulePointDepth,                       ?dGeomCapsuleGetParams                        + 1).
  -define(dCreateCylinder,                              ?dGeomCapsulePointDepth                       + 1).
  -define(dGeomCylinderSetParams,                       ?dCreateCylinder                              + 1).
  -define(dGeomCylinderGetParams,                       ?dGeomCylinderSetParams                       + 1).
  -define(dCreateRay,                                   ?dGeomCylinderGetParams                       + 1).
  -define(dGeomRaySetLength,                            ?dCreateRay                                   + 1).
  -define(dGeomRayGetLength,                            ?dGeomRaySetLength                            + 1).
  -define(dGeomRaySet,                                  ?dGeomRayGetLength                            + 1).
  -define(dGeomRayGet,                                  ?dGeomRaySet                                  + 1).
  -define(dGeomRaySetParams,                            ?dGeomRayGet                                  + 1).
  -define(dGeomRayGetParams,                            ?dGeomRaySetParams                            + 1).
  -define(dGeomRaySetClosestHit,                        ?dGeomRayGetParams                            + 1).
  -define(dGeomRayGetClosestHit,                        ?dGeomRaySetClosestHit                        + 1).
  -define(dCreateGeomTransform,                         ?dGeomRayGetClosestHit                        + 1).
  -define(dGeomTransformSetGeom,                        ?dCreateGeomTransform                         + 1).
  -define(dGeomTransformGetGeom,                        ?dGeomTransformSetGeom                        + 1).
  -define(dGeomTransformSetCleanup,                     ?dGeomTransformGetGeom                        + 1).
  -define(dGeomTransformGetCleanup,                     ?dGeomTransformSetCleanup                     + 1).
  -define(dGeomTransformSetInfo,                        ?dGeomTransformGetCleanup                     + 1).
  -define(dGeomTransformGetInfo,                        ?dGeomTransformSetInfo                        + 1).
  -define(dCreateHeightfield,                           ?dGeomTransformGetInfo                        + 1).
  -define(dGeomHeightfieldDataCreate,                   ?dCreateHeightfield                           + 1).
  -define(dGeomHeightfieldDataDestroy,                  ?dGeomHeightfieldDataCreate                   + 1).
  -define(dGeomHeightfieldDataBuildCallback,            ?dGeomHeightfieldDataDestroy                  + 1).
  -define(dGeomHeightfieldDataBuildByte,                ?dGeomHeightfieldDataBuildCallback            + 1).
  -define(dGeomHeightfieldDataBuildShort,               ?dGeomHeightfieldDataBuildByte                + 1).
  -define(dGeomHeightfieldDataBuildSingle,              ?dGeomHeightfieldDataBuildShort               + 1).
  -define(dGeomHeightfieldDataBuildDouble,              ?dGeomHeightfieldDataBuildSingle              + 1).
  -define(dGeomHeightfieldDataSetBounds,                ?dGeomHeightfieldDataBuildDouble              + 1).
  -define(dGeomHeightfieldSetHeightfieldData,           ?dGeomHeightfieldDataSetBounds                + 1).
  -define(dGeomHeightfieldGetHeightfieldData,           ?dGeomHeightfieldSetHeightfieldData           + 1).
  -define(dClosestLineSegmentPoints,                    ?dGeomHeightfieldGetHeightfieldData           + 1).
  -define(dBoxTouchesBox,                               ?dClosestLineSegmentPoints                    + 1).
  -define(dBoxBox,                                      ?dBoxTouchesBox                               + 1).
  -define(dInfiniteAABB,                                ?dBoxBox                                      + 1).
  -define(dCreateGeomClass,                             ?dInfiniteAABB                                + 1).
  -define(dGeomGetClassData,                            ?dCreateGeomClass                             + 1).
  -define(dCreateGeom,                                  ?dGeomGetClassData                            + 1).
  -define(dSetColliderOverride,                         ?dCreateGeom                                  + 1).

%% odecpp_collision.h

%% export-dif.h

  -define(dWorldExportDIF,                              ?dSetColliderOverride                         + 1).

  %% EXDL_DE C SRC ENUM CHECK
  -define(_ENUM_EXDL_DE,                                ?dWorldExportDIF                              + 1).

-else. % COMPILE_DE

  -define(_ENUM_EXDL_DE,                                ?EXDL_DE_HRL).

-endif. % COMPILE_DE
