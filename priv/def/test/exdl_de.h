/*
 *  Copyright (c) 2012 David Koch
 *
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: exdl_de.h,v 1.5 2005/06/29 14:45:38 dgud Exp $
 */

  #ifdef __cplusplus
  extern "C" {
  #endif /* __cplusplus */

#ifdef COMPILE_DE

  enum
/* odeconfig.h */
/* compatibility.h */
/* common.h */
  { dGetConfiguration_ENUM = EXDL_DE_H
  , dCheckConfiguration_ENUM
/* odeinit.h */
  , dInitODE_ENUM
  , dInitODE2_ENUM
  , dAllocateODEDataForThread_ENUM
  , dCleanupODEAllDataForThread_ENUM
  , dCloseODE_ENUM
/* contact.h */
/* error.h */
  , dSetErrorHandler_ENUM
  , dSetDebugHandler_ENUM
  , dSetMessageHandler_ENUM
  , dGetErrorHandler_ENUM
  , dGetDebugHandler_ENUM
  , dGetMessageHandler_ENUM
  , dError_ENUM
  , dDebug_ENUM
  , dMessage_ENUM
/* memory.h */
  , dSetAllocHandler_ENUM
  , dSetReallocHandler_ENUM
  , dSetFreeHandler_ENUM
  , dGetAllocHandler_ENUM
  , dGetReallocHandler_ENUM
  , dGetFreeHandler_ENUM
  , dAlloc_ENUM
  , dRealloc_ENUM
  , dFree_ENUM
/* odemath.h */
  , dSafeNormalize3_ENUM
  , dSafeNormalize4_ENUM
  , dNormalize3_ENUM
  , dNormalize4_ENUM
  , dPlaneSpace_ENUM
/* matrix.h */
  , dSetZero_ENUM
  , dSetValue_ENUM
  , dDot_ENUM
  , dMultiply0_ENUM
  , dMultiply1_ENUM
  , dMultiply2_ENUM
  , dFactorCholesky_ENUM
  , dSolveCholesky_ENUM
  , dInvertPDMatrix_ENUM
  , dIsPositiveDefinite_ENUM
  , dFactorLDLT_ENUM
  , dSolveL1_ENUM
  , dSolveL1T_ENUM
  , dVectorScale_ENUM
  , dSolveLDLT_ENUM
  , dLDLTAddTL_ENUM
  , dLDLTRemove_ENUM
  , dRemoveRowCol_ENUM
/* timer.h */
  , dStopwatchReset_ENUM
  , dStopwatchStart_ENUM
  , dStopwatchStop_ENUM
  , dStopwatchTime_ENUM
  , dTimerStart_ENUM
  , dTimerNow_ENUM
  , dTimerEnd_ENUM
  , dTimerReport_ENUM
  , dTimerTicksPerSecond_ENUM
  , dTimerResolution_ENUM
/* rotation.h */
  , dRSetIdentity_ENUM
  , dRFromAxisAndAngle_ENUM
  , dRFromEulerAngles_ENUM
  , dRFrom2Axes_ENUM
  , dRFromZAxis_ENUM
  , dQSetIdentity_ENUM
  , dQFromAxisAndAngle_ENUM
  , dQMultiply0_ENUM
  , dQMultiply1_ENUM
  , dQMultiply2_ENUM
  , dQMultiply3_ENUM
  , dRfromQ_ENUM
  , dQfromR_ENUM
  , dDQfromW_ENUM
/* mass.h */
  , dMassCheck_ENUM
  , dMassSetZero_ENUM
  , dMassSetParameters_ENUM
  , dMassSetSphere_ENUM
  , dMassSetSphereTotal_ENUM
  , dMassSetCapsule_ENUM
  , dMassSetCapsuleTotal_ENUM
  , dMassSetCylinder_ENUM
  , dMassSetCylinderTotal_ENUM
  , dMassSetBox_ENUM
  , dMassSetBoxTotal_ENUM
  , dMassSetTrimesh_ENUM
  , dMassSetTrimeshTotal_ENUM
  , dMassAdjust_ENUM
  , dMassTranslate_ENUM
  , dMassRotate_ENUM
  , dMassAdd_ENUM
/* misc.h */
  , dTestRand_ENUM
  , dRand_ENUM
  , dRandGetSeed_ENUM
  , dRandSetSeed_ENUM
  , dRandInt_ENUM
  , dRandReal_ENUM
  , dPrintMatrix_ENUM
  , dMakeRandomVector_ENUM
  , dMakeRandomMatrix_ENUM
  , dClearUpperTriangle_ENUM
  , dMaxDifference_ENUM
  , dMaxDifferenceLowerTriangle_ENUM
/* objects.h */
  , dWorldCreate_ENUM
  , dWorldDestroy_ENUM
  , dWorldSetGravity_ENUM
  , dWorldGetGravity_ENUM
  , dWorldSetERP_ENUM
  , dWorldGetERP_ENUM
  , dWorldSetCFM_ENUM
  , dWorldGetCFM_ENUM
  , dWorldStep_ENUM
  , dWorldImpulseToForce_ENUM
  , dWorldQuickStep_ENUM
  , dWorldSetQuickStepNumIterations_ENUM
  , dWorldGetQuickStepNumIterations_ENUM
  , dWorldSetQuickStepW_ENUM
  , dWorldGetQuickStepW_ENUM
  , dWorldSetContactMaxCorrectingVel_ENUM
  , dWorldGetContactMaxCorrectingVel_ENUM
  , dWorldSetContactSurfaceLayer_ENUM
  , dWorldGetContactSurfaceLayer_ENUM
  , dWorldStepFast1_ENUM
  , dWorldSetAutoEnableDepthSF1_ENUM
  , dWorldGetAutoEnableDepthSF1_ENUM
  , dWorldGetAutoDisableLinearThreshold_ENUM
  , dWorldSetAutoDisableLinearThreshold_ENUM
  , dWorldGetAutoDisableAngularThreshold_ENUM
  , dWorldSetAutoDisableAngularThreshold_ENUM
  , dWorldGetAutoDisableLinearAverageThreshold_ENUM
  , dWorldSetAutoDisableLinearAverageThreshold_ENUM
  , dWorldGetAutoDisableAngularAverageThreshold_ENUM
  , dWorldSetAutoDisableAngularAverageThreshold_ENUM
  , dWorldGetAutoDisableAverageSamplesCount_ENUM
  , dWorldSetAutoDisableAverageSamplesCount_ENUM
  , dWorldGetAutoDisableSteps_ENUM
  , dWorldSetAutoDisableSteps_ENUM
  , dWorldGetAutoDisableTime_ENUM
  , dWorldSetAutoDisableTime_ENUM
  , dWorldGetAutoDisableFlag_ENUM
  , dWorldSetAutoDisableFlag_ENUM
  , dWorldGetLinearDampingThreshold_ENUM
  , dWorldSetLinearDampingThreshold_ENUM
  , dWorldGetAngularDampingThreshold_ENUM
  , dWorldSetAngularDampingThreshold_ENUM
  , dWorldGetLinearDamping_ENUM
  , dWorldSetLinearDamping_ENUM
  , dWorldGetAngularDamping_ENUM
  , dWorldSetAngularDamping_ENUM
  , dWorldSetDamping_ENUM
  , dWorldGetMaxAngularSpeed_ENUM
  , dWorldSetMaxAngularSpeed_ENUM
  , dBodyGetAutoDisableLinearThreshold_ENUM
  , dBodySetAutoDisableLinearThreshold_ENUM
  , dBodyGetAutoDisableAngularThreshold_ENUM
  , dBodySetAutoDisableAngularThreshold_ENUM
  , dBodyGetAutoDisableAverageSamplesCount_ENUM
  , dBodySetAutoDisableAverageSamplesCount_ENUM
  , dBodyGetAutoDisableSteps_ENUM
  , dBodySetAutoDisableSteps_ENUM
  , dBodyGetAutoDisableTime_ENUM
  , dBodySetAutoDisableTime_ENUM
  , dBodyGetAutoDisableFlag_ENUM
  , dBodySetAutoDisableFlag_ENUM
  , dBodySetAutoDisableDefaults_ENUM
  , dBodyGetWorld_ENUM
  , dBodyCreate_ENUM
  , dBodyDestroy_ENUM
  , dBodySetData_ENUM
  , dBodyGetData_ENUM
  , dBodySetPosition_ENUM
  , dBodySetRotation_ENUM
  , dBodySetQuaternion_ENUM
  , dBodySetLinearVel_ENUM
  , dBodySetAngularVel_ENUM
  , dBodyGetPosition_ENUM
  , dBodyCopyPosition_ENUM
  , dBodyGetRotation_ENUM
  , dBodyCopyRotation_ENUM
  , dBodyGetQuaternion_ENUM
  , dBodyCopyQuaternion_ENUM
  , dBodyGetLinearVel_ENUM
  , dBodyGetAngularVel_ENUM
  , dBodySetMass_ENUM
  , dBodyGetMass_ENUM
  , dBodyAddForce_ENUM
  , dBodyAddTorque_ENUM
  , dBodyAddRelForce_ENUM
  , dBodyAddRelTorque_ENUM
  , dBodyAddForceAtPos_ENUM
  , dBodyAddForceAtRelPos_ENUM
  , dBodyAddRelForceAtPos_ENUM
  , dBodyAddRelForceAtRelPos_ENUM
  , dBodyGetForce_ENUM
  , dBodyGetTorque_ENUM
  , dBodySetForce_ENUM
  , dBodySetTorque_ENUM
  , dBodyGetRelPointPos_ENUM
  , dBodyGetRelPointVel_ENUM
  , dBodyGetPointVel_ENUM
  , dBodyGetPosRelPoint_ENUM
  , dBodyVectorToWorld_ENUM
  , dBodyVectorFromWorld_ENUM
  , dBodySetFiniteRotationMode_ENUM
  , dBodySetFiniteRotationAxis_ENUM
  , dBodyGetFiniteRotationMode_ENUM
  , dBodyGetFiniteRotationAxis_ENUM
  , dBodyGetNumJoints_ENUM
  , dBodyGetJoint_ENUM
  , dBodyEnable_ENUM
  , dBodyDisable_ENUM
  , dBodyIsEnabled_ENUM
  , dBodySetGravityMode_ENUM
  , dBodyGetGravityMode_ENUM
  , dBodySetMovedCallback_ENUM
  , dBodyGetFirstGeom_ENUM
  , dBodyGetNextGeom_ENUM
  , dBodySetDampingDefaults_ENUM
  , dBodyGetLinearDamping_ENUM
  , dBodySetLinearDamping_ENUM
  , dBodyGetAngularDamping_ENUM
  , dBodySetAngularDamping_ENUM
  , dBodySetDamping_ENUM
  , dBodyGetLinearDampingThreshold_ENUM
  , dBodySetLinearDampingThreshold_ENUM
  , dBodyGetAngularDampingThreshold_ENUM
  , dBodySetAngularDampingThreshold_ENUM
  , dBodyGetMaxAngularSpeed_ENUM
  , dBodySetMaxAngularSpeed_ENUM
  , dJointCreateBall_ENUM
  , dJointCreateHinge_ENUM
  , dJointCreateSlider_ENUM
  , dJointCreateContact_ENUM
  , dJointCreateHinge2_ENUM
  , dJointCreateUniversal_ENUM
  , dJointCreatePR_ENUM
  , dJointCreatePU_ENUM
  , dJointCreatePiston_ENUM
  , dJointCreateFixed_ENUM
  , dJointCreateNull_ENUM
  , dJointCreateAMotor_ENUM
  , dJointCreateLMotor_ENUM
  , dJointCreatePlane2D_ENUM
  , dJointDestroy_ENUM
  , dJointGroupCreate_ENUM
  , dJointGroupDestroy_ENUM
  , dJointGroupEmpty_ENUM
  , dJointGetNumBodies_ENUM
  , dJointAttach_ENUM
  , dJointSetData_ENUM
  , dJointGetData_ENUM
  , dJointGetType_ENUM
  , dJointGetBody_ENUM
  , dJointSetFeedback_ENUM
  , dJointGetFeedback_ENUM
  , dJointSetBallAnchor_ENUM
  , dJointSetBallAnchor2_ENUM
  , dJointSetBallParam_ENUM
  , dJointSetHingeAnchor_ENUM
  , dJointSetHingeAnchorDelta_ENUM
  , dJointSetHingeAxis_ENUM
  , dJointSetHingeAxisOffset_ENUM
  , dJointSetHingeParam_ENUM
  , dJointAddHingeTorque_ENUM
  , dJointSetSliderAxis_ENUM
  , dJointSetSliderAxisDelta_ENUM
  , dJointSetSliderParam_ENUM
  , dJointAddSliderForce_ENUM
  , dJointSetHinge2Anchor_ENUM
  , dJointSetHinge2Axis1_ENUM
  , dJointSetHinge2Axis2_ENUM
  , dJointSetHinge2Param_ENUM
  , dJointAddHinge2Torques_ENUM
  , dJointSetUniversalAnchor_ENUM
  , dJointSetUniversalAxis1_ENUM
  , dJointSetUniversalAxis2_ENUM
  , dJointSetUniversalParam_ENUM
  , dJointAddUniversalTorques_ENUM
  , dJointSetPRAnchor_ENUM
  , dJointSetPRAxis1_ENUM
  , dJointSetPRAxis2_ENUM
  , dJointSetPRParam_ENUM
  , dJointAddPRTorque_ENUM
  , dJointSetPUAnchor_ENUM
  , dJointSetPUAnchorDelta_ENUM
  , dJointSetPUAxis1_ENUM
  , dJointSetPUAxis2_ENUM
  , dJointSetPUAxis3_ENUM
  , dJointSetPUAxisP_ENUM
  , dJointSetPUParam_ENUM
  , dJointAddPUTorque_ENUM
  , dJointSetPistonAnchor_ENUM
  , dJointSetPistonAnchorOffset_ENUM
  , dJointSetPistonAxis_ENUM
  , dJointSetPistonAxisDelta_ENUM
  , dJointSetPistonParam_ENUM
  , dJointAddPistonForce_ENUM
  , dJointSetFixed_ENUM
  , dJointSetFixedParam_ENUM
  , dJointSetAMotorNumAxes_ENUM
  , dJointSetAMotorAxis_ENUM
  , dJointSetAMotorAngle_ENUM
  , dJointSetAMotorParam_ENUM
  , dJointSetAMotorMode_ENUM
  , dJointAddAMotorTorques_ENUM
  , dJointSetLMotorNumAxes_ENUM
  , dJointSetLMotorAxis_ENUM
  , dJointSetLMotorParam_ENUM
  , dJointSetPlane2DXParam_ENUM
  , dJointSetPlane2DYParam_ENUM
  , dJointSetPlane2DAngleParam_ENUM
  , dJointGetBallAnchor_ENUM
  , dJointGetBallAnchor2_ENUM
  , dJointGetBallParam_ENUM
  , dJointGetHingeAnchor_ENUM
  , dJointGetHingeAnchor2_ENUM
  , dJointGetHingeAxis_ENUM
  , dJointGetHingeParam_ENUM
  , dJointGetHingeAngle_ENUM
  , dJointGetHingeAngleRate_ENUM
  , dJointGetSliderPosition_ENUM
  , dJointGetSliderPositionRate_ENUM
  , dJointGetSliderAxis_ENUM
  , dJointGetSliderParam_ENUM
  , dJointGetHinge2Anchor_ENUM
  , dJointGetHinge2Anchor2_ENUM
  , dJointGetHinge2Axis1_ENUM
  , dJointGetHinge2Axis2_ENUM
  , dJointGetHinge2Param_ENUM
  , dJointGetHinge2Angle1_ENUM
  , dJointGetHinge2Angle1Rate_ENUM
  , dJointGetHinge2Angle2Rate_ENUM
  , dJointGetUniversalAnchor_ENUM
  , dJointGetUniversalAnchor2_ENUM
  , dJointGetUniversalAxis1_ENUM
  , dJointGetUniversalAxis2_ENUM
  , dJointGetUniversalParam_ENUM
  , dJointGetUniversalAngles_ENUM
  , dJointGetUniversalAngle1_ENUM
  , dJointGetUniversalAngle2_ENUM
  , dJointGetUniversalAngle1Rate_ENUM
  , dJointGetUniversalAngle2Rate_ENUM
  , dJointGetPRAnchor_ENUM
  , dJointGetPRPosition_ENUM
  , dJointGetPRPositionRate_ENUM
  , dJointGetPRAxis1_ENUM
  , dJointGetPRAxis2_ENUM
  , dJointGetPRParam_ENUM
  , dJointGetPUAnchor_ENUM
  , dJointGetPUPosition_ENUM
  , dJointGetPUPositionRate_ENUM
  , dJointGetPUAxis1_ENUM
  , dJointGetPUAxis2_ENUM
  , dJointGetPUAxis3_ENUM
  , dJointGetPUAxisP_ENUM
  , dJointGetPUAngles_ENUM
  , dJointGetPUAngle1_ENUM
  , dJointGetPUAngle1Rate_ENUM
  , dJointGetPUAngle2_ENUM
  , dJointGetPUAngle2Rate_ENUM
  , dJointGetPUParam_ENUM
  , dJointGetPistonPosition_ENUM
  , dJointGetPistonPositionRate_ENUM
  , dJointGetPistonAngle_ENUM
  , dJointGetPistonAngleRate_ENUM
  , dJointGetPistonAnchor_ENUM
  , dJointGetPistonAnchor2_ENUM
  , dJointGetPistonAxis_ENUM
  , dJointGetPistonParam_ENUM
  , dJointGetAMotorNumAxes_ENUM
  , dJointGetAMotorAxis_ENUM
  , dJointGetAMotorAxisRel_ENUM
  , dJointGetAMotorAngle_ENUM
  , dJointGetAMotorAngleRate_ENUM
  , dJointGetAMotorParam_ENUM
  , dJointGetAMotorMode_ENUM
  , dJointGetLMotorNumAxes_ENUM
  , dJointGetLMotorAxis_ENUM
  , dJointGetLMotorParam_ENUM
  , dJointGetFixedParam_ENUM
  , dConnectingJoint_ENUM
  , dConnectingJointList_ENUM
  , dAreConnected_ENUM
  , dAreConnectedExcluding_ENUM
/* odecpp.h */
/* collision_space.h */
  , dSimpleSpaceCreate_ENUM
  , dHashSpaceCreate_ENUM
  , dQuadTreeSpaceCreate_ENUM
  , dSweepAndPruneSpaceCreate_ENUM
  , dSpaceDestroy_ENUM
  , dHashSpaceSetLevels_ENUM
  , dHashSpaceGetLevels_ENUM
  , dSpaceSetCleanup_ENUM
  , dSpaceGetCleanup_ENUM
  , dSpaceSetSublevel_ENUM
  , dSpaceGetSublevel_ENUM
  , dSpaceAdd_ENUM
  , dSpaceRemove_ENUM
  , dSpaceQuery_ENUM
  , dSpaceClean_ENUM
  , dSpaceGetNumGeoms_ENUM
  , dSpaceGetGeom_ENUM
  , dSpaceGetClass_ENUM
/* collision.h */
  , dGeomDestroy_ENUM
  , dGeomSetData_ENUM
  , dGeomGetData_ENUM
  , dGeomSetBody_ENUM
  , dGeomGetBody_ENUM
  , dGeomSetPosition_ENUM
  , dGeomSetRotation_ENUM
  , dGeomSetQuaternion_ENUM
  , dGeomGetPosition_ENUM
  , dGeomCopyPosition_ENUM
  , dGeomGetRotation_ENUM
  , dGeomCopyRotation_ENUM
  , dGeomGetQuaternion_ENUM
  , dGeomGetAABB_ENUM
  , dGeomIsSpace_ENUM
  , dGeomGetSpace_ENUM
  , dGeomGetClass_ENUM
  , dGeomSetCategoryBits_ENUM
  , dGeomSetCollideBits_ENUM
  , dGeomGetCategoryBits_ENUM
  , dGeomGetCollideBits_ENUM
  , dGeomEnable_ENUM
  , dGeomDisable_ENUM
  , dGeomIsEnabled_ENUM
  , dGeomSetOffsetPosition_ENUM
  , dGeomSetOffsetRotation_ENUM
  , dGeomSetOffsetQuaternion_ENUM
  , dGeomSetOffsetWorldPosition_ENUM
  , dGeomSetOffsetWorldRotation_ENUM
  , dGeomSetOffsetWorldQuaternion_ENUM
  , dGeomClearOffset_ENUM
  , dGeomIsOffset_ENUM
  , dGeomGetOffsetPosition_ENUM
  , dGeomCopyOffsetPosition_ENUM
  , dGeomGetOffsetRotation_ENUM
  , dGeomCopyOffsetRotation_ENUM
  , dGeomGetOffsetQuaternion_ENUM
  , dCollide_ENUM
  , dSpaceCollide_ENUM
  , dSpaceCollide2_ENUM
  , dCreateSphere_ENUM
  , dGeomSphereSetRadius_ENUM
  , dGeomSphereGetRadius_ENUM
  , dGeomSpherePointDepth_ENUM
  , dCreateConvex_ENUM
  , dGeomSetConvex_ENUM
  , dCreateBox_ENUM
  , dGeomBoxSetLengths_ENUM
  , dGeomBoxGetLengths_ENUM
  , dGeomBoxPointDepth_ENUM
  , dCreatePlane_ENUM
  , dGeomPlaneSetParams_ENUM
  , dGeomPlaneGetParams_ENUM
  , dGeomPlanePointDepth_ENUM
  , dCreateCapsule_ENUM
  , dGeomCapsuleSetParams_ENUM
  , dGeomCapsuleGetParams_ENUM
  , dGeomCapsulePointDepth_ENUM
  , dCreateCylinder_ENUM
  , dGeomCylinderSetParams_ENUM
  , dGeomCylinderGetParams_ENUM
  , dCreateRay_ENUM
  , dGeomRaySetLength_ENUM
  , dGeomRayGetLength_ENUM
  , dGeomRaySet_ENUM
  , dGeomRayGet_ENUM
  , dGeomRaySetParams_ENUM
  , dGeomRayGetParams_ENUM
  , dGeomRaySetClosestHit_ENUM
  , dGeomRayGetClosestHit_ENUM
  , dCreateGeomTransform_ENUM
  , dGeomTransformSetGeom_ENUM
  , dGeomTransformGetGeom_ENUM
  , dGeomTransformSetCleanup_ENUM
  , dGeomTransformGetCleanup_ENUM
  , dGeomTransformSetInfo_ENUM
  , dGeomTransformGetInfo_ENUM
  , dCreateHeightfield_ENUM
  , dGeomHeightfieldDataCreate_ENUM
  , dGeomHeightfieldDataDestroy_ENUM
  , dGeomHeightfieldDataBuildCallback_ENUM
  , dGeomHeightfieldDataBuildByte_ENUM
  , dGeomHeightfieldDataBuildShort_ENUM
  , dGeomHeightfieldDataBuildSingle_ENUM
  , dGeomHeightfieldDataBuildDouble_ENUM
  , dGeomHeightfieldDataSetBounds_ENUM
  , dGeomHeightfieldSetHeightfieldData_ENUM
  , dGeomHeightfieldGetHeightfieldData_ENUM
  , dClosestLineSegmentPoints_ENUM
  , dBoxTouchesBox_ENUM
  , dBoxBox_ENUM
  , dInfiniteAABB_ENUM
  , dCreateGeomClass_ENUM
  , dGeomGetClassData_ENUM
  , dCreateGeom_ENUM
  , dSetColliderOverride_ENUM
/* odecpp_collision.h */
/* export-dif.h */
  , dWorldExportDIF_ENUM
  , _ENUM_EXDL_DE
  };


/* odeconfig.h */
/* compatibility.h */
/* common.h */
EXDL_API(ede_getConfiguration);
EXDL_API(ede_checkConfiguration);
/* odeinit.h */
EXDL_API(ede_initODE);
EXDL_API(ede_initODE2);
EXDL_API(ede_allocateODEDataForThread);
EXDL_API(ede_cleanupODEAllDataForThread);
EXDL_API(ede_closeODE);
/* contact.h */
/* error.h */
EXDL_API(ede_setErrorHandler);
EXDL_API(ede_setDebugHandler);
EXDL_API(ede_setMessageHandler);
EXDL_API(ede_getErrorHandler);
EXDL_API(ede_getDebugHandler);
EXDL_API(ede_getMessageHandler);
EXDL_API(ede_error);
EXDL_API(ede_debug);
EXDL_API(ede_message);
/* memory.h */
EXDL_API(ede_setAllocHandler);
EXDL_API(ede_setReallocHandler);
EXDL_API(ede_setFreeHandler);
EXDL_API(ede_getAllocHandler);
EXDL_API(ede_getReallocHandler);
EXDL_API(ede_getFreeHandler);
EXDL_API(ede_alloc);
EXDL_API(ede_realloc);
EXDL_API(ede_free);
/* odemath.h */
EXDL_API(ede_safeNormalize3);
EXDL_API(ede_safeNormalize4);
EXDL_API(ede_normalize3);
EXDL_API(ede_normalize4);
EXDL_API(ede_planeSpace);
/* matrix.h */
EXDL_API(ede_setZero);
EXDL_API(ede_setValue);
EXDL_API(ede_dot);
EXDL_API(ede_multiply0);
EXDL_API(ede_multiply1);
EXDL_API(ede_multiply2);
EXDL_API(ede_factorCholesky);
EXDL_API(ede_solveCholesky);
EXDL_API(ede_invertPDMatrix);
EXDL_API(ede_isPositiveDefinite);
EXDL_API(ede_factorLDLT);
EXDL_API(ede_solveL1);
EXDL_API(ede_solveL1T);
EXDL_API(ede_vectorScale);
EXDL_API(ede_solveLDLT);
EXDL_API(ede_lDLTAddTL);
EXDL_API(ede_lDLTRemove);
EXDL_API(ede_removeRowCol);
/* timer.h */
EXDL_API(ede_stopwatchReset);
EXDL_API(ede_stopwatchStart);
EXDL_API(ede_stopwatchStop);
EXDL_API(ede_stopwatchTime);
EXDL_API(ede_timerStart);
EXDL_API(ede_timerNow);
EXDL_API(ede_timerEnd);
EXDL_API(ede_timerReport);
EXDL_API(ede_timerTicksPerSecond);
EXDL_API(ede_timerResolution);
/* rotation.h */
EXDL_API(ede_rSetIdentity);
EXDL_API(ede_rFromAxisAndAngle);
EXDL_API(ede_rFromEulerAngles);
EXDL_API(ede_rFrom2Axes);
EXDL_API(ede_rFromZAxis);
EXDL_API(ede_qSetIdentity);
EXDL_API(ede_qFromAxisAndAngle);
EXDL_API(ede_qMultiply0);
EXDL_API(ede_qMultiply1);
EXDL_API(ede_qMultiply2);
EXDL_API(ede_qMultiply3);
EXDL_API(ede_rfromQ);
EXDL_API(ede_qfromR);
EXDL_API(ede_dQfromW);
/* mass.h */
EXDL_API(ede_massCheck);
EXDL_API(ede_massSetZero);
EXDL_API(ede_massSetParameters);
EXDL_API(ede_massSetSphere);
EXDL_API(ede_massSetSphereTotal);
EXDL_API(ede_massSetCapsule);
EXDL_API(ede_massSetCapsuleTotal);
EXDL_API(ede_massSetCylinder);
EXDL_API(ede_massSetCylinderTotal);
EXDL_API(ede_massSetBox);
EXDL_API(ede_massSetBoxTotal);
EXDL_API(ede_massSetTrimesh);
EXDL_API(ede_massSetTrimeshTotal);
EXDL_API(ede_massAdjust);
EXDL_API(ede_massTranslate);
EXDL_API(ede_massRotate);
EXDL_API(ede_massAdd);
/* misc.h */
EXDL_API(ede_testRand);
EXDL_API(ede_rand);
EXDL_API(ede_randGetSeed);
EXDL_API(ede_randSetSeed);
EXDL_API(ede_randInt);
EXDL_API(ede_randReal);
EXDL_API(ede_printMatrix);
EXDL_API(ede_makeRandomVector);
EXDL_API(ede_makeRandomMatrix);
EXDL_API(ede_clearUpperTriangle);
EXDL_API(ede_maxDifference);
EXDL_API(ede_maxDifferenceLowerTriangle);
/* objects.h */
EXDL_API(ede_worldCreate);
EXDL_API(ede_worldDestroy);
EXDL_API(ede_worldSetGravity);
EXDL_API(ede_worldGetGravity);
EXDL_API(ede_worldSetERP);
EXDL_API(ede_worldGetERP);
EXDL_API(ede_worldSetCFM);
EXDL_API(ede_worldGetCFM);
EXDL_API(ede_worldStep);
EXDL_API(ede_worldImpulseToForce);
EXDL_API(ede_worldQuickStep);
EXDL_API(ede_worldSetQuickStepNumIterations);
EXDL_API(ede_worldGetQuickStepNumIterations);
EXDL_API(ede_worldSetQuickStepW);
EXDL_API(ede_worldGetQuickStepW);
EXDL_API(ede_worldSetContactMaxCorrectingVel);
EXDL_API(ede_worldGetContactMaxCorrectingVel);
EXDL_API(ede_worldSetContactSurfaceLayer);
EXDL_API(ede_worldGetContactSurfaceLayer);
EXDL_API(ede_worldStepFast1);
EXDL_API(ede_worldSetAutoEnableDepthSF1);
EXDL_API(ede_worldGetAutoEnableDepthSF1);
EXDL_API(ede_worldGetAutoDisableLinearThreshold);
EXDL_API(ede_worldSetAutoDisableLinearThreshold);
EXDL_API(ede_worldGetAutoDisableAngularThreshold);
EXDL_API(ede_worldSetAutoDisableAngularThreshold);
EXDL_API(ede_worldGetAutoDisableLinearAverageThreshold);
EXDL_API(ede_worldSetAutoDisableLinearAverageThreshold);
EXDL_API(ede_worldGetAutoDisableAngularAverageThreshold);
EXDL_API(ede_worldSetAutoDisableAngularAverageThreshold);
EXDL_API(ede_worldGetAutoDisableAverageSamplesCount);
EXDL_API(ede_worldSetAutoDisableAverageSamplesCount);
EXDL_API(ede_worldGetAutoDisableSteps);
EXDL_API(ede_worldSetAutoDisableSteps);
EXDL_API(ede_worldGetAutoDisableTime);
EXDL_API(ede_worldSetAutoDisableTime);
EXDL_API(ede_worldGetAutoDisableFlag);
EXDL_API(ede_worldSetAutoDisableFlag);
EXDL_API(ede_worldGetLinearDampingThreshold);
EXDL_API(ede_worldSetLinearDampingThreshold);
EXDL_API(ede_worldGetAngularDampingThreshold);
EXDL_API(ede_worldSetAngularDampingThreshold);
EXDL_API(ede_worldGetLinearDamping);
EXDL_API(ede_worldSetLinearDamping);
EXDL_API(ede_worldGetAngularDamping);
EXDL_API(ede_worldSetAngularDamping);
EXDL_API(ede_worldSetDamping);
EXDL_API(ede_worldGetMaxAngularSpeed);
EXDL_API(ede_worldSetMaxAngularSpeed);
EXDL_API(ede_bodyGetAutoDisableLinearThreshold);
EXDL_API(ede_bodySetAutoDisableLinearThreshold);
EXDL_API(ede_bodyGetAutoDisableAngularThreshold);
EXDL_API(ede_bodySetAutoDisableAngularThreshold);
EXDL_API(ede_bodyGetAutoDisableAverageSamplesCount);
EXDL_API(ede_bodySetAutoDisableAverageSamplesCount);
EXDL_API(ede_bodyGetAutoDisableSteps);
EXDL_API(ede_bodySetAutoDisableSteps);
EXDL_API(ede_bodyGetAutoDisableTime);
EXDL_API(ede_bodySetAutoDisableTime);
EXDL_API(ede_bodyGetAutoDisableFlag);
EXDL_API(ede_bodySetAutoDisableFlag);
EXDL_API(ede_bodySetAutoDisableDefaults);
EXDL_API(ede_bodyGetWorld);
EXDL_API(ede_bodyCreate);
EXDL_API(ede_bodyDestroy);
EXDL_API(ede_bodySetData);
EXDL_API(ede_bodyGetData);
EXDL_API(ede_bodySetPosition);
EXDL_API(ede_bodySetRotation);
EXDL_API(ede_bodySetQuaternion);
EXDL_API(ede_bodySetLinearVel);
EXDL_API(ede_bodySetAngularVel);
EXDL_API(ede_bodyGetPosition);
EXDL_API(ede_bodyCopyPosition);
EXDL_API(ede_bodyGetRotation);
EXDL_API(ede_bodyCopyRotation);
EXDL_API(ede_bodyGetQuaternion);
EXDL_API(ede_bodyCopyQuaternion);
EXDL_API(ede_bodyGetLinearVel);
EXDL_API(ede_bodyGetAngularVel);
EXDL_API(ede_bodySetMass);
EXDL_API(ede_bodyGetMass);
EXDL_API(ede_bodyAddForce);
EXDL_API(ede_bodyAddTorque);
EXDL_API(ede_bodyAddRelForce);
EXDL_API(ede_bodyAddRelTorque);
EXDL_API(ede_bodyAddForceAtPos);
EXDL_API(ede_bodyAddForceAtRelPos);
EXDL_API(ede_bodyAddRelForceAtPos);
EXDL_API(ede_bodyAddRelForceAtRelPos);
EXDL_API(ede_bodyGetForce);
EXDL_API(ede_bodyGetTorque);
EXDL_API(ede_bodySetForce);
EXDL_API(ede_bodySetTorque);
EXDL_API(ede_bodyGetRelPointPos);
EXDL_API(ede_bodyGetRelPointVel);
EXDL_API(ede_bodyGetPointVel);
EXDL_API(ede_bodyGetPosRelPoint);
EXDL_API(ede_bodyVectorToWorld);
EXDL_API(ede_bodyVectorFromWorld);
EXDL_API(ede_bodySetFiniteRotationMode);
EXDL_API(ede_bodySetFiniteRotationAxis);
EXDL_API(ede_bodyGetFiniteRotationMode);
EXDL_API(ede_bodyGetFiniteRotationAxis);
EXDL_API(ede_bodyGetNumJoints);
EXDL_API(ede_bodyGetJoint);
EXDL_API(ede_bodyEnable);
EXDL_API(ede_bodyDisable);
EXDL_API(ede_bodyIsEnabled);
EXDL_API(ede_bodySetGravityMode);
EXDL_API(ede_bodyGetGravityMode);
EXDL_API(ede_bodySetMovedCallback);
EXDL_API(ede_bodyGetFirstGeom);
EXDL_API(ede_bodyGetNextGeom);
EXDL_API(ede_bodySetDampingDefaults);
EXDL_API(ede_bodyGetLinearDamping);
EXDL_API(ede_bodySetLinearDamping);
EXDL_API(ede_bodyGetAngularDamping);
EXDL_API(ede_bodySetAngularDamping);
EXDL_API(ede_bodySetDamping);
EXDL_API(ede_bodyGetLinearDampingThreshold);
EXDL_API(ede_bodySetLinearDampingThreshold);
EXDL_API(ede_bodyGetAngularDampingThreshold);
EXDL_API(ede_bodySetAngularDampingThreshold);
EXDL_API(ede_bodyGetMaxAngularSpeed);
EXDL_API(ede_bodySetMaxAngularSpeed);
EXDL_API(ede_jointCreateBall);
EXDL_API(ede_jointCreateHinge);
EXDL_API(ede_jointCreateSlider);
EXDL_API(ede_jointCreateContact);
EXDL_API(ede_jointCreateHinge2);
EXDL_API(ede_jointCreateUniversal);
EXDL_API(ede_jointCreatePR);
EXDL_API(ede_jointCreatePU);
EXDL_API(ede_jointCreatePiston);
EXDL_API(ede_jointCreateFixed);
EXDL_API(ede_jointCreateNull);
EXDL_API(ede_jointCreateAMotor);
EXDL_API(ede_jointCreateLMotor);
EXDL_API(ede_jointCreatePlane2D);
EXDL_API(ede_jointDestroy);
EXDL_API(ede_jointGroupCreate);
EXDL_API(ede_jointGroupDestroy);
EXDL_API(ede_jointGroupEmpty);
EXDL_API(ede_jointGetNumBodies);
EXDL_API(ede_jointAttach);
EXDL_API(ede_jointSetData);
EXDL_API(ede_jointGetData);
EXDL_API(ede_jointGetType);
EXDL_API(ede_jointGetBody);
EXDL_API(ede_jointSetFeedback);
EXDL_API(ede_jointGetFeedback);
EXDL_API(ede_jointSetBallAnchor);
EXDL_API(ede_jointSetBallAnchor2);
EXDL_API(ede_jointSetBallParam);
EXDL_API(ede_jointSetHingeAnchor);
EXDL_API(ede_jointSetHingeAnchorDelta);
EXDL_API(ede_jointSetHingeAxis);
EXDL_API(ede_jointSetHingeAxisOffset);
EXDL_API(ede_jointSetHingeParam);
EXDL_API(ede_jointAddHingeTorque);
EXDL_API(ede_jointSetSliderAxis);
EXDL_API(ede_jointSetSliderAxisDelta);
EXDL_API(ede_jointSetSliderParam);
EXDL_API(ede_jointAddSliderForce);
EXDL_API(ede_jointSetHinge2Anchor);
EXDL_API(ede_jointSetHinge2Axis1);
EXDL_API(ede_jointSetHinge2Axis2);
EXDL_API(ede_jointSetHinge2Param);
EXDL_API(ede_jointAddHinge2Torques);
EXDL_API(ede_jointSetUniversalAnchor);
EXDL_API(ede_jointSetUniversalAxis1);
EXDL_API(ede_jointSetUniversalAxis2);
EXDL_API(ede_jointSetUniversalParam);
EXDL_API(ede_jointAddUniversalTorques);
EXDL_API(ede_jointSetPRAnchor);
EXDL_API(ede_jointSetPRAxis1);
EXDL_API(ede_jointSetPRAxis2);
EXDL_API(ede_jointSetPRParam);
EXDL_API(ede_jointAddPRTorque);
EXDL_API(ede_jointSetPUAnchor);
EXDL_API(ede_jointSetPUAnchorDelta);
EXDL_API(ede_jointSetPUAxis1);
EXDL_API(ede_jointSetPUAxis2);
EXDL_API(ede_jointSetPUAxis3);
EXDL_API(ede_jointSetPUAxisP);
EXDL_API(ede_jointSetPUParam);
EXDL_API(ede_jointAddPUTorque);
EXDL_API(ede_jointSetPistonAnchor);
EXDL_API(ede_jointSetPistonAnchorOffset);
EXDL_API(ede_jointSetPistonAxis);
EXDL_API(ede_jointSetPistonAxisDelta);
EXDL_API(ede_jointSetPistonParam);
EXDL_API(ede_jointAddPistonForce);
EXDL_API(ede_jointSetFixed);
EXDL_API(ede_jointSetFixedParam);
EXDL_API(ede_jointSetAMotorNumAxes);
EXDL_API(ede_jointSetAMotorAxis);
EXDL_API(ede_jointSetAMotorAngle);
EXDL_API(ede_jointSetAMotorParam);
EXDL_API(ede_jointSetAMotorMode);
EXDL_API(ede_jointAddAMotorTorques);
EXDL_API(ede_jointSetLMotorNumAxes);
EXDL_API(ede_jointSetLMotorAxis);
EXDL_API(ede_jointSetLMotorParam);
EXDL_API(ede_jointSetPlane2DXParam);
EXDL_API(ede_jointSetPlane2DYParam);
EXDL_API(ede_jointSetPlane2DAngleParam);
EXDL_API(ede_jointGetBallAnchor);
EXDL_API(ede_jointGetBallAnchor2);
EXDL_API(ede_jointGetBallParam);
EXDL_API(ede_jointGetHingeAnchor);
EXDL_API(ede_jointGetHingeAnchor2);
EXDL_API(ede_jointGetHingeAxis);
EXDL_API(ede_jointGetHingeParam);
EXDL_API(ede_jointGetHingeAngle);
EXDL_API(ede_jointGetHingeAngleRate);
EXDL_API(ede_jointGetSliderPosition);
EXDL_API(ede_jointGetSliderPositionRate);
EXDL_API(ede_jointGetSliderAxis);
EXDL_API(ede_jointGetSliderParam);
EXDL_API(ede_jointGetHinge2Anchor);
EXDL_API(ede_jointGetHinge2Anchor2);
EXDL_API(ede_jointGetHinge2Axis1);
EXDL_API(ede_jointGetHinge2Axis2);
EXDL_API(ede_jointGetHinge2Param);
EXDL_API(ede_jointGetHinge2Angle1);
EXDL_API(ede_jointGetHinge2Angle1Rate);
EXDL_API(ede_jointGetHinge2Angle2Rate);
EXDL_API(ede_jointGetUniversalAnchor);
EXDL_API(ede_jointGetUniversalAnchor2);
EXDL_API(ede_jointGetUniversalAxis1);
EXDL_API(ede_jointGetUniversalAxis2);
EXDL_API(ede_jointGetUniversalParam);
EXDL_API(ede_jointGetUniversalAngles);
EXDL_API(ede_jointGetUniversalAngle1);
EXDL_API(ede_jointGetUniversalAngle2);
EXDL_API(ede_jointGetUniversalAngle1Rate);
EXDL_API(ede_jointGetUniversalAngle2Rate);
EXDL_API(ede_jointGetPRAnchor);
EXDL_API(ede_jointGetPRPosition);
EXDL_API(ede_jointGetPRPositionRate);
EXDL_API(ede_jointGetPRAxis1);
EXDL_API(ede_jointGetPRAxis2);
EXDL_API(ede_jointGetPRParam);
EXDL_API(ede_jointGetPUAnchor);
EXDL_API(ede_jointGetPUPosition);
EXDL_API(ede_jointGetPUPositionRate);
EXDL_API(ede_jointGetPUAxis1);
EXDL_API(ede_jointGetPUAxis2);
EXDL_API(ede_jointGetPUAxis3);
EXDL_API(ede_jointGetPUAxisP);
EXDL_API(ede_jointGetPUAngles);
EXDL_API(ede_jointGetPUAngle1);
EXDL_API(ede_jointGetPUAngle1Rate);
EXDL_API(ede_jointGetPUAngle2);
EXDL_API(ede_jointGetPUAngle2Rate);
EXDL_API(ede_jointGetPUParam);
EXDL_API(ede_jointGetPistonPosition);
EXDL_API(ede_jointGetPistonPositionRate);
EXDL_API(ede_jointGetPistonAngle);
EXDL_API(ede_jointGetPistonAngleRate);
EXDL_API(ede_jointGetPistonAnchor);
EXDL_API(ede_jointGetPistonAnchor2);
EXDL_API(ede_jointGetPistonAxis);
EXDL_API(ede_jointGetPistonParam);
EXDL_API(ede_jointGetAMotorNumAxes);
EXDL_API(ede_jointGetAMotorAxis);
EXDL_API(ede_jointGetAMotorAxisRel);
EXDL_API(ede_jointGetAMotorAngle);
EXDL_API(ede_jointGetAMotorAngleRate);
EXDL_API(ede_jointGetAMotorParam);
EXDL_API(ede_jointGetAMotorMode);
EXDL_API(ede_jointGetLMotorNumAxes);
EXDL_API(ede_jointGetLMotorAxis);
EXDL_API(ede_jointGetLMotorParam);
EXDL_API(ede_jointGetFixedParam);
EXDL_API(ede_connectingJoint);
EXDL_API(ede_connectingJointList);
EXDL_API(ede_areConnected);
EXDL_API(ede_areConnectedExcluding);
/* odecpp.h */
/* collision_space.h */
EXDL_API(ede_simpleSpaceCreate);
EXDL_API(ede_hashSpaceCreate);
EXDL_API(ede_quadTreeSpaceCreate);
EXDL_API(ede_sweepAndPruneSpaceCreate);
EXDL_API(ede_spaceDestroy);
EXDL_API(ede_hashSpaceSetLevels);
EXDL_API(ede_hashSpaceGetLevels);
EXDL_API(ede_spaceSetCleanup);
EXDL_API(ede_spaceGetCleanup);
EXDL_API(ede_spaceSetSublevel);
EXDL_API(ede_spaceGetSublevel);
EXDL_API(ede_spaceAdd);
EXDL_API(ede_spaceRemove);
EXDL_API(ede_spaceQuery);
EXDL_API(ede_spaceClean);
EXDL_API(ede_spaceGetNumGeoms);
EXDL_API(ede_spaceGetGeom);
EXDL_API(ede_spaceGetClass);
/* collision.h */
EXDL_API(ede_geomDestroy);
EXDL_API(ede_geomSetData);
EXDL_API(ede_geomGetData);
EXDL_API(ede_geomSetBody);
EXDL_API(ede_geomGetBody);
EXDL_API(ede_geomSetPosition);
EXDL_API(ede_geomSetRotation);
EXDL_API(ede_geomSetQuaternion);
EXDL_API(ede_geomGetPosition);
EXDL_API(ede_geomCopyPosition);
EXDL_API(ede_geomGetRotation);
EXDL_API(ede_geomCopyRotation);
EXDL_API(ede_geomGetQuaternion);
EXDL_API(ede_geomGetAABB);
EXDL_API(ede_geomIsSpace);
EXDL_API(ede_geomGetSpace);
EXDL_API(ede_geomGetClass);
EXDL_API(ede_geomSetCategoryBits);
EXDL_API(ede_geomSetCollideBits);
EXDL_API(ede_geomGetCategoryBits);
EXDL_API(ede_geomGetCollideBits);
EXDL_API(ede_geomEnable);
EXDL_API(ede_geomDisable);
EXDL_API(ede_geomIsEnabled);
EXDL_API(ede_geomSetOffsetPosition);
EXDL_API(ede_geomSetOffsetRotation);
EXDL_API(ede_geomSetOffsetQuaternion);
EXDL_API(ede_geomSetOffsetWorldPosition);
EXDL_API(ede_geomSetOffsetWorldRotation);
EXDL_API(ede_geomSetOffsetWorldQuaternion);
EXDL_API(ede_geomClearOffset);
EXDL_API(ede_geomIsOffset);
EXDL_API(ede_geomGetOffsetPosition);
EXDL_API(ede_geomCopyOffsetPosition);
EXDL_API(ede_geomGetOffsetRotation);
EXDL_API(ede_geomCopyOffsetRotation);
EXDL_API(ede_geomGetOffsetQuaternion);
EXDL_API(ede_collide);
EXDL_API(ede_spaceCollide);
EXDL_API(ede_spaceCollide2);
EXDL_API(ede_createSphere);
EXDL_API(ede_geomSphereSetRadius);
EXDL_API(ede_geomSphereGetRadius);
EXDL_API(ede_geomSpherePointDepth);
EXDL_API(ede_createConvex);
EXDL_API(ede_geomSetConvex);
EXDL_API(ede_createBox);
EXDL_API(ede_geomBoxSetLengths);
EXDL_API(ede_geomBoxGetLengths);
EXDL_API(ede_geomBoxPointDepth);
EXDL_API(ede_createPlane);
EXDL_API(ede_geomPlaneSetParams);
EXDL_API(ede_geomPlaneGetParams);
EXDL_API(ede_geomPlanePointDepth);
EXDL_API(ede_createCapsule);
EXDL_API(ede_geomCapsuleSetParams);
EXDL_API(ede_geomCapsuleGetParams);
EXDL_API(ede_geomCapsulePointDepth);
EXDL_API(ede_createCylinder);
EXDL_API(ede_geomCylinderSetParams);
EXDL_API(ede_geomCylinderGetParams);
EXDL_API(ede_createRay);
EXDL_API(ede_geomRaySetLength);
EXDL_API(ede_geomRayGetLength);
EXDL_API(ede_geomRaySet);
EXDL_API(ede_geomRayGet);
EXDL_API(ede_geomRaySetParams);
EXDL_API(ede_geomRayGetParams);
EXDL_API(ede_geomRaySetClosestHit);
EXDL_API(ede_geomRayGetClosestHit);
EXDL_API(ede_createGeomTransform);
EXDL_API(ede_geomTransformSetGeom);
EXDL_API(ede_geomTransformGetGeom);
EXDL_API(ede_geomTransformSetCleanup);
EXDL_API(ede_geomTransformGetCleanup);
EXDL_API(ede_geomTransformSetInfo);
EXDL_API(ede_geomTransformGetInfo);
EXDL_API(ede_createHeightfield);
EXDL_API(ede_geomHeightfieldDataCreate);
EXDL_API(ede_geomHeightfieldDataDestroy);
EXDL_API(ede_geomHeightfieldDataBuildCallback);
EXDL_API(ede_geomHeightfieldDataBuildByte);
EXDL_API(ede_geomHeightfieldDataBuildShort);
EXDL_API(ede_geomHeightfieldDataBuildSingle);
EXDL_API(ede_geomHeightfieldDataBuildDouble);
EXDL_API(ede_geomHeightfieldDataSetBounds);
EXDL_API(ede_geomHeightfieldSetHeightfieldData);
EXDL_API(ede_geomHeightfieldGetHeightfieldData);
EXDL_API(ede_closestLineSegmentPoints);
EXDL_API(ede_boxTouchesBox);
EXDL_API(ede_boxBox);
EXDL_API(ede_infiniteAABB);
EXDL_API(ede_createGeomClass);
EXDL_API(ede_geomGetClassData);
EXDL_API(ede_createGeom);
EXDL_API(ede_setColliderOverride);
/* odecpp_collision.h */
/* export-dif.h */
EXDL_API(ede_worldExportDIF);

#else // COMPILE_DE
  enum { _ENUM_EXDL_DE = EXDL_DE_H };
#endif // COMPILE_DE

  #ifdef __cplusplus
  }
  #endif /* __cplusplus */
