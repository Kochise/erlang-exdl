%%
%%  Copyright (c) 2012 David Koch
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%%
%%     $Id: exdl_de.erl,v 1.5 2005/06/29 14:45:38 dgud Exp $
%%

-module(exdl_de).

-include("exdl.hrl").

-ifdef(COMPILE_DE).

%% 1- EXPORT

%-compile(export_all).

%% odeconfig.h

-export( [ %% compatibility.h

-export( [ %% common.h

-export( [ getConfiguration/0
         , checkConfiguration/1
         ]
       ).

%% odeinit.h

-export( [ initODE/0
         , initODE2/1
         , allocateODEDataForThread/1
         , cleanupODEAllDataForThread/0
         , closeODE/0
         ]
       ).

%% contact.h

-export( [ %% error.h

-export( [ setErrorHandler/1
         , setDebugHandler/1
         , setMessageHandler/1
         , getErrorHandler/0
         , getDebugHandler/0
         , getMessageHandler/0
         , error/3
         , debug/3
         , message/3
         ]
       ).

%% memory.h

-export( [ setAllocHandler/1
         , setReallocHandler/1
         , setFreeHandler/1
         , getAllocHandler/0
         , getReallocHandler/0
         , getFreeHandler/0
         , alloc/1
         , realloc/3
         , free/2
         ]
       ).

%% odemath.h

-export( [ safeNormalize3/1
         , safeNormalize4/1
         , normalize3/1
         , normalize4/1
         , planeSpace/3
         ]
       ).

%% matrix.h

-export( [ setZero/2
         , setValue/3
         , dot/3
         , multiply0/6
         , multiply1/6
         , multiply2/6
         , factorCholesky/2
         , solveCholesky/3
         , invertPDMatrix/3
         , isPositiveDefinite/2
         , factorLDLT/4
         , solveL1/4
         , solveL1T/4
         , vectorScale/3
         , solveLDLT/5
         , lDLTAddTL/5
         , lDLTRemove/8
         , removeRowCol/4
         ]
       ).

%% timer.h

-export( [ stopwatchReset/1
         , stopwatchStart/1
         , stopwatchStop/1
         , stopwatchTime/1
         , timerStart/1
         , timerNow/1
         , timerEnd/0
         , timerReport/2
         , timerTicksPerSecond/0
         , timerResolution/0
         ]
       ).

%% rotation.h

-export( [ rSetIdentity/1
         , rFromAxisAndAngle/5
         , rFromEulerAngles/4
         , rFrom2Axes/7
         , rFromZAxis/4
         , qSetIdentity/1
         , qFromAxisAndAngle/5
         , qMultiply0/3
         , qMultiply1/3
         , qMultiply2/3
         , qMultiply3/3
         , rfromQ/2
         , qfromR/2
         , dQfromW/3
         ]
       ).

%% mass.h

-export( [ massCheck/1
         , massSetZero/1
         , massSetParameters/11
         , massSetSphere/3
         , massSetSphereTotal/3
         , massSetCapsule/5
         , massSetCapsuleTotal/5
         , massSetCylinder/5
         , massSetCylinderTotal/5
         , massSetBox/5
         , massSetBoxTotal/5
         , massSetTrimesh/3
         , massSetTrimeshTotal/3
         , massAdjust/2
         , massTranslate/4
         , massRotate/2
         , massAdd/2
         ]
       ).

%% misc.h

-export( [ testRand/0
         , rand/0
         , randGetSeed/0
         , randSetSeed/1
         , randInt/1
         , randReal/0
         , printMatrix/5
         , makeRandomVector/3
         , makeRandomMatrix/4
         , clearUpperTriangle/2
         , maxDifference/4
         , maxDifferenceLowerTriangle/3
         ]
       ).

%% objects.h

-export( [ worldCreate/0
         , worldDestroy/1
         , worldSetGravity/4
         , worldGetGravity/2
         , worldSetERP/2
         , worldGetERP/1
         , worldSetCFM/2
         , worldGetCFM/1
         , worldStep/2
         , worldImpulseToForce/6
         , worldQuickStep/2
         , worldSetQuickStepNumIterations/2
         , worldGetQuickStepNumIterations/1
         , worldSetQuickStepW/2
         , worldGetQuickStepW/1
         , worldSetContactMaxCorrectingVel/2
         , worldGetContactMaxCorrectingVel/1
         , worldSetContactSurfaceLayer/2
         , worldGetContactSurfaceLayer/1
         , worldStepFast1/3
         , worldSetAutoEnableDepthSF1/2
         , worldGetAutoEnableDepthSF1/1
         , worldGetAutoDisableLinearThreshold/1
         , worldSetAutoDisableLinearThreshold/2
         , worldGetAutoDisableAngularThreshold/1
         , worldSetAutoDisableAngularThreshold/2
         , worldGetAutoDisableLinearAverageThreshold/1
         , worldSetAutoDisableLinearAverageThreshold/2
         , worldGetAutoDisableAngularAverageThreshold/1
         , worldSetAutoDisableAngularAverageThreshold/2
         , worldGetAutoDisableAverageSamplesCount/1
         , worldSetAutoDisableAverageSamplesCount/2
         , worldGetAutoDisableSteps/1
         , worldSetAutoDisableSteps/2
         , worldGetAutoDisableTime/1
         , worldSetAutoDisableTime/2
         , worldGetAutoDisableFlag/1
         , worldSetAutoDisableFlag/2
         , worldGetLinearDampingThreshold/1
         , worldSetLinearDampingThreshold/2
         , worldGetAngularDampingThreshold/1
         , worldSetAngularDampingThreshold/2
         , worldGetLinearDamping/1
         , worldSetLinearDamping/2
         , worldGetAngularDamping/1
         , worldSetAngularDamping/2
         , worldSetDamping/3
         , worldGetMaxAngularSpeed/1
         , worldSetMaxAngularSpeed/2
         , bodyGetAutoDisableLinearThreshold/1
         , bodySetAutoDisableLinearThreshold/2
         , bodyGetAutoDisableAngularThreshold/1
         , bodySetAutoDisableAngularThreshold/2
         , bodyGetAutoDisableAverageSamplesCount/1
         , bodySetAutoDisableAverageSamplesCount/2
         , bodyGetAutoDisableSteps/1
         , bodySetAutoDisableSteps/2
         , bodyGetAutoDisableTime/1
         , bodySetAutoDisableTime/2
         , bodyGetAutoDisableFlag/1
         , bodySetAutoDisableFlag/2
         , bodySetAutoDisableDefaults/1
         , bodyGetWorld/1
         , bodyCreate/1
         , bodyDestroy/1
         , bodySetData/2
         , bodyGetData/1
         , bodySetPosition/4
         , bodySetRotation/2
         , bodySetQuaternion/2
         , bodySetLinearVel/4
         , bodySetAngularVel/4
         , bodyGetPosition/1
         , bodyCopyPosition/2
         , bodyGetRotation/1
         , bodyCopyRotation/2
         , bodyGetQuaternion/1
         , bodyCopyQuaternion/2
         , bodyGetLinearVel/1
         , bodyGetAngularVel/1
         , bodySetMass/2
         , bodyGetMass/1
         , bodyAddForce/4
         , bodyAddTorque/4
         , bodyAddRelForce/4
         , bodyAddRelTorque/4
         , bodyAddForceAtPos/7
         , bodyAddForceAtRelPos/7
         , bodyAddRelForceAtPos/7
         , bodyAddRelForceAtRelPos/7
         , bodyGetForce/1
         , bodyGetTorque/1
         , bodySetForce/4
         , bodySetTorque/4
         , bodyGetRelPointPos/5
         , bodyGetRelPointVel/5
         , bodyGetPointVel/5
         , bodyGetPosRelPoint/5
         , bodyVectorToWorld/5
         , bodyVectorFromWorld/5
         , bodySetFiniteRotationMode/2
         , bodySetFiniteRotationAxis/4
         , bodyGetFiniteRotationMode/1
         , bodyGetFiniteRotationAxis/2
         , bodyGetNumJoints/1
         , bodyGetJoint/2
         , bodyEnable/1
         , bodyDisable/1
         , bodyIsEnabled/1
         , bodySetGravityMode/2
         , bodyGetGravityMode/1
         , bodySetMovedCallback/2
         , bodyGetFirstGeom/1
         , bodyGetNextGeom/1
         , bodySetDampingDefaults/1
         , bodyGetLinearDamping/1
         , bodySetLinearDamping/2
         , bodyGetAngularDamping/1
         , bodySetAngularDamping/2
         , bodySetDamping/3
         , bodyGetLinearDampingThreshold/1
         , bodySetLinearDampingThreshold/2
         , bodyGetAngularDampingThreshold/1
         , bodySetAngularDampingThreshold/2
         , bodyGetMaxAngularSpeed/1
         , bodySetMaxAngularSpeed/2
         , jointCreateBall/2
         , jointCreateHinge/2
         , jointCreateSlider/2
         , jointCreateContact/3
         , jointCreateHinge2/2
         , jointCreateUniversal/2
         , jointCreatePR/2
         , jointCreatePU/2
         , jointCreatePiston/2
         , jointCreateFixed/2
         , jointCreateNull/2
         , jointCreateAMotor/2
         , jointCreateLMotor/2
         , jointCreatePlane2D/2
         , jointDestroy/1
         , jointGroupCreate/1
         , jointGroupDestroy/1
         , jointGroupEmpty/1
         , jointGetNumBodies/1
         , jointAttach/3
         , jointSetData/2
         , jointGetData/1
         , jointGetType/1
         , jointGetBody/2
         , jointSetFeedback/2
         , jointGetFeedback/1
         , jointSetBallAnchor/4
         , jointSetBallAnchor2/4
         , jointSetBallParam/3
         , jointSetHingeAnchor/4
         , jointSetHingeAnchorDelta/7
         , jointSetHingeAxis/4
         , jointSetHingeAxisOffset/5
         , jointSetHingeParam/3
         , jointAddHingeTorque/2
         , jointSetSliderAxis/4
         , jointSetSliderAxisDelta/7
         , jointSetSliderParam/3
         , jointAddSliderForce/2
         , jointSetHinge2Anchor/4
         , jointSetHinge2Axis1/4
         , jointSetHinge2Axis2/4
         , jointSetHinge2Param/3
         , jointAddHinge2Torques/3
         , jointSetUniversalAnchor/4
         , jointSetUniversalAxis1/4
         , jointSetUniversalAxis2/4
         , jointSetUniversalParam/3
         , jointAddUniversalTorques/3
         , jointSetPRAnchor/4
         , jointSetPRAxis1/4
         , jointSetPRAxis2/4
         , jointSetPRParam/3
         , jointAddPRTorque/2
         , jointSetPUAnchor/4
         , jointSetPUAnchorDelta/7
         , jointSetPUAxis1/4
         , jointSetPUAxis2/4
         , jointSetPUAxis3/4
         , jointSetPUAxisP/4
         , jointSetPUParam/3
         , jointAddPUTorque/2
         , jointSetPistonAnchor/4
         , jointSetPistonAnchorOffset/7
         , jointSetPistonAxis/4
         , jointSetPistonAxisDelta/7
         , jointSetPistonParam/3
         , jointAddPistonForce/2
         , jointSetFixed/1
         , jointSetFixedParam/3
         , jointSetAMotorNumAxes/2
         , jointSetAMotorAxis/6
         , jointSetAMotorAngle/3
         , jointSetAMotorParam/3
         , jointSetAMotorMode/2
         , jointAddAMotorTorques/4
         , jointSetLMotorNumAxes/2
         , jointSetLMotorAxis/6
         , jointSetLMotorParam/3
         , jointSetPlane2DXParam/3
         , jointSetPlane2DYParam/3
         , jointSetPlane2DAngleParam/3
         , jointGetBallAnchor/2
         , jointGetBallAnchor2/2
         , jointGetBallParam/2
         , jointGetHingeAnchor/2
         , jointGetHingeAnchor2/2
         , jointGetHingeAxis/2
         , jointGetHingeParam/2
         , jointGetHingeAngle/1
         , jointGetHingeAngleRate/1
         , jointGetSliderPosition/1
         , jointGetSliderPositionRate/1
         , jointGetSliderAxis/2
         , jointGetSliderParam/2
         , jointGetHinge2Anchor/2
         , jointGetHinge2Anchor2/2
         , jointGetHinge2Axis1/2
         , jointGetHinge2Axis2/2
         , jointGetHinge2Param/2
         , jointGetHinge2Angle1/1
         , jointGetHinge2Angle1Rate/1
         , jointGetHinge2Angle2Rate/1
         , jointGetUniversalAnchor/2
         , jointGetUniversalAnchor2/2
         , jointGetUniversalAxis1/2
         , jointGetUniversalAxis2/2
         , jointGetUniversalParam/2
         , jointGetUniversalAngles/1
         , jointGetUniversalAngle1/1
         , jointGetUniversalAngle2/1
         , jointGetUniversalAngle1Rate/1
         , jointGetUniversalAngle2Rate/1
         , jointGetPRAnchor/2
         , jointGetPRPosition/1
         , jointGetPRPositionRate/1
         , jointGetPRAxis1/2
         , jointGetPRAxis2/2
         , jointGetPRParam/2
         , jointGetPUAnchor/2
         , jointGetPUPosition/1
         , jointGetPUPositionRate/1
         , jointGetPUAxis1/2
         , jointGetPUAxis2/2
         , jointGetPUAxis3/2
         , jointGetPUAxisP/2
         , jointGetPUAngles/1
         , jointGetPUAngle1/1
         , jointGetPUAngle1Rate/1
         , jointGetPUAngle2/1
         , jointGetPUAngle2Rate/1
         , jointGetPUParam/2
         , jointGetPistonPosition/1
         , jointGetPistonPositionRate/1
         , jointGetPistonAngle/1
         , jointGetPistonAngleRate/1
         , jointGetPistonAnchor/2
         , jointGetPistonAnchor2/2
         , jointGetPistonAxis/2
         , jointGetPistonParam/2
         , jointGetAMotorNumAxes/1
         , jointGetAMotorAxis/3
         , jointGetAMotorAxisRel/2
         , jointGetAMotorAngle/2
         , jointGetAMotorAngleRate/2
         , jointGetAMotorParam/2
         , jointGetAMotorMode/1
         , jointGetLMotorNumAxes/1
         , jointGetLMotorAxis/3
         , jointGetLMotorParam/2
         , jointGetFixedParam/2
         , connectingJoint/2
         , connectingJointList/3
         , areConnected/2
         , areConnectedExcluding/3
         ]
       ).

%% odecpp.h

-export( [ %% collision_space.h

-export( [ simpleSpaceCreate/1
         , hashSpaceCreate/1
         , quadTreeSpaceCreate/4
         , sweepAndPruneSpaceCreate/2
         , spaceDestroy/1
         , hashSpaceSetLevels/3
         , hashSpaceGetLevels/1
         , spaceSetCleanup/2
         , spaceGetCleanup/1
         , spaceSetSublevel/2
         , spaceGetSublevel/1
         , spaceAdd/2
         , spaceRemove/2
         , spaceQuery/2
         , spaceClean/1
         , spaceGetNumGeoms/1
         , spaceGetGeom/2
         , spaceGetClass/1
         ]
       ).

%% collision.h

-export( [ geomDestroy/1
         , geomSetData/2
         , geomGetData/1
         , geomSetBody/2
         , geomGetBody/1
         , geomSetPosition/4
         , geomSetRotation/2
         , geomSetQuaternion/2
         , geomGetPosition/1
         , geomCopyPosition/2
         , geomGetRotation/1
         , geomCopyRotation/2
         , geomGetQuaternion/2
         , geomGetAABB/2
         , geomIsSpace/1
         , geomGetSpace/1
         , geomGetClass/1
         , geomSetCategoryBits/2
         , geomSetCollideBits/2
         , geomGetCategoryBits/1
         , geomGetCollideBits/1
         , geomEnable/1
         , geomDisable/1
         , geomIsEnabled/1
         , geomSetOffsetPosition/4
         , geomSetOffsetRotation/2
         , geomSetOffsetQuaternion/2
         , geomSetOffsetWorldPosition/4
         , geomSetOffsetWorldRotation/2
         , geomSetOffsetWorldQuaternion/2
         , geomClearOffset/1
         , geomIsOffset/1
         , geomGetOffsetPosition/1
         , geomCopyOffsetPosition/2
         , geomGetOffsetRotation/1
         , geomCopyOffsetRotation/2
         , geomGetOffsetQuaternion/2
         , collide/5
         , spaceCollide/3
         , spaceCollide2/4
         , createSphere/2
         , geomSphereSetRadius/2
         , geomSphereGetRadius/1
         , geomSpherePointDepth/4
         , createConvex/6
         , geomSetConvex/6
         , createBox/4
         , geomBoxSetLengths/4
         , geomBoxGetLengths/2
         , geomBoxPointDepth/4
         , createPlane/5
         , geomPlaneSetParams/5
         , geomPlaneGetParams/2
         , geomPlanePointDepth/4
         , createCapsule/3
         , geomCapsuleSetParams/3
         , geomCapsuleGetParams/1
         , geomCapsulePointDepth/4
         , createCylinder/3
         , geomCylinderSetParams/3
         , geomCylinderGetParams/1
         , createRay/2
         , geomRaySetLength/2
         , geomRayGetLength/1
         , geomRaySet/7
         , geomRayGet/3
         , geomRaySetParams/3
         , geomRayGetParams/1
         , geomRaySetClosestHit/2
         , geomRayGetClosestHit/1
         , createGeomTransform/1
         , geomTransformSetGeom/2
         , geomTransformGetGeom/1
         , geomTransformSetCleanup/2
         , geomTransformGetCleanup/1
         , geomTransformSetInfo/2
         , geomTransformGetInfo/1
         , createHeightfield/3
         , geomHeightfieldDataCreate/0
         , geomHeightfieldDataDestroy/1
         , geomHeightfieldDataBuildCallback/11
         , geomHeightfieldDataBuildByte/11
         , geomHeightfieldDataBuildShort/11
         , geomHeightfieldDataBuildSingle/11
         , geomHeightfieldDataBuildDouble/11
         , geomHeightfieldDataSetBounds/3
         , geomHeightfieldSetHeightfieldData/2
         , geomHeightfieldGetHeightfieldData/1
         , closestLineSegmentPoints/6
         , boxTouchesBox/6
         , boxBox/12
         , infiniteAABB/2
         , createGeomClass/1
         , geomGetClassData/1
         , createGeom/1
         , setColliderOverride/3
         ]
       ).

%% odecpp_collision.h

-export( [ %% export-dif.h

-export( [ worldExportDIF/3
         ]
       ).

%% 2- INCLUDE

-include("exdl_de.hrl").

%% 3- IMPORT

-import( exdl_driver
       , [ call/2
         , cast/2
         ]
       ).

%% 4- FUNCTIONS

%% odeconfig.h

%% compatibility.h

%% common.h

%% Func:       getConfiguration
%% Args:       none
%% Returns:    Exdl
%% C-API func: const char* dGetConfiguration(void)

getConfiguration()
 -> case
      call
      ( ?dGetConfiguration
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?String
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       checkConfiguration
%% Args:       Token
%% Returns:    Exdl
%% C-API func: int dCheckConfiguration(const char* token)

checkConfiguration(Token)
 -> case
      call
      ( ?dCheckConfiguration
      , <<Token:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% odeinit.h

%% Func:       initODE
%% Args:       none
%% Returns:    ok
%% C-API func: void dInitODE(void)

initODE()
 -> cast
    ( ?dInitODE
    , [
      ]
    )
.

%% Func:       initODE2
%% Args:       UiInitFlags
%% Returns:    Exdl
%% C-API func: int dInitODE2(unsigned int uiInitFlags)

initODE2(UiInitFlags)
 -> case
      call
      ( ?dInitODE2
      , <<UiInitFlags:?Uint
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       allocateODEDataForThread
%% Args:       UiAllocateFlags
%% Returns:    Exdl
%% C-API func: int dAllocateODEDataForThread(unsigned int uiAllocateFlags)

allocateODEDataForThread(UiAllocateFlags)
 -> case
      call
      ( ?dAllocateODEDataForThread
      , <<UiAllocateFlags:?Uint
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       cleanupODEAllDataForThread
%% Args:       none
%% Returns:    ok
%% C-API func: void dCleanupODEAllDataForThread()

cleanupODEAllDataForThread()
 -> cast
    ( ?dCleanupODEAllDataForThread
    , [
      ]
    )
.

%% Func:       closeODE
%% Args:       none
%% Returns:    ok
%% C-API func: void dCloseODE(void)

closeODE()
 -> cast
    ( ?dCloseODE
    , [
      ]
    )
.

%% contact.h

%% error.h

%% Func:       setErrorHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetErrorHandler(dMessageFunction* fn)

setErrorHandler(Fn)
 -> cast
    ( ?dSetErrorHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       setDebugHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetDebugHandler(dMessageFunction* fn)

setDebugHandler(Fn)
 -> cast
    ( ?dSetDebugHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       setMessageHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetMessageHandler(dMessageFunction* fn)

setMessageHandler(Fn)
 -> cast
    ( ?dSetMessageHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       getErrorHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dMessageFunction* dGetErrorHandler(void)

getErrorHandler()
 -> case
      call
      ( ?dGetErrorHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getDebugHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dMessageFunction* dGetDebugHandler(void)

getDebugHandler()
 -> case
      call
      ( ?dGetDebugHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getMessageHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dMessageFunction* dGetMessageHandler(void)

getMessageHandler()
 -> case
      call
      ( ?dGetMessageHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       error
%% Args:       ..
%% Returns:    ok
%% C-API func: void dError(int num, const char* msg, ...)

error(..)
 -> cast
    ( ?dError
    , <<Num:?Int
      , Msg:?_PTR
      , ..:?_PTR
      >>
    )
.

%% Func:       debug
%% Args:       ..
%% Returns:    ok
%% C-API func: void dDebug(int num, const char* msg, ...)

debug(..)
 -> cast
    ( ?dDebug
    , <<Num:?Int
      , Msg:?_PTR
      , ..:?_PTR
      >>
    )
.

%% Func:       message
%% Args:       ..
%% Returns:    ok
%% C-API func: void dMessage(int num, const char* msg, ...)

message(..)
 -> cast
    ( ?dMessage
    , <<Num:?Int
      , Msg:?_PTR
      , ..:?_PTR
      >>
    )
.

%% memory.h

%% Func:       setAllocHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetAllocHandler(dAllocFunction* fn)

setAllocHandler(Fn)
 -> cast
    ( ?dSetAllocHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       setReallocHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetReallocHandler(dReallocFunction* fn)

setReallocHandler(Fn)
 -> cast
    ( ?dSetReallocHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       setFreeHandler
%% Args:       Fn
%% Returns:    ok
%% C-API func: void dSetFreeHandler(dFreeFunction* fn)

setFreeHandler(Fn)
 -> cast
    ( ?dSetFreeHandler
    , <<Fn:?_PTR
      >>
    )
.

%% Func:       getAllocHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dAllocFunction* dGetAllocHandler(void)

getAllocHandler()
 -> case
      call
      ( ?dGetAllocHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getReallocHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dReallocFunction* dGetReallocHandler(void)

getReallocHandler()
 -> case
      call
      ( ?dGetReallocHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       getFreeHandler
%% Args:       none
%% Returns:    Exdl
%% C-API func: dFreeFunction* dGetFreeHandler(void)

getFreeHandler()
 -> case
      call
      ( ?dGetFreeHandler
      , [
        ]
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       alloc
%% Args:       Size
%% Returns:    Exdl
%% C-API func: void* dAlloc(size_t size)

alloc(Size)
 -> case
      call
      ( ?dAlloc
      , <<Size:?Size_t
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       realloc
%% Args:       Ptr, Oldsize, Newsize
%% Returns:    Exdl
%% C-API func: void* dRealloc(void* ptr, size_t oldsize, size_t newsize)

realloc(Ptr, Oldsize, Newsize)
 -> case
      call
      ( ?dRealloc
      , <<Ptr:?_PTR
        , Oldsize:?Size_t
        , Newsize:?Size_t
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       free
%% Args:       Ptr, Size
%% Returns:    ok
%% C-API func: void dFree(void* ptr, size_t size)

free(Ptr, Size)
 -> cast
    ( ?dFree
    , <<Ptr:?_PTR
      , Size:?Size_t
      >>
    )
.

%% odemath.h

%% Func:       safeNormalize3
%% Args:       A
%% Returns:    Exdl
%% C-API func: int dSafeNormalize3(dVector3 a)

safeNormalize3(A)
 -> case
      call
      ( ?dSafeNormalize3
      , <<A:?DVector3
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       safeNormalize4
%% Args:       A
%% Returns:    Exdl
%% C-API func: int dSafeNormalize4(dVector4 a)

safeNormalize4(A)
 -> case
      call
      ( ?dSafeNormalize4
      , <<A:?DVector4
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       normalize3
%% Args:       A
%% Returns:    ok
%% C-API func: void dNormalize3(dVector3 a)

normalize3(A)
 -> cast
    ( ?dNormalize3
    , <<A:?DVector3
      >>
    )
.

%% Func:       normalize4
%% Args:       A
%% Returns:    ok
%% C-API func: void dNormalize4(dVector4 a)

normalize4(A)
 -> cast
    ( ?dNormalize4
    , <<A:?DVector4
      >>
    )
.

%% Func:       planeSpace
%% Args:       N, P, Q
%% Returns:    ok
%% C-API func: void dPlaneSpace(const dVector3 n, dVector3 p, dVector3 q)

planeSpace(N, P, Q)
 -> cast
    ( ?dPlaneSpace
    , <<N:?DVector3
      , P:?DVector3
      , Q:?DVector3
      >>
    )
.

%% matrix.h

%% Func:       setZero
%% Args:       A, N
%% Returns:    ok
%% C-API func: void dSetZero(dReal* a, int n)

setZero(A, N)
 -> cast
    ( ?dSetZero
    , <<A:?_PTR
      , N:?Int
      >>
    )
.

%% Func:       setValue
%% Args:       A, N, Value
%% Returns:    ok
%% C-API func: void dSetValue(dReal* a, int n, dReal value)

setValue(A, N, Value)
 -> cast
    ( ?dSetValue
    , <<A:?_PTR
      , N:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       dot
%% Args:       A, B, N
%% Returns:    Exdl
%% C-API func: dReal dDot(const dReal* a, const dReal* b, int n)

dot(A, B, N)
 -> case
      call
      ( ?dDot
      , <<A:?_PTR
        , B:?_PTR
        , N:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       multiply0
%% Args:       A, B, C, P, Q, R
%% Returns:    ok
%% C-API func: void dMultiply0(dReal* A, const dReal* B, const dReal* C, int p, int q, int r)

multiply0(A, B, C, P, Q, R)
 -> cast
    ( ?dMultiply0
    , <<A:?_PTR
      , B:?_PTR
      , C:?_PTR
      , P:?Int
      , Q:?Int
      , R:?Int
      >>
    )
.

%% Func:       multiply1
%% Args:       A, B, C, P, Q, R
%% Returns:    ok
%% C-API func: void dMultiply1(dReal* A, const dReal* B, const dReal* C, int p, int q, int r)

multiply1(A, B, C, P, Q, R)
 -> cast
    ( ?dMultiply1
    , <<A:?_PTR
      , B:?_PTR
      , C:?_PTR
      , P:?Int
      , Q:?Int
      , R:?Int
      >>
    )
.

%% Func:       multiply2
%% Args:       A, B, C, P, Q, R
%% Returns:    ok
%% C-API func: void dMultiply2(dReal* A, const dReal* B, const dReal* C, int p, int q, int r)

multiply2(A, B, C, P, Q, R)
 -> cast
    ( ?dMultiply2
    , <<A:?_PTR
      , B:?_PTR
      , C:?_PTR
      , P:?Int
      , Q:?Int
      , R:?Int
      >>
    )
.

%% Func:       factorCholesky
%% Args:       A, N
%% Returns:    Exdl
%% C-API func: int dFactorCholesky(dReal* A, int n)

factorCholesky(A, N)
 -> case
      call
      ( ?dFactorCholesky
      , <<A:?_PTR
        , N:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       solveCholesky
%% Args:       L, B, N
%% Returns:    ok
%% C-API func: void dSolveCholesky(const dReal* L, dReal* b, int n)

solveCholesky(L, B, N)
 -> cast
    ( ?dSolveCholesky
    , <<L:?_PTR
      , B:?_PTR
      , N:?Int
      >>
    )
.

%% Func:       invertPDMatrix
%% Args:       A, Ainv, N
%% Returns:    Exdl
%% C-API func: int dInvertPDMatrix(const dReal* A, dReal* Ainv, int n)

invertPDMatrix(A, Ainv, N)
 -> case
      call
      ( ?dInvertPDMatrix
      , <<A:?_PTR
        , Ainv:?_PTR
        , N:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       isPositiveDefinite
%% Args:       A, N
%% Returns:    Exdl
%% C-API func: int dIsPositiveDefinite(const dReal* A, int n)

isPositiveDefinite(A, N)
 -> case
      call
      ( ?dIsPositiveDefinite
      , <<A:?_PTR
        , N:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       factorLDLT
%% Args:       A, D, N, Nskip
%% Returns:    ok
%% C-API func: void dFactorLDLT(dReal* A, dReal* d, int n, int nskip)

factorLDLT(A, D, N, Nskip)
 -> cast
    ( ?dFactorLDLT
    , <<A:?_PTR
      , D:?_PTR
      , N:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       solveL1
%% Args:       L, B, N, Nskip
%% Returns:    ok
%% C-API func: void dSolveL1(const dReal* L, dReal* b, int n, int nskip)

solveL1(L, B, N, Nskip)
 -> cast
    ( ?dSolveL1
    , <<L:?_PTR
      , B:?_PTR
      , N:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       solveL1T
%% Args:       L, B, N, Nskip
%% Returns:    ok
%% C-API func: void dSolveL1T(const dReal* L, dReal* b, int n, int nskip)

solveL1T(L, B, N, Nskip)
 -> cast
    ( ?dSolveL1T
    , <<L:?_PTR
      , B:?_PTR
      , N:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       vectorScale
%% Args:       A, D, N
%% Returns:    ok
%% C-API func: void dVectorScale(dReal* a, const dReal* d, int n)

vectorScale(A, D, N)
 -> cast
    ( ?dVectorScale
    , <<A:?_PTR
      , D:?_PTR
      , N:?Int
      >>
    )
.

%% Func:       solveLDLT
%% Args:       L, D, B, N, Nskip
%% Returns:    ok
%% C-API func: void dSolveLDLT(const dReal* L, const dReal* d, dReal* b, int n, int nskip)

solveLDLT(L, D, B, N, Nskip)
 -> cast
    ( ?dSolveLDLT
    , <<L:?_PTR
      , D:?_PTR
      , B:?_PTR
      , N:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       lDLTAddTL
%% Args:       L, D, A, N, Nskip
%% Returns:    ok
%% C-API func: void dLDLTAddTL(dReal* L, dReal* d, const dReal* a, int n, int nskip)

lDLTAddTL(L, D, A, N, Nskip)
 -> cast
    ( ?dLDLTAddTL
    , <<L:?_PTR
      , D:?_PTR
      , A:?_PTR
      , N:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       lDLTRemove
%% Args:       A, P, L, D, N1, N2, R, Nskip
%% Returns:    ok
%% C-API func: void dLDLTRemove(dReal** A, const int* p, dReal* L, dReal* d, int n1, int n2, int r, int nskip)

lDLTRemove(A, P, L, D, N1, N2, R, Nskip)
 -> cast
    ( ?dLDLTRemove
    , <<A:?_PTR
      , P:?_PTR
      , L:?_PTR
      , D:?_PTR
      , N1:?Int
      , N2:?Int
      , R:?Int
      , Nskip:?Int
      >>
    )
.

%% Func:       removeRowCol
%% Args:       A, N, Nskip, R
%% Returns:    ok
%% C-API func: void dRemoveRowCol(dReal* A, int n, int nskip, int r)

removeRowCol(A, N, Nskip, R)
 -> cast
    ( ?dRemoveRowCol
    , <<A:?_PTR
      , N:?Int
      , Nskip:?Int
      , R:?Int
      >>
    )
.

%% timer.h

%% Func:       stopwatchReset
%% Args:       S
%% Returns:    ok
%% C-API func: void dStopwatchReset(dStopwatch* s)

stopwatchReset(S)
 -> cast
    ( ?dStopwatchReset
    , <<S:?_PTR
      >>
    )
.

%% Func:       stopwatchStart
%% Args:       S
%% Returns:    ok
%% C-API func: void dStopwatchStart(dStopwatch* s)

stopwatchStart(S)
 -> cast
    ( ?dStopwatchStart
    , <<S:?_PTR
      >>
    )
.

%% Func:       stopwatchStop
%% Args:       S
%% Returns:    ok
%% C-API func: void dStopwatchStop(dStopwatch* s)

stopwatchStop(S)
 -> cast
    ( ?dStopwatchStop
    , <<S:?_PTR
      >>
    )
.

%% Func:       stopwatchTime
%% Args:       S
%% Returns:    Exdl
%% C-API func: double dStopwatchTime(dStopwatch* s)

stopwatchTime(S)
 -> case
      call
      ( ?dStopwatchTime
      , <<S:?_PTR
        >>
      )
    of
      <<Exdl:?Double
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       timerStart
%% Args:       Description
%% Returns:    ok
%% C-API func: void dTimerStart(const char* description)

timerStart(Description)
 -> cast
    ( ?dTimerStart
    , <<Description:?_PTR
      >>
    )
.

%% Func:       timerNow
%% Args:       Description
%% Returns:    ok
%% C-API func: void dTimerNow(const char* description)

timerNow(Description)
 -> cast
    ( ?dTimerNow
    , <<Description:?_PTR
      >>
    )
.

%% Func:       timerEnd
%% Args:       none
%% Returns:    ok
%% C-API func: void dTimerEnd(void)

timerEnd()
 -> cast
    ( ?dTimerEnd
    , [
      ]
    )
.

%% Func:       timerReport
%% Args:       Fout, Average
%% Returns:    ok
%% C-API func: void dTimerReport(FILE* fout, int average)

timerReport(Fout, Average)
 -> cast
    ( ?dTimerReport
    , <<Fout:?_PTR
      , Average:?Int
      >>
    )
.

%% Func:       timerTicksPerSecond
%% Args:       none
%% Returns:    Exdl
%% C-API func: double dTimerTicksPerSecond(void)

timerTicksPerSecond()
 -> case
      call
      ( ?dTimerTicksPerSecond
      , [
        ]
      )
    of
      <<Exdl:?Double
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       timerResolution
%% Args:       none
%% Returns:    Exdl
%% C-API func: double dTimerResolution(void)

timerResolution()
 -> case
      call
      ( ?dTimerResolution
      , [
        ]
      )
    of
      <<Exdl:?Double
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% rotation.h

%% Func:       rSetIdentity
%% Args:       R
%% Returns:    ok
%% C-API func: void dRSetIdentity(dMatrix3 R)

rSetIdentity(R)
 -> cast
    ( ?dRSetIdentity
    , <<R:?DMatrix3
      >>
    )
.

%% Func:       rFromAxisAndAngle
%% Args:       R, Ax, Ay, Az, Angle
%% Returns:    ok
%% C-API func: void dRFromAxisAndAngle(dMatrix3 R, dReal ax, dReal ay, dReal az, dReal angle)

rFromAxisAndAngle(R, Ax, Ay, Az, Angle)
 -> cast
    ( ?dRFromAxisAndAngle
    , <<R:?DMatrix3
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      , Angle:?DReal
      >>
    )
.

%% Func:       rFromEulerAngles
%% Args:       R, Phi, Theta, Psi
%% Returns:    ok
%% C-API func: void dRFromEulerAngles(dMatrix3 R, dReal phi, dReal theta, dReal psi)

rFromEulerAngles(R, Phi, Theta, Psi)
 -> cast
    ( ?dRFromEulerAngles
    , <<R:?DMatrix3
      , Phi:?DReal
      , Theta:?DReal
      , Psi:?DReal
      >>
    )
.

%% Func:       rFrom2Axes
%% Args:       R, Ax, Ay, Az, Bx, By, Bz
%% Returns:    ok
%% C-API func: void dRFrom2Axes(dMatrix3 R, dReal ax, dReal ay, dReal az, dReal bx, dReal by, dReal bz)

rFrom2Axes(R, Ax, Ay, Az, Bx, By, Bz)
 -> cast
    ( ?dRFrom2Axes
    , <<R:?DMatrix3
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      , Bx:?DReal
      , By:?DReal
      , Bz:?DReal
      >>
    )
.

%% Func:       rFromZAxis
%% Args:       R, Ax, Ay, Az
%% Returns:    ok
%% C-API func: void dRFromZAxis(dMatrix3 R, dReal ax, dReal ay, dReal az)

rFromZAxis(R, Ax, Ay, Az)
 -> cast
    ( ?dRFromZAxis
    , <<R:?DMatrix3
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      >>
    )
.

%% Func:       qSetIdentity
%% Args:       Q
%% Returns:    ok
%% C-API func: void dQSetIdentity(dQuaternion q)

qSetIdentity(Q)
 -> cast
    ( ?dQSetIdentity
    , <<Q:?DQuaternion
      >>
    )
.

%% Func:       qFromAxisAndAngle
%% Args:       Q, Ax, Ay, Az, Angle
%% Returns:    ok
%% C-API func: void dQFromAxisAndAngle(dQuaternion q, dReal ax, dReal ay, dReal az, dReal angle)

qFromAxisAndAngle(Q, Ax, Ay, Az, Angle)
 -> cast
    ( ?dQFromAxisAndAngle
    , <<Q:?DQuaternion
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      , Angle:?DReal
      >>
    )
.

%% Func:       qMultiply0
%% Args:       Qa, Qb, Qc
%% Returns:    ok
%% C-API func: void dQMultiply0(dQuaternion qa, const dQuaternion qb, const dQuaternion qc)

qMultiply0(Qa, Qb, Qc)
 -> cast
    ( ?dQMultiply0
    , <<Qa:?DQuaternion
      , Qb:?DQuaternion
      , Qc:?DQuaternion
      >>
    )
.

%% Func:       qMultiply1
%% Args:       Qa, Qb, Qc
%% Returns:    ok
%% C-API func: void dQMultiply1(dQuaternion qa, const dQuaternion qb, const dQuaternion qc)

qMultiply1(Qa, Qb, Qc)
 -> cast
    ( ?dQMultiply1
    , <<Qa:?DQuaternion
      , Qb:?DQuaternion
      , Qc:?DQuaternion
      >>
    )
.

%% Func:       qMultiply2
%% Args:       Qa, Qb, Qc
%% Returns:    ok
%% C-API func: void dQMultiply2(dQuaternion qa, const dQuaternion qb, const dQuaternion qc)

qMultiply2(Qa, Qb, Qc)
 -> cast
    ( ?dQMultiply2
    , <<Qa:?DQuaternion
      , Qb:?DQuaternion
      , Qc:?DQuaternion
      >>
    )
.

%% Func:       qMultiply3
%% Args:       Qa, Qb, Qc
%% Returns:    ok
%% C-API func: void dQMultiply3(dQuaternion qa, const dQuaternion qb, const dQuaternion qc)

qMultiply3(Qa, Qb, Qc)
 -> cast
    ( ?dQMultiply3
    , <<Qa:?DQuaternion
      , Qb:?DQuaternion
      , Qc:?DQuaternion
      >>
    )
.

%% Func:       rfromQ
%% Args:       R, Q
%% Returns:    ok
%% C-API func: void dRfromQ(dMatrix3 R, const dQuaternion q)

rfromQ(R, Q)
 -> cast
    ( ?dRfromQ
    , <<R:?DMatrix3
      , Q:?DQuaternion
      >>
    )
.

%% Func:       qfromR
%% Args:       Q, R
%% Returns:    ok
%% C-API func: void dQfromR(dQuaternion q, const dMatrix3 R)

qfromR(Q, R)
 -> cast
    ( ?dQfromR
    , <<Q:?DQuaternion
      , R:?DMatrix3
      >>
    )
.

%% Func:       dQfromW
%% Args:       Dq[4], W, Q
%% Returns:    ok
%% C-API func: void dDQfromW(dReal dq[4], const dVector3 w, const dQuaternion q)

dQfromW(Dq[4], W, Q)
 -> cast
    ( ?dDQfromW
    , <<Dq[4]:?DReal
      , W:?DVector3
      , Q:?DQuaternion
      >>
    )
.

%% mass.h

%% Func:       massCheck
%% Args:       M
%% Returns:    Exdl
%% C-API func: int dMassCheck(const dMass* m)

massCheck(M)
 -> case
      call
      ( ?dMassCheck
      , <<M:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       massSetZero
%% Args:       M
%% Returns:    ok
%% C-API func: void dMassSetZero(dMass* m)

massSetZero(M)
 -> cast
    ( ?dMassSetZero
    , <<M:?_PTR
      >>
    )
.

%% Func:       massSetParameters
%% Args:       M, Themass, Cgx, Cgy, Cgz, I11, I22, I33, I12, I13, I23
%% Returns:    ok
%% C-API func: void dMassSetParameters(dMass* m, dReal themass, dReal cgx, dReal cgy, dReal cgz, dReal I11, dReal I22, dReal I33, dReal I12, dReal I13, dReal I23)

massSetParameters(M, Themass, Cgx, Cgy, Cgz, I11, I22, I33, I12, I13, I23)
 -> cast
    ( ?dMassSetParameters
    , <<M:?_PTR
      , Themass:?DReal
      , Cgx:?DReal
      , Cgy:?DReal
      , Cgz:?DReal
      , I11:?DReal
      , I22:?DReal
      , I33:?DReal
      , I12:?DReal
      , I13:?DReal
      , I23:?DReal
      >>
    )
.

%% Func:       massSetSphere
%% Args:       M, Density, Radius
%% Returns:    ok
%% C-API func: void dMassSetSphere(dMass* m, dReal density, dReal radius)

massSetSphere(M, Density, Radius)
 -> cast
    ( ?dMassSetSphere
    , <<M:?_PTR
      , Density:?DReal
      , Radius:?DReal
      >>
    )
.

%% Func:       massSetSphereTotal
%% Args:       M, TotalMass, Radius
%% Returns:    ok
%% C-API func: void dMassSetSphereTotal(dMass* m, dReal total_mass, dReal radius)

massSetSphereTotal(M, TotalMass, Radius)
 -> cast
    ( ?dMassSetSphereTotal
    , <<M:?_PTR
      , TotalMass:?DReal
      , Radius:?DReal
      >>
    )
.

%% Func:       massSetCapsule
%% Args:       M, Density, Direction, Radius, Length
%% Returns:    ok
%% C-API func: void dMassSetCapsule(dMass* m, dReal density, int direction, dReal radius, dReal length)

massSetCapsule(M, Density, Direction, Radius, Length)
 -> cast
    ( ?dMassSetCapsule
    , <<M:?_PTR
      , Density:?DReal
      , Direction:?Int
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       massSetCapsuleTotal
%% Args:       M, TotalMass, Direction, Radius, Length
%% Returns:    ok
%% C-API func: void dMassSetCapsuleTotal(dMass* m, dReal total_mass, int direction, dReal radius, dReal length)

massSetCapsuleTotal(M, TotalMass, Direction, Radius, Length)
 -> cast
    ( ?dMassSetCapsuleTotal
    , <<M:?_PTR
      , TotalMass:?DReal
      , Direction:?Int
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       massSetCylinder
%% Args:       M, Density, Direction, Radius, Length
%% Returns:    ok
%% C-API func: void dMassSetCylinder(dMass* m, dReal density, int direction, dReal radius, dReal length)

massSetCylinder(M, Density, Direction, Radius, Length)
 -> cast
    ( ?dMassSetCylinder
    , <<M:?_PTR
      , Density:?DReal
      , Direction:?Int
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       massSetCylinderTotal
%% Args:       M, TotalMass, Direction, Radius, Length
%% Returns:    ok
%% C-API func: void dMassSetCylinderTotal(dMass* m, dReal total_mass, int direction, dReal radius, dReal length)

massSetCylinderTotal(M, TotalMass, Direction, Radius, Length)
 -> cast
    ( ?dMassSetCylinderTotal
    , <<M:?_PTR
      , TotalMass:?DReal
      , Direction:?Int
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       massSetBox
%% Args:       M, Density, Lx, Ly, Lz
%% Returns:    ok
%% C-API func: void dMassSetBox(dMass* m, dReal density, dReal lx, dReal ly, dReal lz)

massSetBox(M, Density, Lx, Ly, Lz)
 -> cast
    ( ?dMassSetBox
    , <<M:?_PTR
      , Density:?DReal
      , Lx:?DReal
      , Ly:?DReal
      , Lz:?DReal
      >>
    )
.

%% Func:       massSetBoxTotal
%% Args:       M, TotalMass, Lx, Ly, Lz
%% Returns:    ok
%% C-API func: void dMassSetBoxTotal(dMass* m, dReal total_mass, dReal lx, dReal ly, dReal lz)

massSetBoxTotal(M, TotalMass, Lx, Ly, Lz)
 -> cast
    ( ?dMassSetBoxTotal
    , <<M:?_PTR
      , TotalMass:?DReal
      , Lx:?DReal
      , Ly:?DReal
      , Lz:?DReal
      >>
    )
.

%% Func:       massSetTrimesh
%% Args:       M, Density, G
%% Returns:    ok
%% C-API func: void dMassSetTrimesh(dMass* m, dReal density, dGeomID g)

massSetTrimesh(M, Density, G)
 -> cast
    ( ?dMassSetTrimesh
    , <<M:?_PTR
      , Density:?DReal
      , G:?DGeomID
      >>
    )
.

%% Func:       massSetTrimeshTotal
%% Args:       M, TotalMass, G
%% Returns:    ok
%% C-API func: void dMassSetTrimeshTotal(dMass* m, dReal total_mass, dGeomID g)

massSetTrimeshTotal(M, TotalMass, G)
 -> cast
    ( ?dMassSetTrimeshTotal
    , <<M:?_PTR
      , TotalMass:?DReal
      , G:?DGeomID
      >>
    )
.

%% Func:       massAdjust
%% Args:       M, Newmass
%% Returns:    ok
%% C-API func: void dMassAdjust(dMass* m, dReal newmass)

massAdjust(M, Newmass)
 -> cast
    ( ?dMassAdjust
    , <<M:?_PTR
      , Newmass:?DReal
      >>
    )
.

%% Func:       massTranslate
%% Args:       M, X, Y, Z
%% Returns:    ok
%% C-API func: void dMassTranslate(dMass* m, dReal x, dReal y, dReal z)

massTranslate(M, X, Y, Z)
 -> cast
    ( ?dMassTranslate
    , <<M:?_PTR
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       massRotate
%% Args:       M, R
%% Returns:    ok
%% C-API func: void dMassRotate(dMass* m, const dMatrix3 R)

massRotate(M, R)
 -> cast
    ( ?dMassRotate
    , <<M:?_PTR
      , R:?DMatrix3
      >>
    )
.

%% Func:       massAdd
%% Args:       A, B
%% Returns:    ok
%% C-API func: void dMassAdd(dMass* a, const dMass* b)

massAdd(A, B)
 -> cast
    ( ?dMassAdd
    , <<A:?_PTR
      , B:?_PTR
      >>
    )
.

%% misc.h

%% Func:       testRand
%% Args:       none
%% Returns:    Exdl
%% C-API func: int dTestRand(void)

testRand()
 -> case
      call
      ( ?dTestRand
      , [
        ]
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       rand
%% Args:       none
%% Returns:    Exdl
%% C-API func: unsigned long dRand(void)

rand()
 -> case
      call
      ( ?dRand
      , [
        ]
      )
    of
      <<Exdl:?Ulong
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       randGetSeed
%% Args:       none
%% Returns:    Exdl
%% C-API func: unsigned long dRandGetSeed(void)

randGetSeed()
 -> case
      call
      ( ?dRandGetSeed
      , [
        ]
      )
    of
      <<Exdl:?Ulong
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       randSetSeed
%% Args:       S
%% Returns:    ok
%% C-API func: void dRandSetSeed(unsigned long s)

randSetSeed(S)
 -> cast
    ( ?dRandSetSeed
    , <<S:?Ulong
      >>
    )
.

%% Func:       randInt
%% Args:       N
%% Returns:    Exdl
%% C-API func: int dRandInt(int n)

randInt(N)
 -> case
      call
      ( ?dRandInt
      , <<N:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       randReal
%% Args:       none
%% Returns:    Exdl
%% C-API func: dReal dRandReal(void)

randReal()
 -> case
      call
      ( ?dRandReal
      , [
        ]
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       printMatrix
%% Args:       A, N, M, Fmt, F
%% Returns:    ok
%% C-API func: void dPrintMatrix(const dReal* A, int n, int m, char* fmt, FILE* f)

printMatrix(A, N, M, Fmt, F)
 -> cast
    ( ?dPrintMatrix
    , <<A:?_PTR
      , N:?Int
      , M:?Int
      , Fmt:?_PTR
      , F:?_PTR
      >>
    )
.

%% Func:       makeRandomVector
%% Args:       A, N, Range
%% Returns:    ok
%% C-API func: void dMakeRandomVector(dReal* A, int n, dReal range)

makeRandomVector(A, N, Range)
 -> cast
    ( ?dMakeRandomVector
    , <<A:?_PTR
      , N:?Int
      , Range:?DReal
      >>
    )
.

%% Func:       makeRandomMatrix
%% Args:       A, N, M, Range
%% Returns:    ok
%% C-API func: void dMakeRandomMatrix(dReal* A, int n, int m, dReal range)

makeRandomMatrix(A, N, M, Range)
 -> cast
    ( ?dMakeRandomMatrix
    , <<A:?_PTR
      , N:?Int
      , M:?Int
      , Range:?DReal
      >>
    )
.

%% Func:       clearUpperTriangle
%% Args:       A, N
%% Returns:    ok
%% C-API func: void dClearUpperTriangle(dReal* A, int n)

clearUpperTriangle(A, N)
 -> cast
    ( ?dClearUpperTriangle
    , <<A:?_PTR
      , N:?Int
      >>
    )
.

%% Func:       maxDifference
%% Args:       A, B, N, M
%% Returns:    Exdl
%% C-API func: dReal dMaxDifference(const dReal* A, const dReal* B, int n, int m)

maxDifference(A, B, N, M)
 -> case
      call
      ( ?dMaxDifference
      , <<A:?_PTR
        , B:?_PTR
        , N:?Int
        , M:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       maxDifferenceLowerTriangle
%% Args:       A, B, N
%% Returns:    Exdl
%% C-API func: dReal dMaxDifferenceLowerTriangle(const dReal* A, const dReal* B, int n)

maxDifferenceLowerTriangle(A, B, N)
 -> case
      call
      ( ?dMaxDifferenceLowerTriangle
      , <<A:?_PTR
        , B:?_PTR
        , N:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% objects.h

%% Func:       worldCreate
%% Args:       none
%% Returns:    Exdl
%% C-API func: dWorldID dWorldCreate(void)

worldCreate()
 -> case
      call
      ( ?dWorldCreate
      , [
        ]
      )
    of
      <<Exdl:?DWorldID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldDestroy
%% Args:       World
%% Returns:    ok
%% C-API func: void dWorldDestroy(dWorldID world)

worldDestroy(World)
 -> cast
    ( ?dWorldDestroy
    , <<World:?DWorldID
      >>
    )
.

%% Func:       worldSetGravity
%% Args:       W, X, Y, Z
%% Returns:    ok
%% C-API func: void dWorldSetGravity(dWorldID w, dReal x, dReal y, dReal z)

worldSetGravity(W, X, Y, Z)
 -> cast
    ( ?dWorldSetGravity
    , <<W:?DWorldID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       worldGetGravity
%% Args:       W, Gravity
%% Returns:    ok
%% C-API func: void dWorldGetGravity(dWorldID w, dVector3 gravity)

worldGetGravity(W, Gravity)
 -> cast
    ( ?dWorldGetGravity
    , <<W:?DWorldID
      , Gravity:?DVector3
      >>
    )
.

%% Func:       worldSetERP
%% Args:       W, Erp
%% Returns:    ok
%% C-API func: void dWorldSetERP(dWorldID w, dReal erp)

worldSetERP(W, Erp)
 -> cast
    ( ?dWorldSetERP
    , <<W:?DWorldID
      , Erp:?DReal
      >>
    )
.

%% Func:       worldGetERP
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetERP(dWorldID w)

worldGetERP(W)
 -> case
      call
      ( ?dWorldGetERP
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetCFM
%% Args:       W, Cfm
%% Returns:    ok
%% C-API func: void dWorldSetCFM(dWorldID w, dReal cfm)

worldSetCFM(W, Cfm)
 -> cast
    ( ?dWorldSetCFM
    , <<W:?DWorldID
      , Cfm:?DReal
      >>
    )
.

%% Func:       worldGetCFM
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetCFM(dWorldID w)

worldGetCFM(W)
 -> case
      call
      ( ?dWorldGetCFM
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldStep
%% Args:       W, Stepsize
%% Returns:    ok
%% C-API func: void dWorldStep(dWorldID w, dReal stepsize)

worldStep(W, Stepsize)
 -> cast
    ( ?dWorldStep
    , <<W:?DWorldID
      , Stepsize:?DReal
      >>
    )
.

%% Func:       worldImpulseToForce
%% Args:       W, Stepsize, Ix, Iy, Iz, Force
%% Returns:    ok
%% C-API func: void dWorldImpulseToForce(dWorldID w, dReal stepsize, dReal ix, dReal iy, dReal iz, dVector3 force)

worldImpulseToForce(W, Stepsize, Ix, Iy, Iz, Force)
 -> cast
    ( ?dWorldImpulseToForce
    , <<W:?DWorldID
      , Stepsize:?DReal
      , Ix:?DReal
      , Iy:?DReal
      , Iz:?DReal
      , Force:?DVector3
      >>
    )
.

%% Func:       worldQuickStep
%% Args:       W, Stepsize
%% Returns:    ok
%% C-API func: void dWorldQuickStep(dWorldID w, dReal stepsize)

worldQuickStep(W, Stepsize)
 -> cast
    ( ?dWorldQuickStep
    , <<W:?DWorldID
      , Stepsize:?DReal
      >>
    )
.

%% Func:       worldSetQuickStepNumIterations
%% Args:       W, Num
%% Returns:    ok
%% C-API func: void dWorldSetQuickStepNumIterations(dWorldID w, int num)

worldSetQuickStepNumIterations(W, Num)
 -> cast
    ( ?dWorldSetQuickStepNumIterations
    , <<W:?DWorldID
      , Num:?Int
      >>
    )
.

%% Func:       worldGetQuickStepNumIterations
%% Args:       W
%% Returns:    Exdl
%% C-API func: int dWorldGetQuickStepNumIterations(dWorldID w)

worldGetQuickStepNumIterations(W)
 -> case
      call
      ( ?dWorldGetQuickStepNumIterations
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetQuickStepW
%% Args:       W, OverRelaxation
%% Returns:    ok
%% C-API func: void dWorldSetQuickStepW(dWorldID w, dReal over_relaxation)

worldSetQuickStepW(W, OverRelaxation)
 -> cast
    ( ?dWorldSetQuickStepW
    , <<W:?DWorldID
      , OverRelaxation:?DReal
      >>
    )
.

%% Func:       worldGetQuickStepW
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetQuickStepW(dWorldID w)

worldGetQuickStepW(W)
 -> case
      call
      ( ?dWorldGetQuickStepW
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetContactMaxCorrectingVel
%% Args:       W, Vel
%% Returns:    ok
%% C-API func: void dWorldSetContactMaxCorrectingVel(dWorldID w, dReal vel)

worldSetContactMaxCorrectingVel(W, Vel)
 -> cast
    ( ?dWorldSetContactMaxCorrectingVel
    , <<W:?DWorldID
      , Vel:?DReal
      >>
    )
.

%% Func:       worldGetContactMaxCorrectingVel
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetContactMaxCorrectingVel(dWorldID w)

worldGetContactMaxCorrectingVel(W)
 -> case
      call
      ( ?dWorldGetContactMaxCorrectingVel
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetContactSurfaceLayer
%% Args:       W, Depth
%% Returns:    ok
%% C-API func: void dWorldSetContactSurfaceLayer(dWorldID w, dReal depth)

worldSetContactSurfaceLayer(W, Depth)
 -> cast
    ( ?dWorldSetContactSurfaceLayer
    , <<W:?DWorldID
      , Depth:?DReal
      >>
    )
.

%% Func:       worldGetContactSurfaceLayer
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetContactSurfaceLayer(dWorldID w)

worldGetContactSurfaceLayer(W)
 -> case
      call
      ( ?dWorldGetContactSurfaceLayer
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldStepFast1
%% Args:       W, Stepsize, Maxiterations
%% Returns:    ok
%% C-API func: void dWorldStepFast1(dWorldID w, dReal stepsize, int maxiterations)

worldStepFast1(W, Stepsize, Maxiterations)
 -> cast
    ( ?dWorldStepFast1
    , <<W:?DWorldID
      , Stepsize:?DReal
      , Maxiterations:?Int
      >>
    )
.

%% Func:       worldSetAutoEnableDepthSF1
%% Args:       W, AutoEnableDepth
%% Returns:    ok
%% C-API func: void dWorldSetAutoEnableDepthSF1(dWorldID w, int autoEnableDepth)

worldSetAutoEnableDepthSF1(W, AutoEnableDepth)
 -> cast
    ( ?dWorldSetAutoEnableDepthSF1
    , <<W:?DWorldID
      , AutoEnableDepth:?Int
      >>
    )
.

%% Func:       worldGetAutoEnableDepthSF1
%% Args:       W
%% Returns:    Exdl
%% C-API func: int dWorldGetAutoEnableDepthSF1(dWorldID w)

worldGetAutoEnableDepthSF1(W)
 -> case
      call
      ( ?dWorldGetAutoEnableDepthSF1
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldGetAutoDisableLinearThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAutoDisableLinearThreshold(dWorldID w)

worldGetAutoDisableLinearThreshold(W)
 -> case
      call
      ( ?dWorldGetAutoDisableLinearThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableLinearThreshold
%% Args:       W, LinearThreshold
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableLinearThreshold(dWorldID w, dReal linear_threshold)

worldSetAutoDisableLinearThreshold(W, LinearThreshold)
 -> cast
    ( ?dWorldSetAutoDisableLinearThreshold
    , <<W:?DWorldID
      , LinearThreshold:?DReal
      >>
    )
.

%% Func:       worldGetAutoDisableAngularThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAutoDisableAngularThreshold(dWorldID w)

worldGetAutoDisableAngularThreshold(W)
 -> case
      call
      ( ?dWorldGetAutoDisableAngularThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableAngularThreshold
%% Args:       W, AngularThreshold
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableAngularThreshold(dWorldID w, dReal angular_threshold)

worldSetAutoDisableAngularThreshold(W, AngularThreshold)
 -> cast
    ( ?dWorldSetAutoDisableAngularThreshold
    , <<W:?DWorldID
      , AngularThreshold:?DReal
      >>
    )
.

%% Func:       worldGetAutoDisableLinearAverageThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAutoDisableLinearAverageThreshold(dWorldID w)

worldGetAutoDisableLinearAverageThreshold(W)
 -> case
      call
      ( ?dWorldGetAutoDisableLinearAverageThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableLinearAverageThreshold
%% Args:       W, LinearAverageThreshold
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableLinearAverageThreshold(dWorldID w, dReal linear_average_threshold)

worldSetAutoDisableLinearAverageThreshold(W, LinearAverageThreshold)
 -> cast
    ( ?dWorldSetAutoDisableLinearAverageThreshold
    , <<W:?DWorldID
      , LinearAverageThreshold:?DReal
      >>
    )
.

%% Func:       worldGetAutoDisableAngularAverageThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAutoDisableAngularAverageThreshold(dWorldID w)

worldGetAutoDisableAngularAverageThreshold(W)
 -> case
      call
      ( ?dWorldGetAutoDisableAngularAverageThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableAngularAverageThreshold
%% Args:       W, AngularAverageThreshold
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableAngularAverageThreshold(dWorldID w, dReal angular_average_threshold)

worldSetAutoDisableAngularAverageThreshold(W, AngularAverageThreshold)
 -> cast
    ( ?dWorldSetAutoDisableAngularAverageThreshold
    , <<W:?DWorldID
      , AngularAverageThreshold:?DReal
      >>
    )
.

%% Func:       worldGetAutoDisableAverageSamplesCount
%% Args:       W
%% Returns:    Exdl
%% C-API func: int dWorldGetAutoDisableAverageSamplesCount(dWorldID w)

worldGetAutoDisableAverageSamplesCount(W)
 -> case
      call
      ( ?dWorldGetAutoDisableAverageSamplesCount
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableAverageSamplesCount
%% Args:       W, AverageSamplesCount
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableAverageSamplesCount(dWorldID w, unsigned int average_samples_count)

worldSetAutoDisableAverageSamplesCount(W, AverageSamplesCount)
 -> cast
    ( ?dWorldSetAutoDisableAverageSamplesCount
    , <<W:?DWorldID
      , AverageSamplesCount:?Uint
      >>
    )
.

%% Func:       worldGetAutoDisableSteps
%% Args:       W
%% Returns:    Exdl
%% C-API func: int dWorldGetAutoDisableSteps(dWorldID w)

worldGetAutoDisableSteps(W)
 -> case
      call
      ( ?dWorldGetAutoDisableSteps
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableSteps
%% Args:       W, Steps
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableSteps(dWorldID w, int steps)

worldSetAutoDisableSteps(W, Steps)
 -> cast
    ( ?dWorldSetAutoDisableSteps
    , <<W:?DWorldID
      , Steps:?Int
      >>
    )
.

%% Func:       worldGetAutoDisableTime
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAutoDisableTime(dWorldID w)

worldGetAutoDisableTime(W)
 -> case
      call
      ( ?dWorldGetAutoDisableTime
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableTime
%% Args:       W, Time
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableTime(dWorldID w, dReal time)

worldSetAutoDisableTime(W, Time)
 -> cast
    ( ?dWorldSetAutoDisableTime
    , <<W:?DWorldID
      , Time:?DReal
      >>
    )
.

%% Func:       worldGetAutoDisableFlag
%% Args:       W
%% Returns:    Exdl
%% C-API func: int dWorldGetAutoDisableFlag(dWorldID w)

worldGetAutoDisableFlag(W)
 -> case
      call
      ( ?dWorldGetAutoDisableFlag
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAutoDisableFlag
%% Args:       W, DoAutoDisable
%% Returns:    ok
%% C-API func: void dWorldSetAutoDisableFlag(dWorldID w, int do_auto_disable)

worldSetAutoDisableFlag(W, DoAutoDisable)
 -> cast
    ( ?dWorldSetAutoDisableFlag
    , <<W:?DWorldID
      , DoAutoDisable:?Int
      >>
    )
.

%% Func:       worldGetLinearDampingThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetLinearDampingThreshold(dWorldID w)

worldGetLinearDampingThreshold(W)
 -> case
      call
      ( ?dWorldGetLinearDampingThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetLinearDampingThreshold
%% Args:       W, Threshold
%% Returns:    ok
%% C-API func: void dWorldSetLinearDampingThreshold(dWorldID w, dReal threshold)

worldSetLinearDampingThreshold(W, Threshold)
 -> cast
    ( ?dWorldSetLinearDampingThreshold
    , <<W:?DWorldID
      , Threshold:?DReal
      >>
    )
.

%% Func:       worldGetAngularDampingThreshold
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAngularDampingThreshold(dWorldID w)

worldGetAngularDampingThreshold(W)
 -> case
      call
      ( ?dWorldGetAngularDampingThreshold
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAngularDampingThreshold
%% Args:       W, Threshold
%% Returns:    ok
%% C-API func: void dWorldSetAngularDampingThreshold(dWorldID w, dReal threshold)

worldSetAngularDampingThreshold(W, Threshold)
 -> cast
    ( ?dWorldSetAngularDampingThreshold
    , <<W:?DWorldID
      , Threshold:?DReal
      >>
    )
.

%% Func:       worldGetLinearDamping
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetLinearDamping(dWorldID w)

worldGetLinearDamping(W)
 -> case
      call
      ( ?dWorldGetLinearDamping
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetLinearDamping
%% Args:       W, Scale
%% Returns:    ok
%% C-API func: void dWorldSetLinearDamping(dWorldID w, dReal scale)

worldSetLinearDamping(W, Scale)
 -> cast
    ( ?dWorldSetLinearDamping
    , <<W:?DWorldID
      , Scale:?DReal
      >>
    )
.

%% Func:       worldGetAngularDamping
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetAngularDamping(dWorldID w)

worldGetAngularDamping(W)
 -> case
      call
      ( ?dWorldGetAngularDamping
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetAngularDamping
%% Args:       W, Scale
%% Returns:    ok
%% C-API func: void dWorldSetAngularDamping(dWorldID w, dReal scale)

worldSetAngularDamping(W, Scale)
 -> cast
    ( ?dWorldSetAngularDamping
    , <<W:?DWorldID
      , Scale:?DReal
      >>
    )
.

%% Func:       worldSetDamping
%% Args:       W, LinearScale, AngularScale
%% Returns:    ok
%% C-API func: void dWorldSetDamping(dWorldID w, dReal linear_scale, dReal angular_scale)

worldSetDamping(W, LinearScale, AngularScale)
 -> cast
    ( ?dWorldSetDamping
    , <<W:?DWorldID
      , LinearScale:?DReal
      , AngularScale:?DReal
      >>
    )
.

%% Func:       worldGetMaxAngularSpeed
%% Args:       W
%% Returns:    Exdl
%% C-API func: dReal dWorldGetMaxAngularSpeed(dWorldID w)

worldGetMaxAngularSpeed(W)
 -> case
      call
      ( ?dWorldGetMaxAngularSpeed
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       worldSetMaxAngularSpeed
%% Args:       W, MaxSpeed
%% Returns:    ok
%% C-API func: void dWorldSetMaxAngularSpeed(dWorldID w, dReal max_speed)

worldSetMaxAngularSpeed(W, MaxSpeed)
 -> cast
    ( ?dWorldSetMaxAngularSpeed
    , <<W:?DWorldID
      , MaxSpeed:?DReal
      >>
    )
.

%% Func:       bodyGetAutoDisableLinearThreshold
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetAutoDisableLinearThreshold(dBodyID b)

bodyGetAutoDisableLinearThreshold(B)
 -> case
      call
      ( ?dBodyGetAutoDisableLinearThreshold
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableLinearThreshold
%% Args:       B, LinearAverageThreshold
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableLinearThreshold(dBodyID b, dReal linear_average_threshold)

bodySetAutoDisableLinearThreshold(B, LinearAverageThreshold)
 -> cast
    ( ?dBodySetAutoDisableLinearThreshold
    , <<B:?DBodyID
      , LinearAverageThreshold:?DReal
      >>
    )
.

%% Func:       bodyGetAutoDisableAngularThreshold
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetAutoDisableAngularThreshold(dBodyID b)

bodyGetAutoDisableAngularThreshold(B)
 -> case
      call
      ( ?dBodyGetAutoDisableAngularThreshold
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableAngularThreshold
%% Args:       B, AngularAverageThreshold
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableAngularThreshold(dBodyID b, dReal angular_average_threshold)

bodySetAutoDisableAngularThreshold(B, AngularAverageThreshold)
 -> cast
    ( ?dBodySetAutoDisableAngularThreshold
    , <<B:?DBodyID
      , AngularAverageThreshold:?DReal
      >>
    )
.

%% Func:       bodyGetAutoDisableAverageSamplesCount
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetAutoDisableAverageSamplesCount(dBodyID b)

bodyGetAutoDisableAverageSamplesCount(B)
 -> case
      call
      ( ?dBodyGetAutoDisableAverageSamplesCount
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableAverageSamplesCount
%% Args:       B, AverageSamplesCount
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableAverageSamplesCount(dBodyID b, unsigned int average_samples_count)

bodySetAutoDisableAverageSamplesCount(B, AverageSamplesCount)
 -> cast
    ( ?dBodySetAutoDisableAverageSamplesCount
    , <<B:?DBodyID
      , AverageSamplesCount:?Uint
      >>
    )
.

%% Func:       bodyGetAutoDisableSteps
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetAutoDisableSteps(dBodyID b)

bodyGetAutoDisableSteps(B)
 -> case
      call
      ( ?dBodyGetAutoDisableSteps
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableSteps
%% Args:       B, Steps
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableSteps(dBodyID b, int steps)

bodySetAutoDisableSteps(B, Steps)
 -> cast
    ( ?dBodySetAutoDisableSteps
    , <<B:?DBodyID
      , Steps:?Int
      >>
    )
.

%% Func:       bodyGetAutoDisableTime
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetAutoDisableTime(dBodyID b)

bodyGetAutoDisableTime(B)
 -> case
      call
      ( ?dBodyGetAutoDisableTime
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableTime
%% Args:       B, Time
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableTime(dBodyID b, dReal time)

bodySetAutoDisableTime(B, Time)
 -> cast
    ( ?dBodySetAutoDisableTime
    , <<B:?DBodyID
      , Time:?DReal
      >>
    )
.

%% Func:       bodyGetAutoDisableFlag
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetAutoDisableFlag(dBodyID b)

bodyGetAutoDisableFlag(B)
 -> case
      call
      ( ?dBodyGetAutoDisableFlag
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAutoDisableFlag
%% Args:       B, DoAutoDisable
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableFlag(dBodyID b, int do_auto_disable)

bodySetAutoDisableFlag(B, DoAutoDisable)
 -> cast
    ( ?dBodySetAutoDisableFlag
    , <<B:?DBodyID
      , DoAutoDisable:?Int
      >>
    )
.

%% Func:       bodySetAutoDisableDefaults
%% Args:       B
%% Returns:    ok
%% C-API func: void dBodySetAutoDisableDefaults(dBodyID b)

bodySetAutoDisableDefaults(B)
 -> cast
    ( ?dBodySetAutoDisableDefaults
    , <<B:?DBodyID
      >>
    )
.

%% Func:       bodyGetWorld
%% Args:       B
%% Returns:    Exdl
%% C-API func: dWorldID dBodyGetWorld(dBodyID b)

bodyGetWorld(B)
 -> case
      call
      ( ?dBodyGetWorld
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DWorldID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyCreate
%% Args:       W
%% Returns:    Exdl
%% C-API func: dBodyID dBodyCreate(dWorldID w)

bodyCreate(W)
 -> case
      call
      ( ?dBodyCreate
      , <<W:?DWorldID
        >>
      )
    of
      <<Exdl:?DBodyID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyDestroy
%% Args:       B
%% Returns:    ok
%% C-API func: void dBodyDestroy(dBodyID b)

bodyDestroy(B)
 -> cast
    ( ?dBodyDestroy
    , <<B:?DBodyID
      >>
    )
.

%% Func:       bodySetData
%% Args:       B, Data
%% Returns:    ok
%% C-API func: void dBodySetData(dBodyID b, void* data)

bodySetData(B, Data)
 -> cast
    ( ?dBodySetData
    , <<B:?DBodyID
      , Data:?_PTR
      >>
    )
.

%% Func:       bodyGetData
%% Args:       B
%% Returns:    Exdl
%% C-API func: void* dBodyGetData(dBodyID b)

bodyGetData(B)
 -> case
      call
      ( ?dBodyGetData
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetPosition
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetPosition(dBodyID b, dReal x, dReal y, dReal z)

bodySetPosition(B, X, Y, Z)
 -> cast
    ( ?dBodySetPosition
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodySetRotation
%% Args:       B, R
%% Returns:    ok
%% C-API func: void dBodySetRotation(dBodyID b, const dMatrix3 R)

bodySetRotation(B, R)
 -> cast
    ( ?dBodySetRotation
    , <<B:?DBodyID
      , R:?DMatrix3
      >>
    )
.

%% Func:       bodySetQuaternion
%% Args:       B, Q
%% Returns:    ok
%% C-API func: void dBodySetQuaternion(dBodyID b, const dQuaternion q)

bodySetQuaternion(B, Q)
 -> cast
    ( ?dBodySetQuaternion
    , <<B:?DBodyID
      , Q:?DQuaternion
      >>
    )
.

%% Func:       bodySetLinearVel
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetLinearVel(dBodyID b, dReal x, dReal y, dReal z)

bodySetLinearVel(B, X, Y, Z)
 -> cast
    ( ?dBodySetLinearVel
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodySetAngularVel
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetAngularVel(dBodyID b, dReal x, dReal y, dReal z)

bodySetAngularVel(B, X, Y, Z)
 -> cast
    ( ?dBodySetAngularVel
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodyGetPosition
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetPosition(dBodyID b)

bodyGetPosition(B)
 -> case
      call
      ( ?dBodyGetPosition
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyCopyPosition
%% Args:       Body, Pos
%% Returns:    ok
%% C-API func: void dBodyCopyPosition(dBodyID body, dVector3 pos)

bodyCopyPosition(Body, Pos)
 -> cast
    ( ?dBodyCopyPosition
    , <<Body:?DBodyID
      , Pos:?DVector3
      >>
    )
.

%% Func:       bodyGetRotation
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetRotation(dBodyID b)

bodyGetRotation(B)
 -> case
      call
      ( ?dBodyGetRotation
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyCopyRotation
%% Args:       B, R
%% Returns:    ok
%% C-API func: void dBodyCopyRotation(dBodyID b, dMatrix3 R)

bodyCopyRotation(B, R)
 -> cast
    ( ?dBodyCopyRotation
    , <<B:?DBodyID
      , R:?DMatrix3
      >>
    )
.

%% Func:       bodyGetQuaternion
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetQuaternion(dBodyID b)

bodyGetQuaternion(B)
 -> case
      call
      ( ?dBodyGetQuaternion
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyCopyQuaternion
%% Args:       Body, Quat
%% Returns:    ok
%% C-API func: void dBodyCopyQuaternion(dBodyID body, dQuaternion quat)

bodyCopyQuaternion(Body, Quat)
 -> cast
    ( ?dBodyCopyQuaternion
    , <<Body:?DBodyID
      , Quat:?DQuaternion
      >>
    )
.

%% Func:       bodyGetLinearVel
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetLinearVel(dBodyID b)

bodyGetLinearVel(B)
 -> case
      call
      ( ?dBodyGetLinearVel
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyGetAngularVel
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetAngularVel(dBodyID b)

bodyGetAngularVel(B)
 -> case
      call
      ( ?dBodyGetAngularVel
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetMass
%% Args:       B, Mass
%% Returns:    ok
%% C-API func: void dBodySetMass(dBodyID b, const dMass* mass)

bodySetMass(B, Mass)
 -> cast
    ( ?dBodySetMass
    , <<B:?DBodyID
      , Mass:?_PTR
      >>
    )
.

%% Func:       bodyGetMass
%% Args:       B
%% Returns:    { Mass }
%% C-API func: void dBodyGetMass(dBodyID b, dMass* mass)

bodyGetMass(B)
 -> case
      call
      ( ?dBodyGetMass
      , <<B:?DBodyID
        >>
      )
    of
      <<Mass:?_PTR
      >>
        -> { Mass }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyAddForce
%% Args:       B, Fx, Fy, Fz
%% Returns:    ok
%% C-API func: void dBodyAddForce(dBodyID b, dReal fx, dReal fy, dReal fz)

bodyAddForce(B, Fx, Fy, Fz)
 -> cast
    ( ?dBodyAddForce
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      >>
    )
.

%% Func:       bodyAddTorque
%% Args:       B, Fx, Fy, Fz
%% Returns:    ok
%% C-API func: void dBodyAddTorque(dBodyID b, dReal fx, dReal fy, dReal fz)

bodyAddTorque(B, Fx, Fy, Fz)
 -> cast
    ( ?dBodyAddTorque
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      >>
    )
.

%% Func:       bodyAddRelForce
%% Args:       B, Fx, Fy, Fz
%% Returns:    ok
%% C-API func: void dBodyAddRelForce(dBodyID b, dReal fx, dReal fy, dReal fz)

bodyAddRelForce(B, Fx, Fy, Fz)
 -> cast
    ( ?dBodyAddRelForce
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      >>
    )
.

%% Func:       bodyAddRelTorque
%% Args:       B, Fx, Fy, Fz
%% Returns:    ok
%% C-API func: void dBodyAddRelTorque(dBodyID b, dReal fx, dReal fy, dReal fz)

bodyAddRelTorque(B, Fx, Fy, Fz)
 -> cast
    ( ?dBodyAddRelTorque
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      >>
    )
.

%% Func:       bodyAddForceAtPos
%% Args:       B, Fx, Fy, Fz, Px, Py, Pz
%% Returns:    ok
%% C-API func: void dBodyAddForceAtPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz)

bodyAddForceAtPos(B, Fx, Fy, Fz, Px, Py, Pz)
 -> cast
    ( ?dBodyAddForceAtPos
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      >>
    )
.

%% Func:       bodyAddForceAtRelPos
%% Args:       B, Fx, Fy, Fz, Px, Py, Pz
%% Returns:    ok
%% C-API func: void dBodyAddForceAtRelPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz)

bodyAddForceAtRelPos(B, Fx, Fy, Fz, Px, Py, Pz)
 -> cast
    ( ?dBodyAddForceAtRelPos
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      >>
    )
.

%% Func:       bodyAddRelForceAtPos
%% Args:       B, Fx, Fy, Fz, Px, Py, Pz
%% Returns:    ok
%% C-API func: void dBodyAddRelForceAtPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz)

bodyAddRelForceAtPos(B, Fx, Fy, Fz, Px, Py, Pz)
 -> cast
    ( ?dBodyAddRelForceAtPos
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      >>
    )
.

%% Func:       bodyAddRelForceAtRelPos
%% Args:       B, Fx, Fy, Fz, Px, Py, Pz
%% Returns:    ok
%% C-API func: void dBodyAddRelForceAtRelPos(dBodyID b, dReal fx, dReal fy, dReal fz, dReal px, dReal py, dReal pz)

bodyAddRelForceAtRelPos(B, Fx, Fy, Fz, Px, Py, Pz)
 -> cast
    ( ?dBodyAddRelForceAtRelPos
    , <<B:?DBodyID
      , Fx:?DReal
      , Fy:?DReal
      , Fz:?DReal
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      >>
    )
.

%% Func:       bodyGetForce
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetForce(dBodyID b)

bodyGetForce(B)
 -> case
      call
      ( ?dBodyGetForce
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyGetTorque
%% Args:       B
%% Returns:    Exdl
%% C-API func: const dReal* dBodyGetTorque(dBodyID b)

bodyGetTorque(B)
 -> case
      call
      ( ?dBodyGetTorque
      , <<B:?DBodyID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetForce
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetForce(dBodyID b, dReal x, dReal y, dReal z)

bodySetForce(B, X, Y, Z)
 -> cast
    ( ?dBodySetForce
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodySetTorque
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetTorque(dBodyID b, dReal x, dReal y, dReal z)

bodySetTorque(B, X, Y, Z)
 -> cast
    ( ?dBodySetTorque
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodyGetRelPointPos
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyGetRelPointPos(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyGetRelPointPos(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyGetRelPointPos
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyGetRelPointVel
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyGetRelPointVel(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyGetRelPointVel(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyGetRelPointVel
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyGetPointVel
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyGetPointVel(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyGetPointVel(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyGetPointVel
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyGetPosRelPoint
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyGetPosRelPoint(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyGetPosRelPoint(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyGetPosRelPoint
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyVectorToWorld
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyVectorToWorld(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyVectorToWorld(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyVectorToWorld
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyVectorFromWorld
%% Args:       B, Px, Py, Pz, Result
%% Returns:    ok
%% C-API func: void dBodyVectorFromWorld(dBodyID b, dReal px, dReal py, dReal pz, dVector3 result)

bodyVectorFromWorld(B, Px, Py, Pz, Result)
 -> cast
    ( ?dBodyVectorFromWorld
    , <<B:?DBodyID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Result:?DVector3
      >>
    )
.

%% Func:       bodySetFiniteRotationMode
%% Args:       B, Mode
%% Returns:    ok
%% C-API func: void dBodySetFiniteRotationMode(dBodyID b, int mode)

bodySetFiniteRotationMode(B, Mode)
 -> cast
    ( ?dBodySetFiniteRotationMode
    , <<B:?DBodyID
      , Mode:?Int
      >>
    )
.

%% Func:       bodySetFiniteRotationAxis
%% Args:       B, X, Y, Z
%% Returns:    ok
%% C-API func: void dBodySetFiniteRotationAxis(dBodyID b, dReal x, dReal y, dReal z)

bodySetFiniteRotationAxis(B, X, Y, Z)
 -> cast
    ( ?dBodySetFiniteRotationAxis
    , <<B:?DBodyID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       bodyGetFiniteRotationMode
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetFiniteRotationMode(dBodyID b)

bodyGetFiniteRotationMode(B)
 -> case
      call
      ( ?dBodyGetFiniteRotationMode
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyGetFiniteRotationAxis
%% Args:       B, Result
%% Returns:    ok
%% C-API func: void dBodyGetFiniteRotationAxis(dBodyID b, dVector3 result)

bodyGetFiniteRotationAxis(B, Result)
 -> cast
    ( ?dBodyGetFiniteRotationAxis
    , <<B:?DBodyID
      , Result:?DVector3
      >>
    )
.

%% Func:       bodyGetNumJoints
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetNumJoints(dBodyID b)

bodyGetNumJoints(B)
 -> case
      call
      ( ?dBodyGetNumJoints
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyGetJoint
%% Args:       B, Index
%% Returns:    Exdl
%% C-API func: dJointID dBodyGetJoint(dBodyID b, int index)

bodyGetJoint(B, Index)
 -> case
      call
      ( ?dBodyGetJoint
      , <<B:?DBodyID
        , Index:?Int
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyEnable
%% Args:       B
%% Returns:    ok
%% C-API func: void dBodyEnable(dBodyID b)

bodyEnable(B)
 -> cast
    ( ?dBodyEnable
    , <<B:?DBodyID
      >>
    )
.

%% Func:       bodyDisable
%% Args:       B
%% Returns:    ok
%% C-API func: void dBodyDisable(dBodyID b)

bodyDisable(B)
 -> cast
    ( ?dBodyDisable
    , <<B:?DBodyID
      >>
    )
.

%% Func:       bodyIsEnabled
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyIsEnabled(dBodyID b)

bodyIsEnabled(B)
 -> case
      call
      ( ?dBodyIsEnabled
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetGravityMode
%% Args:       B, Mode
%% Returns:    ok
%% C-API func: void dBodySetGravityMode(dBodyID b, int mode)

bodySetGravityMode(B, Mode)
 -> cast
    ( ?dBodySetGravityMode
    , <<B:?DBodyID
      , Mode:?Int
      >>
    )
.

%% Func:       bodyGetGravityMode
%% Args:       B
%% Returns:    Exdl
%% C-API func: int dBodyGetGravityMode(dBodyID b)

bodyGetGravityMode(B)
 -> case
      call
      ( ?dBodyGetGravityMode
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetMovedCallback
%% Args:       
callback
%% Returns:    ok
%% C-API func: void dBodySetMovedCallback(dBodyID b, void(*callback)(dBodyID b))

bodySetMovedCallback(
callback)
 -> cast
    ( ?dBodySetMovedCallback
    , <<B:?DBodyID
      , 
callback:?DBodyID
      >>
    )
.

%% Func:       bodyGetFirstGeom
%% Args:       B
%% Returns:    Exdl
%% C-API func: dGeomID dBodyGetFirstGeom(dBodyID b)

bodyGetFirstGeom(B)
 -> case
      call
      ( ?dBodyGetFirstGeom
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodyGetNextGeom
%% Args:       G
%% Returns:    Exdl
%% C-API func: dGeomID dBodyGetNextGeom(dGeomID g)

bodyGetNextGeom(G)
 -> case
      call
      ( ?dBodyGetNextGeom
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetDampingDefaults
%% Args:       B
%% Returns:    ok
%% C-API func: void dBodySetDampingDefaults(dBodyID b)

bodySetDampingDefaults(B)
 -> cast
    ( ?dBodySetDampingDefaults
    , <<B:?DBodyID
      >>
    )
.

%% Func:       bodyGetLinearDamping
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetLinearDamping(dBodyID b)

bodyGetLinearDamping(B)
 -> case
      call
      ( ?dBodyGetLinearDamping
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetLinearDamping
%% Args:       B, Scale
%% Returns:    ok
%% C-API func: void dBodySetLinearDamping(dBodyID b, dReal scale)

bodySetLinearDamping(B, Scale)
 -> cast
    ( ?dBodySetLinearDamping
    , <<B:?DBodyID
      , Scale:?DReal
      >>
    )
.

%% Func:       bodyGetAngularDamping
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetAngularDamping(dBodyID b)

bodyGetAngularDamping(B)
 -> case
      call
      ( ?dBodyGetAngularDamping
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAngularDamping
%% Args:       B, Scale
%% Returns:    ok
%% C-API func: void dBodySetAngularDamping(dBodyID b, dReal scale)

bodySetAngularDamping(B, Scale)
 -> cast
    ( ?dBodySetAngularDamping
    , <<B:?DBodyID
      , Scale:?DReal
      >>
    )
.

%% Func:       bodySetDamping
%% Args:       B, LinearScale, AngularScale
%% Returns:    ok
%% C-API func: void dBodySetDamping(dBodyID b, dReal linear_scale, dReal angular_scale)

bodySetDamping(B, LinearScale, AngularScale)
 -> cast
    ( ?dBodySetDamping
    , <<B:?DBodyID
      , LinearScale:?DReal
      , AngularScale:?DReal
      >>
    )
.

%% Func:       bodyGetLinearDampingThreshold
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetLinearDampingThreshold(dBodyID b)

bodyGetLinearDampingThreshold(B)
 -> case
      call
      ( ?dBodyGetLinearDampingThreshold
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetLinearDampingThreshold
%% Args:       B, Threshold
%% Returns:    ok
%% C-API func: void dBodySetLinearDampingThreshold(dBodyID b, dReal threshold)

bodySetLinearDampingThreshold(B, Threshold)
 -> cast
    ( ?dBodySetLinearDampingThreshold
    , <<B:?DBodyID
      , Threshold:?DReal
      >>
    )
.

%% Func:       bodyGetAngularDampingThreshold
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetAngularDampingThreshold(dBodyID b)

bodyGetAngularDampingThreshold(B)
 -> case
      call
      ( ?dBodyGetAngularDampingThreshold
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetAngularDampingThreshold
%% Args:       B, Threshold
%% Returns:    ok
%% C-API func: void dBodySetAngularDampingThreshold(dBodyID b, dReal threshold)

bodySetAngularDampingThreshold(B, Threshold)
 -> cast
    ( ?dBodySetAngularDampingThreshold
    , <<B:?DBodyID
      , Threshold:?DReal
      >>
    )
.

%% Func:       bodyGetMaxAngularSpeed
%% Args:       B
%% Returns:    Exdl
%% C-API func: dReal dBodyGetMaxAngularSpeed(dBodyID b)

bodyGetMaxAngularSpeed(B)
 -> case
      call
      ( ?dBodyGetMaxAngularSpeed
      , <<B:?DBodyID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       bodySetMaxAngularSpeed
%% Args:       B, MaxSpeed
%% Returns:    ok
%% C-API func: void dBodySetMaxAngularSpeed(dBodyID b, dReal max_speed)

bodySetMaxAngularSpeed(B, MaxSpeed)
 -> cast
    ( ?dBodySetMaxAngularSpeed
    , <<B:?DBodyID
      , MaxSpeed:?DReal
      >>
    )
.

%% Func:       jointCreateBall
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateBall(dWorldID w, dJointGroupID group)

jointCreateBall(W, Group)
 -> case
      call
      ( ?dJointCreateBall
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateHinge
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateHinge(dWorldID w, dJointGroupID group)

jointCreateHinge(W, Group)
 -> case
      call
      ( ?dJointCreateHinge
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateSlider
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateSlider(dWorldID w, dJointGroupID group)

jointCreateSlider(W, Group)
 -> case
      call
      ( ?dJointCreateSlider
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateContact
%% Args:       DJointGroupID, DContact*
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateContact(dWorldID w, dJointGroupID, const dContact* )

jointCreateContact(DJointGroupID, DContact*)
 -> case
      call
      ( ?dJointCreateContact
      , <<W:?DWorldID
        , DJointGroupID:?DWorldID
        , DContact*:?Const
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateHinge2
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateHinge2(dWorldID w, dJointGroupID group)

jointCreateHinge2(W, Group)
 -> case
      call
      ( ?dJointCreateHinge2
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateUniversal
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateUniversal(dWorldID w, dJointGroupID group)

jointCreateUniversal(W, Group)
 -> case
      call
      ( ?dJointCreateUniversal
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreatePR
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreatePR(dWorldID w, dJointGroupID group)

jointCreatePR(W, Group)
 -> case
      call
      ( ?dJointCreatePR
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreatePU
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreatePU(dWorldID w, dJointGroupID group)

jointCreatePU(W, Group)
 -> case
      call
      ( ?dJointCreatePU
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreatePiston
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreatePiston(dWorldID w, dJointGroupID group)

jointCreatePiston(W, Group)
 -> case
      call
      ( ?dJointCreatePiston
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateFixed
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateFixed(dWorldID w, dJointGroupID group)

jointCreateFixed(W, Group)
 -> case
      call
      ( ?dJointCreateFixed
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateNull
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateNull(dWorldID w, dJointGroupID group)

jointCreateNull(W, Group)
 -> case
      call
      ( ?dJointCreateNull
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateAMotor
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateAMotor(dWorldID w, dJointGroupID group)

jointCreateAMotor(W, Group)
 -> case
      call
      ( ?dJointCreateAMotor
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreateLMotor
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreateLMotor(dWorldID w, dJointGroupID group)

jointCreateLMotor(W, Group)
 -> case
      call
      ( ?dJointCreateLMotor
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointCreatePlane2D
%% Args:       W, Group
%% Returns:    Exdl
%% C-API func: dJointID dJointCreatePlane2D(dWorldID w, dJointGroupID group)

jointCreatePlane2D(W, Group)
 -> case
      call
      ( ?dJointCreatePlane2D
      , <<W:?DWorldID
        , Group:?DJointGroupID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointDestroy
%% Args:       J
%% Returns:    ok
%% C-API func: void dJointDestroy(dJointID j)

jointDestroy(J)
 -> cast
    ( ?dJointDestroy
    , <<J:?DJointID
      >>
    )
.

%% Func:       jointGroupCreate
%% Args:       MaxSize
%% Returns:    Exdl
%% C-API func: dJointGroupID dJointGroupCreate(int max_size)

jointGroupCreate(MaxSize)
 -> case
      call
      ( ?dJointGroupCreate
      , <<MaxSize:?Int
        >>
      )
    of
      <<Exdl:?DJointGroupID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGroupDestroy
%% Args:       DJointGroupID
%% Returns:    ok
%% C-API func: void dJointGroupDestroy(dJointGroupID)

jointGroupDestroy(DJointGroupID)
 -> cast
    ( ?dJointGroupDestroy
    , <<DJointGroupID:?
      >>
    )
.

%% Func:       jointGroupEmpty
%% Args:       DJointGroupID
%% Returns:    ok
%% C-API func: void dJointGroupEmpty(dJointGroupID)

jointGroupEmpty(DJointGroupID)
 -> cast
    ( ?dJointGroupEmpty
    , <<DJointGroupID:?
      >>
    )
.

%% Func:       jointGetNumBodies
%% Args:       J
%% Returns:    Exdl
%% C-API func: int dJointGetNumBodies(dJointID j)

jointGetNumBodies(J)
 -> case
      call
      ( ?dJointGetNumBodies
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointAttach
%% Args:       J, Body1, Body2
%% Returns:    ok
%% C-API func: void dJointAttach(dJointID j, dBodyID body1, dBodyID body2)

jointAttach(J, Body1, Body2)
 -> cast
    ( ?dJointAttach
    , <<J:?DJointID
      , Body1:?DBodyID
      , Body2:?DBodyID
      >>
    )
.

%% Func:       jointSetData
%% Args:       J, Data
%% Returns:    ok
%% C-API func: void dJointSetData(dJointID j, void* data)

jointSetData(J, Data)
 -> cast
    ( ?dJointSetData
    , <<J:?DJointID
      , Data:?_PTR
      >>
    )
.

%% Func:       jointGetData
%% Args:       J
%% Returns:    Exdl
%% C-API func: void* dJointGetData(dJointID j)

jointGetData(J)
 -> case
      call
      ( ?dJointGetData
      , <<J:?DJointID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetType
%% Args:       J
%% Returns:    Exdl
%% C-API func: dJointType dJointGetType(dJointID j)

jointGetType(J)
 -> case
      call
      ( ?dJointGetType
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DJointType
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetBody
%% Args:       J, Index
%% Returns:    Exdl
%% C-API func: dBodyID dJointGetBody(dJointID j, int index)

jointGetBody(J, Index)
 -> case
      call
      ( ?dJointGetBody
      , <<J:?DJointID
        , Index:?Int
        >>
      )
    of
      <<Exdl:?DBodyID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointSetFeedback
%% Args:       DJointFeedback*
%% Returns:    ok
%% C-API func: void dJointSetFeedback(dJointID j, dJointFeedback* )

jointSetFeedback(DJointFeedback*)
 -> cast
    ( ?dJointSetFeedback
    , <<J:?DJointID
      , DJointFeedback*:?DJointID
      >>
    )
.

%% Func:       jointGetFeedback
%% Args:       J
%% Returns:    Exdl
%% C-API func: dJointFeedback* dJointGetFeedback(dJointID j)

jointGetFeedback(J)
 -> case
      call
      ( ?dJointGetFeedback
      , <<J:?DJointID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointSetBallAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetBallAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetBallAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetBallAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetBallAnchor2
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetBallAnchor2(dJointID j, dReal x, dReal y, dReal z)

jointSetBallAnchor2(J, X, Y, Z)
 -> cast
    ( ?dJointSetBallAnchor2
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetBallParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetBallParam(dJointID j, int parameter, dReal value)

jointSetBallParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetBallParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetHingeAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetHingeAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetHingeAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetHingeAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetHingeAnchorDelta
%% Args:       J, X, Y, Z, Ax, Ay, Az
%% Returns:    ok
%% C-API func: void dJointSetHingeAnchorDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az)

jointSetHingeAnchorDelta(J, X, Y, Z, Ax, Ay, Az)
 -> cast
    ( ?dJointSetHingeAnchorDelta
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      >>
    )
.

%% Func:       jointSetHingeAxis
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetHingeAxis(dJointID j, dReal x, dReal y, dReal z)

jointSetHingeAxis(J, X, Y, Z)
 -> cast
    ( ?dJointSetHingeAxis
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetHingeAxisOffset
%% Args:       J, X, Y, Z, Angle
%% Returns:    ok
%% C-API func: void dJointSetHingeAxisOffset(dJointID j, dReal x, dReal y, dReal z, dReal angle)

jointSetHingeAxisOffset(J, X, Y, Z, Angle)
 -> cast
    ( ?dJointSetHingeAxisOffset
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Angle:?DReal
      >>
    )
.

%% Func:       jointSetHingeParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetHingeParam(dJointID j, int parameter, dReal value)

jointSetHingeParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetHingeParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddHingeTorque
%% Args:       Joint, Torque
%% Returns:    ok
%% C-API func: void dJointAddHingeTorque(dJointID joint, dReal torque)

jointAddHingeTorque(Joint, Torque)
 -> cast
    ( ?dJointAddHingeTorque
    , <<Joint:?DJointID
      , Torque:?DReal
      >>
    )
.

%% Func:       jointSetSliderAxis
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetSliderAxis(dJointID j, dReal x, dReal y, dReal z)

jointSetSliderAxis(J, X, Y, Z)
 -> cast
    ( ?dJointSetSliderAxis
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetSliderAxisDelta
%% Args:       J, X, Y, Z, Ax, Ay, Az
%% Returns:    ok
%% C-API func: void dJointSetSliderAxisDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az)

jointSetSliderAxisDelta(J, X, Y, Z, Ax, Ay, Az)
 -> cast
    ( ?dJointSetSliderAxisDelta
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      >>
    )
.

%% Func:       jointSetSliderParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetSliderParam(dJointID j, int parameter, dReal value)

jointSetSliderParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetSliderParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddSliderForce
%% Args:       Joint, Force
%% Returns:    ok
%% C-API func: void dJointAddSliderForce(dJointID joint, dReal force)

jointAddSliderForce(Joint, Force)
 -> cast
    ( ?dJointAddSliderForce
    , <<Joint:?DJointID
      , Force:?DReal
      >>
    )
.

%% Func:       jointSetHinge2Anchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetHinge2Anchor(dJointID j, dReal x, dReal y, dReal z)

jointSetHinge2Anchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetHinge2Anchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetHinge2Axis1
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetHinge2Axis1(dJointID j, dReal x, dReal y, dReal z)

jointSetHinge2Axis1(J, X, Y, Z)
 -> cast
    ( ?dJointSetHinge2Axis1
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetHinge2Axis2
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetHinge2Axis2(dJointID j, dReal x, dReal y, dReal z)

jointSetHinge2Axis2(J, X, Y, Z)
 -> cast
    ( ?dJointSetHinge2Axis2
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetHinge2Param
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetHinge2Param(dJointID j, int parameter, dReal value)

jointSetHinge2Param(J, Parameter, Value)
 -> cast
    ( ?dJointSetHinge2Param
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddHinge2Torques
%% Args:       Joint, Torque1, Torque2
%% Returns:    ok
%% C-API func: void dJointAddHinge2Torques(dJointID joint, dReal torque1, dReal torque2)

jointAddHinge2Torques(Joint, Torque1, Torque2)
 -> cast
    ( ?dJointAddHinge2Torques
    , <<Joint:?DJointID
      , Torque1:?DReal
      , Torque2:?DReal
      >>
    )
.

%% Func:       jointSetUniversalAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetUniversalAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetUniversalAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetUniversalAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetUniversalAxis1
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetUniversalAxis1(dJointID j, dReal x, dReal y, dReal z)

jointSetUniversalAxis1(J, X, Y, Z)
 -> cast
    ( ?dJointSetUniversalAxis1
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetUniversalAxis2
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetUniversalAxis2(dJointID j, dReal x, dReal y, dReal z)

jointSetUniversalAxis2(J, X, Y, Z)
 -> cast
    ( ?dJointSetUniversalAxis2
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetUniversalParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetUniversalParam(dJointID j, int parameter, dReal value)

jointSetUniversalParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetUniversalParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddUniversalTorques
%% Args:       Joint, Torque1, Torque2
%% Returns:    ok
%% C-API func: void dJointAddUniversalTorques(dJointID joint, dReal torque1, dReal torque2)

jointAddUniversalTorques(Joint, Torque1, Torque2)
 -> cast
    ( ?dJointAddUniversalTorques
    , <<Joint:?DJointID
      , Torque1:?DReal
      , Torque2:?DReal
      >>
    )
.

%% Func:       jointSetPRAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPRAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetPRAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetPRAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPRAxis1
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPRAxis1(dJointID j, dReal x, dReal y, dReal z)

jointSetPRAxis1(J, X, Y, Z)
 -> cast
    ( ?dJointSetPRAxis1
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPRAxis2
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPRAxis2(dJointID j, dReal x, dReal y, dReal z)

jointSetPRAxis2(J, X, Y, Z)
 -> cast
    ( ?dJointSetPRAxis2
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPRParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPRParam(dJointID j, int parameter, dReal value)

jointSetPRParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPRParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddPRTorque
%% Args:       J, Torque
%% Returns:    ok
%% C-API func: void dJointAddPRTorque(dJointID j, dReal torque)

jointAddPRTorque(J, Torque)
 -> cast
    ( ?dJointAddPRTorque
    , <<J:?DJointID
      , Torque:?DReal
      >>
    )
.

%% Func:       jointSetPUAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPUAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetPUAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetPUAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPUAnchorDelta
%% Args:       J, X, Y, Z, Dx, Dy, Dz
%% Returns:    ok
%% C-API func: void dJointSetPUAnchorDelta(dJointID j, dReal x, dReal y, dReal z, dReal dx, dReal dy, dReal dz)

jointSetPUAnchorDelta(J, X, Y, Z, Dx, Dy, Dz)
 -> cast
    ( ?dJointSetPUAnchorDelta
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Dx:?DReal
      , Dy:?DReal
      , Dz:?DReal
      >>
    )
.

%% Func:       jointSetPUAxis1
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPUAxis1(dJointID j, dReal x, dReal y, dReal z)

jointSetPUAxis1(J, X, Y, Z)
 -> cast
    ( ?dJointSetPUAxis1
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPUAxis2
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPUAxis2(dJointID j, dReal x, dReal y, dReal z)

jointSetPUAxis2(J, X, Y, Z)
 -> cast
    ( ?dJointSetPUAxis2
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPUAxis3
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPUAxis3(dJointID j, dReal x, dReal y, dReal z)

jointSetPUAxis3(J, X, Y, Z)
 -> cast
    ( ?dJointSetPUAxis3
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPUAxisP
%% Args:       Id, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPUAxisP(dJointID id, dReal x, dReal y, dReal z)

jointSetPUAxisP(Id, X, Y, Z)
 -> cast
    ( ?dJointSetPUAxisP
    , <<Id:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPUParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPUParam(dJointID j, int parameter, dReal value)

jointSetPUParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPUParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddPUTorque
%% Args:       J, Torque
%% Returns:    ok
%% C-API func: void dJointAddPUTorque(dJointID j, dReal torque)

jointAddPUTorque(J, Torque)
 -> cast
    ( ?dJointAddPUTorque
    , <<J:?DJointID
      , Torque:?DReal
      >>
    )
.

%% Func:       jointSetPistonAnchor
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPistonAnchor(dJointID j, dReal x, dReal y, dReal z)

jointSetPistonAnchor(J, X, Y, Z)
 -> cast
    ( ?dJointSetPistonAnchor
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPistonAnchorOffset
%% Args:       J, X, Y, Z, Dx, Dy, Dz
%% Returns:    ok
%% C-API func: void dJointSetPistonAnchorOffset(dJointID j, dReal x, dReal y, dReal z, dReal dx, dReal dy, dReal dz)

jointSetPistonAnchorOffset(J, X, Y, Z, Dx, Dy, Dz)
 -> cast
    ( ?dJointSetPistonAnchorOffset
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Dx:?DReal
      , Dy:?DReal
      , Dz:?DReal
      >>
    )
.

%% Func:       jointSetPistonAxis
%% Args:       J, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetPistonAxis(dJointID j, dReal x, dReal y, dReal z)

jointSetPistonAxis(J, X, Y, Z)
 -> cast
    ( ?dJointSetPistonAxis
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetPistonAxisDelta
%% Args:       J, X, Y, Z, Ax, Ay, Az
%% Returns:    ok
%% C-API func: void dJointSetPistonAxisDelta(dJointID j, dReal x, dReal y, dReal z, dReal ax, dReal ay, dReal az)

jointSetPistonAxisDelta(J, X, Y, Z, Ax, Ay, Az)
 -> cast
    ( ?dJointSetPistonAxisDelta
    , <<J:?DJointID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      , Ax:?DReal
      , Ay:?DReal
      , Az:?DReal
      >>
    )
.

%% Func:       jointSetPistonParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPistonParam(dJointID j, int parameter, dReal value)

jointSetPistonParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPistonParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointAddPistonForce
%% Args:       Joint, Force
%% Returns:    ok
%% C-API func: void dJointAddPistonForce(dJointID joint, dReal force)

jointAddPistonForce(Joint, Force)
 -> cast
    ( ?dJointAddPistonForce
    , <<Joint:?DJointID
      , Force:?DReal
      >>
    )
.

%% Func:       jointSetFixed
%% Args:       J
%% Returns:    ok
%% C-API func: void dJointSetFixed(dJointID j)

jointSetFixed(J)
 -> cast
    ( ?dJointSetFixed
    , <<J:?DJointID
      >>
    )
.

%% Func:       jointSetFixedParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetFixedParam(dJointID j, int parameter, dReal value)

jointSetFixedParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetFixedParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetAMotorNumAxes
%% Args:       J, Num
%% Returns:    ok
%% C-API func: void dJointSetAMotorNumAxes(dJointID j, int num)

jointSetAMotorNumAxes(J, Num)
 -> cast
    ( ?dJointSetAMotorNumAxes
    , <<J:?DJointID
      , Num:?Int
      >>
    )
.

%% Func:       jointSetAMotorAxis
%% Args:       J, Anum, Rel, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetAMotorAxis(dJointID j, int anum, int rel, dReal x, dReal y, dReal z)

jointSetAMotorAxis(J, Anum, Rel, X, Y, Z)
 -> cast
    ( ?dJointSetAMotorAxis
    , <<J:?DJointID
      , Anum:?Int
      , Rel:?Int
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetAMotorAngle
%% Args:       J, Anum, Angle
%% Returns:    ok
%% C-API func: void dJointSetAMotorAngle(dJointID j, int anum, dReal angle)

jointSetAMotorAngle(J, Anum, Angle)
 -> cast
    ( ?dJointSetAMotorAngle
    , <<J:?DJointID
      , Anum:?Int
      , Angle:?DReal
      >>
    )
.

%% Func:       jointSetAMotorParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetAMotorParam(dJointID j, int parameter, dReal value)

jointSetAMotorParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetAMotorParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetAMotorMode
%% Args:       J, Mode
%% Returns:    ok
%% C-API func: void dJointSetAMotorMode(dJointID j, int mode)

jointSetAMotorMode(J, Mode)
 -> cast
    ( ?dJointSetAMotorMode
    , <<J:?DJointID
      , Mode:?Int
      >>
    )
.

%% Func:       jointAddAMotorTorques
%% Args:       J, Torque1, Torque2, Torque3
%% Returns:    ok
%% C-API func: void dJointAddAMotorTorques(dJointID j, dReal torque1, dReal torque2, dReal torque3)

jointAddAMotorTorques(J, Torque1, Torque2, Torque3)
 -> cast
    ( ?dJointAddAMotorTorques
    , <<J:?DJointID
      , Torque1:?DReal
      , Torque2:?DReal
      , Torque3:?DReal
      >>
    )
.

%% Func:       jointSetLMotorNumAxes
%% Args:       J, Num
%% Returns:    ok
%% C-API func: void dJointSetLMotorNumAxes(dJointID j, int num)

jointSetLMotorNumAxes(J, Num)
 -> cast
    ( ?dJointSetLMotorNumAxes
    , <<J:?DJointID
      , Num:?Int
      >>
    )
.

%% Func:       jointSetLMotorAxis
%% Args:       J, Anum, Rel, X, Y, Z
%% Returns:    ok
%% C-API func: void dJointSetLMotorAxis(dJointID j, int anum, int rel, dReal x, dReal y, dReal z)

jointSetLMotorAxis(J, Anum, Rel, X, Y, Z)
 -> cast
    ( ?dJointSetLMotorAxis
    , <<J:?DJointID
      , Anum:?Int
      , Rel:?Int
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       jointSetLMotorParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetLMotorParam(dJointID j, int parameter, dReal value)

jointSetLMotorParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetLMotorParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetPlane2DXParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPlane2DXParam(dJointID j, int parameter, dReal value)

jointSetPlane2DXParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPlane2DXParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetPlane2DYParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPlane2DYParam(dJointID j, int parameter, dReal value)

jointSetPlane2DYParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPlane2DYParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointSetPlane2DAngleParam
%% Args:       J, Parameter, Value
%% Returns:    ok
%% C-API func: void dJointSetPlane2DAngleParam(dJointID j, int parameter, dReal value)

jointSetPlane2DAngleParam(J, Parameter, Value)
 -> cast
    ( ?dJointSetPlane2DAngleParam
    , <<J:?DJointID
      , Parameter:?Int
      , Value:?DReal
      >>
    )
.

%% Func:       jointGetBallAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetBallAnchor(dJointID j, dVector3 result)

jointGetBallAnchor(J, Result)
 -> cast
    ( ?dJointGetBallAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetBallAnchor2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetBallAnchor2(dJointID j, dVector3 result)

jointGetBallAnchor2(J, Result)
 -> cast
    ( ?dJointGetBallAnchor2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetBallParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetBallParam(dJointID j, int parameter)

jointGetBallParam(J, Parameter)
 -> case
      call
      ( ?dJointGetBallParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHingeAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHingeAnchor(dJointID j, dVector3 result)

jointGetHingeAnchor(J, Result)
 -> cast
    ( ?dJointGetHingeAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHingeAnchor2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHingeAnchor2(dJointID j, dVector3 result)

jointGetHingeAnchor2(J, Result)
 -> cast
    ( ?dJointGetHingeAnchor2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHingeAxis
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHingeAxis(dJointID j, dVector3 result)

jointGetHingeAxis(J, Result)
 -> cast
    ( ?dJointGetHingeAxis
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHingeParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetHingeParam(dJointID j, int parameter)

jointGetHingeParam(J, Parameter)
 -> case
      call
      ( ?dJointGetHingeParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHingeAngle
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetHingeAngle(dJointID j)

jointGetHingeAngle(J)
 -> case
      call
      ( ?dJointGetHingeAngle
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHingeAngleRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetHingeAngleRate(dJointID j)

jointGetHingeAngleRate(J)
 -> case
      call
      ( ?dJointGetHingeAngleRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetSliderPosition
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetSliderPosition(dJointID j)

jointGetSliderPosition(J)
 -> case
      call
      ( ?dJointGetSliderPosition
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetSliderPositionRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetSliderPositionRate(dJointID j)

jointGetSliderPositionRate(J)
 -> case
      call
      ( ?dJointGetSliderPositionRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetSliderAxis
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetSliderAxis(dJointID j, dVector3 result)

jointGetSliderAxis(J, Result)
 -> cast
    ( ?dJointGetSliderAxis
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetSliderParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetSliderParam(dJointID j, int parameter)

jointGetSliderParam(J, Parameter)
 -> case
      call
      ( ?dJointGetSliderParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHinge2Anchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHinge2Anchor(dJointID j, dVector3 result)

jointGetHinge2Anchor(J, Result)
 -> cast
    ( ?dJointGetHinge2Anchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHinge2Anchor2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHinge2Anchor2(dJointID j, dVector3 result)

jointGetHinge2Anchor2(J, Result)
 -> cast
    ( ?dJointGetHinge2Anchor2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHinge2Axis1
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHinge2Axis1(dJointID j, dVector3 result)

jointGetHinge2Axis1(J, Result)
 -> cast
    ( ?dJointGetHinge2Axis1
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHinge2Axis2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetHinge2Axis2(dJointID j, dVector3 result)

jointGetHinge2Axis2(J, Result)
 -> cast
    ( ?dJointGetHinge2Axis2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetHinge2Param
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetHinge2Param(dJointID j, int parameter)

jointGetHinge2Param(J, Parameter)
 -> case
      call
      ( ?dJointGetHinge2Param
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHinge2Angle1
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetHinge2Angle1(dJointID j)

jointGetHinge2Angle1(J)
 -> case
      call
      ( ?dJointGetHinge2Angle1
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHinge2Angle1Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetHinge2Angle1Rate(dJointID j)

jointGetHinge2Angle1Rate(J)
 -> case
      call
      ( ?dJointGetHinge2Angle1Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetHinge2Angle2Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetHinge2Angle2Rate(dJointID j)

jointGetHinge2Angle2Rate(J)
 -> case
      call
      ( ?dJointGetHinge2Angle2Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetUniversalAnchor(dJointID j, dVector3 result)

jointGetUniversalAnchor(J, Result)
 -> cast
    ( ?dJointGetUniversalAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetUniversalAnchor2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetUniversalAnchor2(dJointID j, dVector3 result)

jointGetUniversalAnchor2(J, Result)
 -> cast
    ( ?dJointGetUniversalAnchor2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetUniversalAxis1
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetUniversalAxis1(dJointID j, dVector3 result)

jointGetUniversalAxis1(J, Result)
 -> cast
    ( ?dJointGetUniversalAxis1
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetUniversalAxis2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetUniversalAxis2(dJointID j, dVector3 result)

jointGetUniversalAxis2(J, Result)
 -> cast
    ( ?dJointGetUniversalAxis2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetUniversalParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetUniversalParam(dJointID j, int parameter)

jointGetUniversalParam(J, Parameter)
 -> case
      call
      ( ?dJointGetUniversalParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAngles
%% Args:       J
%% Returns:    { Angle1, Angle2 }
%% C-API func: void dJointGetUniversalAngles(dJointID j, dReal* angle1, dReal* angle2)

jointGetUniversalAngles(J)
 -> case
      call
      ( ?dJointGetUniversalAngles
      , <<J:?DJointID
        >>
      )
    of
      <<Angle1:?_PTR
      , Angle2:?_PTR
      >>
        -> { Angle1, Angle2 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAngle1
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetUniversalAngle1(dJointID j)

jointGetUniversalAngle1(J)
 -> case
      call
      ( ?dJointGetUniversalAngle1
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAngle2
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetUniversalAngle2(dJointID j)

jointGetUniversalAngle2(J)
 -> case
      call
      ( ?dJointGetUniversalAngle2
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAngle1Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetUniversalAngle1Rate(dJointID j)

jointGetUniversalAngle1Rate(J)
 -> case
      call
      ( ?dJointGetUniversalAngle1Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetUniversalAngle2Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetUniversalAngle2Rate(dJointID j)

jointGetUniversalAngle2Rate(J)
 -> case
      call
      ( ?dJointGetUniversalAngle2Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPRAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPRAnchor(dJointID j, dVector3 result)

jointGetPRAnchor(J, Result)
 -> cast
    ( ?dJointGetPRAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPRPosition
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPRPosition(dJointID j)

jointGetPRPosition(J)
 -> case
      call
      ( ?dJointGetPRPosition
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPRPositionRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPRPositionRate(dJointID j)

jointGetPRPositionRate(J)
 -> case
      call
      ( ?dJointGetPRPositionRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPRAxis1
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPRAxis1(dJointID j, dVector3 result)

jointGetPRAxis1(J, Result)
 -> cast
    ( ?dJointGetPRAxis1
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPRAxis2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPRAxis2(dJointID j, dVector3 result)

jointGetPRAxis2(J, Result)
 -> cast
    ( ?dJointGetPRAxis2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPRParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetPRParam(dJointID j, int parameter)

jointGetPRParam(J, Parameter)
 -> case
      call
      ( ?dJointGetPRParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPUAnchor(dJointID j, dVector3 result)

jointGetPUAnchor(J, Result)
 -> cast
    ( ?dJointGetPUAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPUPosition
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUPosition(dJointID j)

jointGetPUPosition(J)
 -> case
      call
      ( ?dJointGetPUPosition
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUPositionRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUPositionRate(dJointID j)

jointGetPUPositionRate(J)
 -> case
      call
      ( ?dJointGetPUPositionRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAxis1
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPUAxis1(dJointID j, dVector3 result)

jointGetPUAxis1(J, Result)
 -> cast
    ( ?dJointGetPUAxis1
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPUAxis2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPUAxis2(dJointID j, dVector3 result)

jointGetPUAxis2(J, Result)
 -> cast
    ( ?dJointGetPUAxis2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPUAxis3
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPUAxis3(dJointID j, dVector3 result)

jointGetPUAxis3(J, Result)
 -> cast
    ( ?dJointGetPUAxis3
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPUAxisP
%% Args:       Id, Result
%% Returns:    ok
%% C-API func: void dJointGetPUAxisP(dJointID id, dVector3 result)

jointGetPUAxisP(Id, Result)
 -> cast
    ( ?dJointGetPUAxisP
    , <<Id:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPUAngles
%% Args:       J
%% Returns:    { Angle1, Angle2 }
%% C-API func: void dJointGetPUAngles(dJointID j, dReal* angle1, dReal* angle2)

jointGetPUAngles(J)
 -> case
      call
      ( ?dJointGetPUAngles
      , <<J:?DJointID
        >>
      )
    of
      <<Angle1:?_PTR
      , Angle2:?_PTR
      >>
        -> { Angle1, Angle2 }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAngle1
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUAngle1(dJointID j)

jointGetPUAngle1(J)
 -> case
      call
      ( ?dJointGetPUAngle1
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAngle1Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUAngle1Rate(dJointID j)

jointGetPUAngle1Rate(J)
 -> case
      call
      ( ?dJointGetPUAngle1Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAngle2
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUAngle2(dJointID j)

jointGetPUAngle2(J)
 -> case
      call
      ( ?dJointGetPUAngle2
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUAngle2Rate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUAngle2Rate(dJointID j)

jointGetPUAngle2Rate(J)
 -> case
      call
      ( ?dJointGetPUAngle2Rate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPUParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetPUParam(dJointID j, int parameter)

jointGetPUParam(J, Parameter)
 -> case
      call
      ( ?dJointGetPUParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPistonPosition
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPistonPosition(dJointID j)

jointGetPistonPosition(J)
 -> case
      call
      ( ?dJointGetPistonPosition
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPistonPositionRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPistonPositionRate(dJointID j)

jointGetPistonPositionRate(J)
 -> case
      call
      ( ?dJointGetPistonPositionRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPistonAngle
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPistonAngle(dJointID j)

jointGetPistonAngle(J)
 -> case
      call
      ( ?dJointGetPistonAngle
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPistonAngleRate
%% Args:       J
%% Returns:    Exdl
%% C-API func: dReal dJointGetPistonAngleRate(dJointID j)

jointGetPistonAngleRate(J)
 -> case
      call
      ( ?dJointGetPistonAngleRate
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetPistonAnchor
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPistonAnchor(dJointID j, dVector3 result)

jointGetPistonAnchor(J, Result)
 -> cast
    ( ?dJointGetPistonAnchor
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPistonAnchor2
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPistonAnchor2(dJointID j, dVector3 result)

jointGetPistonAnchor2(J, Result)
 -> cast
    ( ?dJointGetPistonAnchor2
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPistonAxis
%% Args:       J, Result
%% Returns:    ok
%% C-API func: void dJointGetPistonAxis(dJointID j, dVector3 result)

jointGetPistonAxis(J, Result)
 -> cast
    ( ?dJointGetPistonAxis
    , <<J:?DJointID
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetPistonParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetPistonParam(dJointID j, int parameter)

jointGetPistonParam(J, Parameter)
 -> case
      call
      ( ?dJointGetPistonParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorNumAxes
%% Args:       J
%% Returns:    Exdl
%% C-API func: int dJointGetAMotorNumAxes(dJointID j)

jointGetAMotorNumAxes(J)
 -> case
      call
      ( ?dJointGetAMotorNumAxes
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorAxis
%% Args:       J, Anum, Result
%% Returns:    ok
%% C-API func: void dJointGetAMotorAxis(dJointID j, int anum, dVector3 result)

jointGetAMotorAxis(J, Anum, Result)
 -> cast
    ( ?dJointGetAMotorAxis
    , <<J:?DJointID
      , Anum:?Int
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetAMotorAxisRel
%% Args:       J, Anum
%% Returns:    Exdl
%% C-API func: int dJointGetAMotorAxisRel(dJointID j, int anum)

jointGetAMotorAxisRel(J, Anum)
 -> case
      call
      ( ?dJointGetAMotorAxisRel
      , <<J:?DJointID
        , Anum:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorAngle
%% Args:       J, Anum
%% Returns:    Exdl
%% C-API func: dReal dJointGetAMotorAngle(dJointID j, int anum)

jointGetAMotorAngle(J, Anum)
 -> case
      call
      ( ?dJointGetAMotorAngle
      , <<J:?DJointID
        , Anum:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorAngleRate
%% Args:       J, Anum
%% Returns:    Exdl
%% C-API func: dReal dJointGetAMotorAngleRate(dJointID j, int anum)

jointGetAMotorAngleRate(J, Anum)
 -> case
      call
      ( ?dJointGetAMotorAngleRate
      , <<J:?DJointID
        , Anum:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetAMotorParam(dJointID j, int parameter)

jointGetAMotorParam(J, Parameter)
 -> case
      call
      ( ?dJointGetAMotorParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetAMotorMode
%% Args:       J
%% Returns:    Exdl
%% C-API func: int dJointGetAMotorMode(dJointID j)

jointGetAMotorMode(J)
 -> case
      call
      ( ?dJointGetAMotorMode
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetLMotorNumAxes
%% Args:       J
%% Returns:    Exdl
%% C-API func: int dJointGetLMotorNumAxes(dJointID j)

jointGetLMotorNumAxes(J)
 -> case
      call
      ( ?dJointGetLMotorNumAxes
      , <<J:?DJointID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetLMotorAxis
%% Args:       J, Anum, Result
%% Returns:    ok
%% C-API func: void dJointGetLMotorAxis(dJointID j, int anum, dVector3 result)

jointGetLMotorAxis(J, Anum, Result)
 -> cast
    ( ?dJointGetLMotorAxis
    , <<J:?DJointID
      , Anum:?Int
      , Result:?DVector3
      >>
    )
.

%% Func:       jointGetLMotorParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetLMotorParam(dJointID j, int parameter)

jointGetLMotorParam(J, Parameter)
 -> case
      call
      ( ?dJointGetLMotorParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       jointGetFixedParam
%% Args:       J, Parameter
%% Returns:    Exdl
%% C-API func: dReal dJointGetFixedParam(dJointID j, int parameter)

jointGetFixedParam(J, Parameter)
 -> case
      call
      ( ?dJointGetFixedParam
      , <<J:?DJointID
        , Parameter:?Int
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       connectingJoint
%% Args:       DBodyID
%% Returns:    Exdl
%% C-API func: dJointID dConnectingJoint(dBodyID b, dBodyID)

connectingJoint(DBodyID)
 -> case
      call
      ( ?dConnectingJoint
      , <<B:?DBodyID
        , DBodyID:?DBodyID
        >>
      )
    of
      <<Exdl:?DJointID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       connectingJointList
%% Args:       DJointID*
%% Returns:    Exdl
%% C-API func: int dConnectingJointList(dBodyID b, dBodyID, dJointID*)

connectingJointList(DJointID*)
 -> case
      call
      ( ?dConnectingJointList
      , <<B:?DBodyID
        , DBodyID:?DBodyID
        , DJointID*:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       areConnected
%% Args:       DBodyID
%% Returns:    Exdl
%% C-API func: int dAreConnected(dBodyID b, dBodyID)

areConnected(DBodyID)
 -> case
      call
      ( ?dAreConnected
      , <<B:?DBodyID
        , DBodyID:?DBodyID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       areConnectedExcluding
%% Args:       Body1, Body2, JointType
%% Returns:    Exdl
%% C-API func: int dAreConnectedExcluding(dBodyID body1, dBodyID body2, int joint_type)

areConnectedExcluding(Body1, Body2, JointType)
 -> case
      call
      ( ?dAreConnectedExcluding
      , <<Body1:?DBodyID
        , Body2:?DBodyID
        , JointType:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% odecpp.h

%% collision_space.h

%% Func:       simpleSpaceCreate
%% Args:       Space
%% Returns:    Exdl
%% C-API func: dSpaceID dSimpleSpaceCreate(dSpaceID space)

simpleSpaceCreate(Space)
 -> case
      call
      ( ?dSimpleSpaceCreate
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?DSpaceID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       hashSpaceCreate
%% Args:       Space
%% Returns:    Exdl
%% C-API func: dSpaceID dHashSpaceCreate(dSpaceID space)

hashSpaceCreate(Space)
 -> case
      call
      ( ?dHashSpaceCreate
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?DSpaceID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       quadTreeSpaceCreate
%% Args:       Space, Center, Extents, Depth
%% Returns:    Exdl
%% C-API func: dSpaceID dQuadTreeSpaceCreate(dSpaceID space, dVector3 Center, dVector3 Extents, int Depth)

quadTreeSpaceCreate(Space, Center, Extents, Depth)
 -> case
      call
      ( ?dQuadTreeSpaceCreate
      , <<Space:?DSpaceID
        , Center:?DVector3
        , Extents:?DVector3
        , Depth:?Int
        >>
      )
    of
      <<Exdl:?DSpaceID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       sweepAndPruneSpaceCreate
%% Args:       Space, Axisorder
%% Returns:    Exdl
%% C-API func: dSpaceID dSweepAndPruneSpaceCreate(dSpaceID space, int axisorder)

sweepAndPruneSpaceCreate(Space, Axisorder)
 -> case
      call
      ( ?dSweepAndPruneSpaceCreate
      , <<Space:?DSpaceID
        , Axisorder:?Int
        >>
      )
    of
      <<Exdl:?DSpaceID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceDestroy
%% Args:       Space
%% Returns:    ok
%% C-API func: void dSpaceDestroy(dSpaceID space)

spaceDestroy(Space)
 -> cast
    ( ?dSpaceDestroy
    , <<Space:?DSpaceID
      >>
    )
.

%% Func:       hashSpaceSetLevels
%% Args:       Space, Minlevel, Maxlevel
%% Returns:    ok
%% C-API func: void dHashSpaceSetLevels(dSpaceID space, int minlevel, int maxlevel)

hashSpaceSetLevels(Space, Minlevel, Maxlevel)
 -> cast
    ( ?dHashSpaceSetLevels
    , <<Space:?DSpaceID
      , Minlevel:?Int
      , Maxlevel:?Int
      >>
    )
.

%% Func:       hashSpaceGetLevels
%% Args:       Space
%% Returns:    { Minlevel, Maxlevel }
%% C-API func: void dHashSpaceGetLevels(dSpaceID space, int* minlevel, int* maxlevel)

hashSpaceGetLevels(Space)
 -> case
      call
      ( ?dHashSpaceGetLevels
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Minlevel:?Int
      , Maxlevel:?Int
      >>
        -> { Minlevel, Maxlevel }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceSetCleanup
%% Args:       Space, Mode
%% Returns:    ok
%% C-API func: void dSpaceSetCleanup(dSpaceID space, int mode)

spaceSetCleanup(Space, Mode)
 -> cast
    ( ?dSpaceSetCleanup
    , <<Space:?DSpaceID
      , Mode:?Int
      >>
    )
.

%% Func:       spaceGetCleanup
%% Args:       Space
%% Returns:    Exdl
%% C-API func: int dSpaceGetCleanup(dSpaceID space)

spaceGetCleanup(Space)
 -> case
      call
      ( ?dSpaceGetCleanup
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceSetSublevel
%% Args:       Space, Sublevel
%% Returns:    ok
%% C-API func: void dSpaceSetSublevel(dSpaceID space, int sublevel)

spaceSetSublevel(Space, Sublevel)
 -> cast
    ( ?dSpaceSetSublevel
    , <<Space:?DSpaceID
      , Sublevel:?Int
      >>
    )
.

%% Func:       spaceGetSublevel
%% Args:       Space
%% Returns:    Exdl
%% C-API func: int dSpaceGetSublevel(dSpaceID space)

spaceGetSublevel(Space)
 -> case
      call
      ( ?dSpaceGetSublevel
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceAdd
%% Args:       Space, G
%% Returns:    ok
%% C-API func: void dSpaceAdd(dSpaceID space, dGeomID g)

spaceAdd(Space, G)
 -> cast
    ( ?dSpaceAdd
    , <<Space:?DSpaceID
      , G:?DGeomID
      >>
    )
.

%% Func:       spaceRemove
%% Args:       Space, G
%% Returns:    ok
%% C-API func: void dSpaceRemove(dSpaceID space, dGeomID g)

spaceRemove(Space, G)
 -> cast
    ( ?dSpaceRemove
    , <<Space:?DSpaceID
      , G:?DGeomID
      >>
    )
.

%% Func:       spaceQuery
%% Args:       Space, G
%% Returns:    Exdl
%% C-API func: int dSpaceQuery(dSpaceID space, dGeomID g)

spaceQuery(Space, G)
 -> case
      call
      ( ?dSpaceQuery
      , <<Space:?DSpaceID
        , G:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceClean
%% Args:       Space
%% Returns:    ok
%% C-API func: void dSpaceClean(dSpaceID space)

spaceClean(Space)
 -> cast
    ( ?dSpaceClean
    , <<Space:?DSpaceID
      >>
    )
.

%% Func:       spaceGetNumGeoms
%% Args:       Space
%% Returns:    Exdl
%% C-API func: int dSpaceGetNumGeoms(dSpaceID space)

spaceGetNumGeoms(Space)
 -> case
      call
      ( ?dSpaceGetNumGeoms
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceGetGeom
%% Args:       Space, I
%% Returns:    Exdl
%% C-API func: dGeomID dSpaceGetGeom(dSpaceID space, int i)

spaceGetGeom(Space, I)
 -> case
      call
      ( ?dSpaceGetGeom
      , <<Space:?DSpaceID
        , I:?Int
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceGetClass
%% Args:       Space
%% Returns:    Exdl
%% C-API func: int dSpaceGetClass(dSpaceID space)

spaceGetClass(Space)
 -> case
      call
      ( ?dSpaceGetClass
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% collision.h

%% Func:       geomDestroy
%% Args:       Geom
%% Returns:    ok
%% C-API func: void dGeomDestroy(dGeomID geom)

geomDestroy(Geom)
 -> cast
    ( ?dGeomDestroy
    , <<Geom:?DGeomID
      >>
    )
.

%% Func:       geomSetData
%% Args:       Geom, Data
%% Returns:    ok
%% C-API func: void dGeomSetData(dGeomID geom, void* data)

geomSetData(Geom, Data)
 -> cast
    ( ?dGeomSetData
    , <<Geom:?DGeomID
      , Data:?_PTR
      >>
    )
.

%% Func:       geomGetData
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: void* dGeomGetData(dGeomID geom)

geomGetData(Geom)
 -> case
      call
      ( ?dGeomGetData
      , <<Geom:?DGeomID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSetBody
%% Args:       Geom, Body
%% Returns:    ok
%% C-API func: void dGeomSetBody(dGeomID geom, dBodyID body)

geomSetBody(Geom, Body)
 -> cast
    ( ?dGeomSetBody
    , <<Geom:?DGeomID
      , Body:?DBodyID
      >>
    )
.

%% Func:       geomGetBody
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: dBodyID dGeomGetBody(dGeomID geom)

geomGetBody(Geom)
 -> case
      call
      ( ?dGeomGetBody
      , <<Geom:?DGeomID
        >>
      )
    of
      <<Exdl:?DBodyID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSetPosition
%% Args:       Geom, X, Y, Z
%% Returns:    ok
%% C-API func: void dGeomSetPosition(dGeomID geom, dReal x, dReal y, dReal z)

geomSetPosition(Geom, X, Y, Z)
 -> cast
    ( ?dGeomSetPosition
    , <<Geom:?DGeomID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       geomSetRotation
%% Args:       Geom, R
%% Returns:    ok
%% C-API func: void dGeomSetRotation(dGeomID geom, const dMatrix3 R)

geomSetRotation(Geom, R)
 -> cast
    ( ?dGeomSetRotation
    , <<Geom:?DGeomID
      , R:?DMatrix3
      >>
    )
.

%% Func:       geomSetQuaternion
%% Args:       Geom, Q
%% Returns:    ok
%% C-API func: void dGeomSetQuaternion(dGeomID geom, const dQuaternion Q)

geomSetQuaternion(Geom, Q)
 -> cast
    ( ?dGeomSetQuaternion
    , <<Geom:?DGeomID
      , Q:?DQuaternion
      >>
    )
.

%% Func:       geomGetPosition
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: const dReal* dGeomGetPosition(dGeomID geom)

geomGetPosition(Geom)
 -> case
      call
      ( ?dGeomGetPosition
      , <<Geom:?DGeomID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCopyPosition
%% Args:       Geom, Pos
%% Returns:    ok
%% C-API func: void dGeomCopyPosition(dGeomID geom, dVector3 pos)

geomCopyPosition(Geom, Pos)
 -> cast
    ( ?dGeomCopyPosition
    , <<Geom:?DGeomID
      , Pos:?DVector3
      >>
    )
.

%% Func:       geomGetRotation
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: const dReal* dGeomGetRotation(dGeomID geom)

geomGetRotation(Geom)
 -> case
      call
      ( ?dGeomGetRotation
      , <<Geom:?DGeomID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCopyRotation
%% Args:       Geom, R
%% Returns:    ok
%% C-API func: void dGeomCopyRotation(dGeomID geom, dMatrix3 R)

geomCopyRotation(Geom, R)
 -> cast
    ( ?dGeomCopyRotation
    , <<Geom:?DGeomID
      , R:?DMatrix3
      >>
    )
.

%% Func:       geomGetQuaternion
%% Args:       Geom, Result
%% Returns:    ok
%% C-API func: void dGeomGetQuaternion(dGeomID geom, dQuaternion result)

geomGetQuaternion(Geom, Result)
 -> cast
    ( ?dGeomGetQuaternion
    , <<Geom:?DGeomID
      , Result:?DQuaternion
      >>
    )
.

%% Func:       geomGetAABB
%% Args:       Geom, Aabb[6]
%% Returns:    ok
%% C-API func: void dGeomGetAABB(dGeomID geom, dReal aabb[6])

geomGetAABB(Geom, Aabb[6])
 -> cast
    ( ?dGeomGetAABB
    , <<Geom:?DGeomID
      , Aabb[6]:?DReal
      >>
    )
.

%% Func:       geomIsSpace
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: int dGeomIsSpace(dGeomID geom)

geomIsSpace(Geom)
 -> case
      call
      ( ?dGeomIsSpace
      , <<Geom:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomGetSpace
%% Args:       DGeomID
%% Returns:    Exdl
%% C-API func: dSpaceID dGeomGetSpace(dGeomID)

geomGetSpace(DGeomID)
 -> case
      call
      ( ?dGeomGetSpace
      , <<DGeomID:?
        >>
      )
    of
      <<Exdl:?DSpaceID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomGetClass
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: int dGeomGetClass(dGeomID geom)

geomGetClass(Geom)
 -> case
      call
      ( ?dGeomGetClass
      , <<Geom:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSetCategoryBits
%% Args:       Geom, Bits
%% Returns:    ok
%% C-API func: void dGeomSetCategoryBits(dGeomID geom, unsigned long bits)

geomSetCategoryBits(Geom, Bits)
 -> cast
    ( ?dGeomSetCategoryBits
    , <<Geom:?DGeomID
      , Bits:?Ulong
      >>
    )
.

%% Func:       geomSetCollideBits
%% Args:       Geom, Bits
%% Returns:    ok
%% C-API func: void dGeomSetCollideBits(dGeomID geom, unsigned long bits)

geomSetCollideBits(Geom, Bits)
 -> cast
    ( ?dGeomSetCollideBits
    , <<Geom:?DGeomID
      , Bits:?Ulong
      >>
    )
.

%% Func:       geomGetCategoryBits
%% Args:       DGeomID
%% Returns:    Exdl
%% C-API func: unsigned long dGeomGetCategoryBits(dGeomID)

geomGetCategoryBits(DGeomID)
 -> case
      call
      ( ?dGeomGetCategoryBits
      , <<DGeomID:?
        >>
      )
    of
      <<Exdl:?Ulong
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomGetCollideBits
%% Args:       DGeomID
%% Returns:    Exdl
%% C-API func: unsigned long dGeomGetCollideBits(dGeomID)

geomGetCollideBits(DGeomID)
 -> case
      call
      ( ?dGeomGetCollideBits
      , <<DGeomID:?
        >>
      )
    of
      <<Exdl:?Ulong
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomEnable
%% Args:       Geom
%% Returns:    ok
%% C-API func: void dGeomEnable(dGeomID geom)

geomEnable(Geom)
 -> cast
    ( ?dGeomEnable
    , <<Geom:?DGeomID
      >>
    )
.

%% Func:       geomDisable
%% Args:       Geom
%% Returns:    ok
%% C-API func: void dGeomDisable(dGeomID geom)

geomDisable(Geom)
 -> cast
    ( ?dGeomDisable
    , <<Geom:?DGeomID
      >>
    )
.

%% Func:       geomIsEnabled
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: int dGeomIsEnabled(dGeomID geom)

geomIsEnabled(Geom)
 -> case
      call
      ( ?dGeomIsEnabled
      , <<Geom:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSetOffsetPosition
%% Args:       Geom, X, Y, Z
%% Returns:    ok
%% C-API func: void dGeomSetOffsetPosition(dGeomID geom, dReal x, dReal y, dReal z)

geomSetOffsetPosition(Geom, X, Y, Z)
 -> cast
    ( ?dGeomSetOffsetPosition
    , <<Geom:?DGeomID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       geomSetOffsetRotation
%% Args:       Geom, R
%% Returns:    ok
%% C-API func: void dGeomSetOffsetRotation(dGeomID geom, const dMatrix3 R)

geomSetOffsetRotation(Geom, R)
 -> cast
    ( ?dGeomSetOffsetRotation
    , <<Geom:?DGeomID
      , R:?DMatrix3
      >>
    )
.

%% Func:       geomSetOffsetQuaternion
%% Args:       Geom, Q
%% Returns:    ok
%% C-API func: void dGeomSetOffsetQuaternion(dGeomID geom, const dQuaternion Q)

geomSetOffsetQuaternion(Geom, Q)
 -> cast
    ( ?dGeomSetOffsetQuaternion
    , <<Geom:?DGeomID
      , Q:?DQuaternion
      >>
    )
.

%% Func:       geomSetOffsetWorldPosition
%% Args:       Geom, X, Y, Z
%% Returns:    ok
%% C-API func: void dGeomSetOffsetWorldPosition(dGeomID geom, dReal x, dReal y, dReal z)

geomSetOffsetWorldPosition(Geom, X, Y, Z)
 -> cast
    ( ?dGeomSetOffsetWorldPosition
    , <<Geom:?DGeomID
      , X:?DReal
      , Y:?DReal
      , Z:?DReal
      >>
    )
.

%% Func:       geomSetOffsetWorldRotation
%% Args:       Geom, R
%% Returns:    ok
%% C-API func: void dGeomSetOffsetWorldRotation(dGeomID geom, const dMatrix3 R)

geomSetOffsetWorldRotation(Geom, R)
 -> cast
    ( ?dGeomSetOffsetWorldRotation
    , <<Geom:?DGeomID
      , R:?DMatrix3
      >>
    )
.

%% Func:       geomSetOffsetWorldQuaternion
%% Args:       Geom, DQuaternion
%% Returns:    ok
%% C-API func: void dGeomSetOffsetWorldQuaternion(dGeomID geom, const dQuaternion)

geomSetOffsetWorldQuaternion(Geom, DQuaternion)
 -> cast
    ( ?dGeomSetOffsetWorldQuaternion
    , <<Geom:?DGeomID
      , DQuaternion:?Const
      >>
    )
.

%% Func:       geomClearOffset
%% Args:       Geom
%% Returns:    ok
%% C-API func: void dGeomClearOffset(dGeomID geom)

geomClearOffset(Geom)
 -> cast
    ( ?dGeomClearOffset
    , <<Geom:?DGeomID
      >>
    )
.

%% Func:       geomIsOffset
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: int dGeomIsOffset(dGeomID geom)

geomIsOffset(Geom)
 -> case
      call
      ( ?dGeomIsOffset
      , <<Geom:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomGetOffsetPosition
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: const dReal* dGeomGetOffsetPosition(dGeomID geom)

geomGetOffsetPosition(Geom)
 -> case
      call
      ( ?dGeomGetOffsetPosition
      , <<Geom:?DGeomID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCopyOffsetPosition
%% Args:       Geom, Pos
%% Returns:    ok
%% C-API func: void dGeomCopyOffsetPosition(dGeomID geom, dVector3 pos)

geomCopyOffsetPosition(Geom, Pos)
 -> cast
    ( ?dGeomCopyOffsetPosition
    , <<Geom:?DGeomID
      , Pos:?DVector3
      >>
    )
.

%% Func:       geomGetOffsetRotation
%% Args:       Geom
%% Returns:    Exdl
%% C-API func: const dReal* dGeomGetOffsetRotation(dGeomID geom)

geomGetOffsetRotation(Geom)
 -> case
      call
      ( ?dGeomGetOffsetRotation
      , <<Geom:?DGeomID
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCopyOffsetRotation
%% Args:       Geom, R
%% Returns:    ok
%% C-API func: void dGeomCopyOffsetRotation(dGeomID geom, dMatrix3 R)

geomCopyOffsetRotation(Geom, R)
 -> cast
    ( ?dGeomCopyOffsetRotation
    , <<Geom:?DGeomID
      , R:?DMatrix3
      >>
    )
.

%% Func:       geomGetOffsetQuaternion
%% Args:       Geom, Result
%% Returns:    ok
%% C-API func: void dGeomGetOffsetQuaternion(dGeomID geom, dQuaternion result)

geomGetOffsetQuaternion(Geom, Result)
 -> cast
    ( ?dGeomGetOffsetQuaternion
    , <<Geom:?DGeomID
      , Result:?DQuaternion
      >>
    )
.

%% Func:       collide
%% Args:       O1, O2, Flags, Contact, Skip
%% Returns:    Exdl
%% C-API func: int dCollide(dGeomID o1, dGeomID o2, int flags, dContactGeom* contact, int skip)

collide(O1, O2, Flags, Contact, Skip)
 -> case
      call
      ( ?dCollide
      , <<O1:?DGeomID
        , O2:?DGeomID
        , Flags:?Int
        , Contact:?_PTR
        , Skip:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       spaceCollide
%% Args:       Space, Data, Callback
%% Returns:    ok
%% C-API func: void dSpaceCollide(dSpaceID space, void* data, dNearCallback* callback)

spaceCollide(Space, Data, Callback)
 -> cast
    ( ?dSpaceCollide
    , <<Space:?DSpaceID
      , Data:?_PTR
      , Callback:?_PTR
      >>
    )
.

%% Func:       spaceCollide2
%% Args:       Space1, Space2, Data, Callback
%% Returns:    ok
%% C-API func: void dSpaceCollide2(dGeomID space1, dGeomID space2, void* data, dNearCallback* callback)

spaceCollide2(Space1, Space2, Data, Callback)
 -> cast
    ( ?dSpaceCollide2
    , <<Space1:?DGeomID
      , Space2:?DGeomID
      , Data:?_PTR
      , Callback:?_PTR
      >>
    )
.

%% Func:       createSphere
%% Args:       Space, Radius
%% Returns:    Exdl
%% C-API func: dGeomID dCreateSphere(dSpaceID space, dReal radius)

createSphere(Space, Radius)
 -> case
      call
      ( ?dCreateSphere
      , <<Space:?DSpaceID
        , Radius:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSphereSetRadius
%% Args:       Sphere, Radius
%% Returns:    ok
%% C-API func: void dGeomSphereSetRadius(dGeomID sphere, dReal radius)

geomSphereSetRadius(Sphere, Radius)
 -> cast
    ( ?dGeomSphereSetRadius
    , <<Sphere:?DGeomID
      , Radius:?DReal
      >>
    )
.

%% Func:       geomSphereGetRadius
%% Args:       Sphere
%% Returns:    Exdl
%% C-API func: dReal dGeomSphereGetRadius(dGeomID sphere)

geomSphereGetRadius(Sphere)
 -> case
      call
      ( ?dGeomSphereGetRadius
      , <<Sphere:?DGeomID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSpherePointDepth
%% Args:       Sphere, X, Y, Z
%% Returns:    Exdl
%% C-API func: dReal dGeomSpherePointDepth(dGeomID sphere, dReal x, dReal y, dReal z)

geomSpherePointDepth(Sphere, X, Y, Z)
 -> case
      call
      ( ?dGeomSpherePointDepth
      , <<Sphere:?DGeomID
        , X:?DReal
        , Y:?DReal
        , Z:?DReal
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createConvex
%% Args:       Space, Planes, Planecount, Points, Pointcount, Polygons
%% Returns:    Exdl
%% C-API func: dGeomID dCreateConvex(dSpaceID space, dReal* _planes, unsigned int _planecount, dReal* _points, unsigned int _pointcount,unsigned int* _polygons)

createConvex(Space, Planes, Planecount, Points, Pointcount, Polygons)
 -> case
      call
      ( ?dCreateConvex
      , <<Space:?DSpaceID
        , Planes:?_PTR
        , Planecount:?Uint
        , Points:?_PTR
        , Pointcount:?Uint
        , Polygons:?_PTR
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomSetConvex
%% Args:       G, Planes, Count, Points, Pointcount, Polygons
%% Returns:    ok
%% C-API func: void dGeomSetConvex(dGeomID g, dReal* _planes, unsigned int _count, dReal* _points, unsigned int _pointcount,unsigned int* _polygons)

geomSetConvex(G, Planes, Count, Points, Pointcount, Polygons)
 -> cast
    ( ?dGeomSetConvex
    , <<G:?DGeomID
      , Planes:?_PTR
      , Count:?Uint
      , Points:?_PTR
      , Pointcount:?Uint
      , Polygons:?_PTR
      >>
    )
.

%% Func:       createBox
%% Args:       Space, Lx, Ly, Lz
%% Returns:    Exdl
%% C-API func: dGeomID dCreateBox(dSpaceID space, dReal lx, dReal ly, dReal lz)

createBox(Space, Lx, Ly, Lz)
 -> case
      call
      ( ?dCreateBox
      , <<Space:?DSpaceID
        , Lx:?DReal
        , Ly:?DReal
        , Lz:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomBoxSetLengths
%% Args:       Box, Lx, Ly, Lz
%% Returns:    ok
%% C-API func: void dGeomBoxSetLengths(dGeomID box, dReal lx, dReal ly, dReal lz)

geomBoxSetLengths(Box, Lx, Ly, Lz)
 -> cast
    ( ?dGeomBoxSetLengths
    , <<Box:?DGeomID
      , Lx:?DReal
      , Ly:?DReal
      , Lz:?DReal
      >>
    )
.

%% Func:       geomBoxGetLengths
%% Args:       Box, Result
%% Returns:    ok
%% C-API func: void dGeomBoxGetLengths(dGeomID box, dVector3 result)

geomBoxGetLengths(Box, Result)
 -> cast
    ( ?dGeomBoxGetLengths
    , <<Box:?DGeomID
      , Result:?DVector3
      >>
    )
.

%% Func:       geomBoxPointDepth
%% Args:       Box, X, Y, Z
%% Returns:    Exdl
%% C-API func: dReal dGeomBoxPointDepth(dGeomID box, dReal x, dReal y, dReal z)

geomBoxPointDepth(Box, X, Y, Z)
 -> case
      call
      ( ?dGeomBoxPointDepth
      , <<Box:?DGeomID
        , X:?DReal
        , Y:?DReal
        , Z:?DReal
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createPlane
%% Args:       Space, A, B, C, D
%% Returns:    Exdl
%% C-API func: dGeomID dCreatePlane(dSpaceID space, dReal a, dReal b, dReal c, dReal d)

createPlane(Space, A, B, C, D)
 -> case
      call
      ( ?dCreatePlane
      , <<Space:?DSpaceID
        , A:?DReal
        , B:?DReal
        , C:?DReal
        , D:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomPlaneSetParams
%% Args:       Plane, A, B, C, D
%% Returns:    ok
%% C-API func: void dGeomPlaneSetParams(dGeomID plane, dReal a, dReal b, dReal c, dReal d)

geomPlaneSetParams(Plane, A, B, C, D)
 -> cast
    ( ?dGeomPlaneSetParams
    , <<Plane:?DGeomID
      , A:?DReal
      , B:?DReal
      , C:?DReal
      , D:?DReal
      >>
    )
.

%% Func:       geomPlaneGetParams
%% Args:       Plane, Result
%% Returns:    ok
%% C-API func: void dGeomPlaneGetParams(dGeomID plane, dVector4 result)

geomPlaneGetParams(Plane, Result)
 -> cast
    ( ?dGeomPlaneGetParams
    , <<Plane:?DGeomID
      , Result:?DVector4
      >>
    )
.

%% Func:       geomPlanePointDepth
%% Args:       Plane, X, Y, Z
%% Returns:    Exdl
%% C-API func: dReal dGeomPlanePointDepth(dGeomID plane, dReal x, dReal y, dReal z)

geomPlanePointDepth(Plane, X, Y, Z)
 -> case
      call
      ( ?dGeomPlanePointDepth
      , <<Plane:?DGeomID
        , X:?DReal
        , Y:?DReal
        , Z:?DReal
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createCapsule
%% Args:       Space, Radius, Length
%% Returns:    Exdl
%% C-API func: dGeomID dCreateCapsule(dSpaceID space, dReal radius, dReal length)

createCapsule(Space, Radius, Length)
 -> case
      call
      ( ?dCreateCapsule
      , <<Space:?DSpaceID
        , Radius:?DReal
        , Length:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCapsuleSetParams
%% Args:       Ccylinder, Radius, Length
%% Returns:    ok
%% C-API func: void dGeomCapsuleSetParams(dGeomID ccylinder, dReal radius, dReal length)

geomCapsuleSetParams(Ccylinder, Radius, Length)
 -> cast
    ( ?dGeomCapsuleSetParams
    , <<Ccylinder:?DGeomID
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       geomCapsuleGetParams
%% Args:       Ccylinder
%% Returns:    { Radius, Length }
%% C-API func: void dGeomCapsuleGetParams(dGeomID ccylinder, dReal* radius, dReal* length)

geomCapsuleGetParams(Ccylinder)
 -> case
      call
      ( ?dGeomCapsuleGetParams
      , <<Ccylinder:?DGeomID
        >>
      )
    of
      <<Radius:?_PTR
      , Length:?_PTR
      >>
        -> { Radius, Length }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCapsulePointDepth
%% Args:       Ccylinder, X, Y, Z
%% Returns:    Exdl
%% C-API func: dReal dGeomCapsulePointDepth(dGeomID ccylinder, dReal x, dReal y, dReal z)

geomCapsulePointDepth(Ccylinder, X, Y, Z)
 -> case
      call
      ( ?dGeomCapsulePointDepth
      , <<Ccylinder:?DGeomID
        , X:?DReal
        , Y:?DReal
        , Z:?DReal
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createCylinder
%% Args:       Space, Radius, Length
%% Returns:    Exdl
%% C-API func: dGeomID dCreateCylinder(dSpaceID space, dReal radius, dReal length)

createCylinder(Space, Radius, Length)
 -> case
      call
      ( ?dCreateCylinder
      , <<Space:?DSpaceID
        , Radius:?DReal
        , Length:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomCylinderSetParams
%% Args:       Cylinder, Radius, Length
%% Returns:    ok
%% C-API func: void dGeomCylinderSetParams(dGeomID cylinder, dReal radius, dReal length)

geomCylinderSetParams(Cylinder, Radius, Length)
 -> cast
    ( ?dGeomCylinderSetParams
    , <<Cylinder:?DGeomID
      , Radius:?DReal
      , Length:?DReal
      >>
    )
.

%% Func:       geomCylinderGetParams
%% Args:       Cylinder
%% Returns:    { Radius, Length }
%% C-API func: void dGeomCylinderGetParams(dGeomID cylinder, dReal* radius, dReal* length)

geomCylinderGetParams(Cylinder)
 -> case
      call
      ( ?dGeomCylinderGetParams
      , <<Cylinder:?DGeomID
        >>
      )
    of
      <<Radius:?_PTR
      , Length:?_PTR
      >>
        -> { Radius, Length }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createRay
%% Args:       Space, Length
%% Returns:    Exdl
%% C-API func: dGeomID dCreateRay(dSpaceID space, dReal length)

createRay(Space, Length)
 -> case
      call
      ( ?dCreateRay
      , <<Space:?DSpaceID
        , Length:?DReal
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomRaySetLength
%% Args:       Ray, Length
%% Returns:    ok
%% C-API func: void dGeomRaySetLength(dGeomID ray, dReal length)

geomRaySetLength(Ray, Length)
 -> cast
    ( ?dGeomRaySetLength
    , <<Ray:?DGeomID
      , Length:?DReal
      >>
    )
.

%% Func:       geomRayGetLength
%% Args:       Ray
%% Returns:    Exdl
%% C-API func: dReal dGeomRayGetLength(dGeomID ray)

geomRayGetLength(Ray)
 -> case
      call
      ( ?dGeomRayGetLength
      , <<Ray:?DGeomID
        >>
      )
    of
      <<Exdl:?DReal
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomRaySet
%% Args:       Ray, Px, Py, Pz, Dx, Dy, Dz
%% Returns:    ok
%% C-API func: void dGeomRaySet(dGeomID ray, dReal px, dReal py, dReal pz, dReal dx, dReal dy, dReal dz)

geomRaySet(Ray, Px, Py, Pz, Dx, Dy, Dz)
 -> cast
    ( ?dGeomRaySet
    , <<Ray:?DGeomID
      , Px:?DReal
      , Py:?DReal
      , Pz:?DReal
      , Dx:?DReal
      , Dy:?DReal
      , Dz:?DReal
      >>
    )
.

%% Func:       geomRayGet
%% Args:       Ray, Start, Dir
%% Returns:    ok
%% C-API func: void dGeomRayGet(dGeomID ray, dVector3 start, dVector3 dir)

geomRayGet(Ray, Start, Dir)
 -> cast
    ( ?dGeomRayGet
    , <<Ray:?DGeomID
      , Start:?DVector3
      , Dir:?DVector3
      >>
    )
.

%% Func:       geomRaySetParams
%% Args:       G, FirstContact, BackfaceCull
%% Returns:    ok
%% C-API func: void dGeomRaySetParams(dGeomID g, int FirstContact, int BackfaceCull)

geomRaySetParams(G, FirstContact, BackfaceCull)
 -> cast
    ( ?dGeomRaySetParams
    , <<G:?DGeomID
      , FirstContact:?Int
      , BackfaceCull:?Int
      >>
    )
.

%% Func:       geomRayGetParams
%% Args:       G
%% Returns:    { FirstContact, BackfaceCull }
%% C-API func: void dGeomRayGetParams(dGeomID g, int* FirstContact, int* BackfaceCull)

geomRayGetParams(G)
 -> case
      call
      ( ?dGeomRayGetParams
      , <<G:?DGeomID
        >>
      )
    of
      <<FirstContact:?Int
      , BackfaceCull:?Int
      >>
        -> { FirstContact, BackfaceCull }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomRaySetClosestHit
%% Args:       G, ClosestHit
%% Returns:    ok
%% C-API func: void dGeomRaySetClosestHit(dGeomID g, int closestHit)

geomRaySetClosestHit(G, ClosestHit)
 -> cast
    ( ?dGeomRaySetClosestHit
    , <<G:?DGeomID
      , ClosestHit:?Int
      >>
    )
.

%% Func:       geomRayGetClosestHit
%% Args:       G
%% Returns:    Exdl
%% C-API func: int dGeomRayGetClosestHit(dGeomID g)

geomRayGetClosestHit(G)
 -> case
      call
      ( ?dGeomRayGetClosestHit
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createGeomTransform
%% Args:       Space
%% Returns:    Exdl
%% C-API func: dGeomID dCreateGeomTransform(dSpaceID space)

createGeomTransform(Space)
 -> case
      call
      ( ?dCreateGeomTransform
      , <<Space:?DSpaceID
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomTransformSetGeom
%% Args:       G, Obj
%% Returns:    ok
%% C-API func: void dGeomTransformSetGeom(dGeomID g, dGeomID obj)

geomTransformSetGeom(G, Obj)
 -> cast
    ( ?dGeomTransformSetGeom
    , <<G:?DGeomID
      , Obj:?DGeomID
      >>
    )
.

%% Func:       geomTransformGetGeom
%% Args:       G
%% Returns:    Exdl
%% C-API func: dGeomID dGeomTransformGetGeom(dGeomID g)

geomTransformGetGeom(G)
 -> case
      call
      ( ?dGeomTransformGetGeom
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomTransformSetCleanup
%% Args:       G, Mode
%% Returns:    ok
%% C-API func: void dGeomTransformSetCleanup(dGeomID g, int mode)

geomTransformSetCleanup(G, Mode)
 -> cast
    ( ?dGeomTransformSetCleanup
    , <<G:?DGeomID
      , Mode:?Int
      >>
    )
.

%% Func:       geomTransformGetCleanup
%% Args:       G
%% Returns:    Exdl
%% C-API func: int dGeomTransformGetCleanup(dGeomID g)

geomTransformGetCleanup(G)
 -> case
      call
      ( ?dGeomTransformGetCleanup
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomTransformSetInfo
%% Args:       G, Mode
%% Returns:    ok
%% C-API func: void dGeomTransformSetInfo(dGeomID g, int mode)

geomTransformSetInfo(G, Mode)
 -> cast
    ( ?dGeomTransformSetInfo
    , <<G:?DGeomID
      , Mode:?Int
      >>
    )
.

%% Func:       geomTransformGetInfo
%% Args:       G
%% Returns:    Exdl
%% C-API func: int dGeomTransformGetInfo(dGeomID g)

geomTransformGetInfo(G)
 -> case
      call
      ( ?dGeomTransformGetInfo
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createHeightfield
%% Args:       Space, Data, BPlaceable
%% Returns:    Exdl
%% C-API func: dGeomID dCreateHeightfield(dSpaceID space, dHeightfieldDataID data, int bPlaceable)

createHeightfield(Space, Data, BPlaceable)
 -> case
      call
      ( ?dCreateHeightfield
      , <<Space:?DSpaceID
        , Data:?DHeightfieldDataID
        , BPlaceable:?Int
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomHeightfieldDataCreate
%% Args:       none
%% Returns:    Exdl
%% C-API func: dHeightfieldDataID dGeomHeightfieldDataCreate()

geomHeightfieldDataCreate()
 -> case
      call
      ( ?dGeomHeightfieldDataCreate
      , [
        ]
      )
    of
      <<Exdl:?DHeightfieldDataID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomHeightfieldDataDestroy
%% Args:       D
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataDestroy(dHeightfieldDataID d)

geomHeightfieldDataDestroy(D)
 -> cast
    ( ?dGeomHeightfieldDataDestroy
    , <<D:?DHeightfieldDataID
      >>
    )
.

%% Func:       geomHeightfieldDataBuildCallback
%% Args:       D, PUserData, PCallback, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataBuildCallback(dHeightfieldDataID d, void* pUserData, dHeightfieldGetHeight* pCallback, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap)

geomHeightfieldDataBuildCallback(D, PUserData, PCallback, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap)
 -> cast
    ( ?dGeomHeightfieldDataBuildCallback
    , <<D:?DHeightfieldDataID
      , PUserData:?_PTR
      , PCallback:?_PTR
      , Width:?DReal
      , Depth:?DReal
      , WidthSamples:?Int
      , DepthSamples:?Int
      , Scale:?DReal
      , Offset:?DReal
      , Thickness:?DReal
      , BWrap:?Int
      >>
    )
.

%% Func:       geomHeightfieldDataBuildByte
%% Args:       D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataBuildByte(dHeightfieldDataID d, const unsigned char* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap)

geomHeightfieldDataBuildByte(D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap)
 -> cast
    ( ?dGeomHeightfieldDataBuildByte
    , <<D:?DHeightfieldDataID
      , PHeightData:?_PTR
      , BCopyHeightData:?Int
      , Width:?DReal
      , Depth:?DReal
      , WidthSamples:?Int
      , DepthSamples:?Int
      , Scale:?DReal
      , Offset:?DReal
      , Thickness:?DReal
      , BWrap:?Int
      >>
    )
.

%% Func:       geomHeightfieldDataBuildShort
%% Args:       D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataBuildShort(dHeightfieldDataID d, const short* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap)

geomHeightfieldDataBuildShort(D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap)
 -> cast
    ( ?dGeomHeightfieldDataBuildShort
    , <<D:?DHeightfieldDataID
      , PHeightData:?_PTR
      , BCopyHeightData:?Int
      , Width:?DReal
      , Depth:?DReal
      , WidthSamples:?Int
      , DepthSamples:?Int
      , Scale:?DReal
      , Offset:?DReal
      , Thickness:?DReal
      , BWrap:?Int
      >>
    )
.

%% Func:       geomHeightfieldDataBuildSingle
%% Args:       D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataBuildSingle(dHeightfieldDataID d, const float* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap)

geomHeightfieldDataBuildSingle(D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap)
 -> cast
    ( ?dGeomHeightfieldDataBuildSingle
    , <<D:?DHeightfieldDataID
      , PHeightData:?_PTR
      , BCopyHeightData:?Int
      , Width:?DReal
      , Depth:?DReal
      , WidthSamples:?Int
      , DepthSamples:?Int
      , Scale:?DReal
      , Offset:?DReal
      , Thickness:?DReal
      , BWrap:?Int
      >>
    )
.

%% Func:       geomHeightfieldDataBuildDouble
%% Args:       D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataBuildDouble(dHeightfieldDataID d, const double* pHeightData, int bCopyHeightData, dReal width, dReal depth, int widthSamples, int depthSamples, dReal scale, dReal offset, dReal thickness, int bWrap)

geomHeightfieldDataBuildDouble(D, PHeightData, BCopyHeightData, Width, Depth, WidthSamples, DepthSamples, Scale, Offset, Thickness, BWrap)
 -> cast
    ( ?dGeomHeightfieldDataBuildDouble
    , <<D:?DHeightfieldDataID
      , PHeightData:?_PTR
      , BCopyHeightData:?Int
      , Width:?DReal
      , Depth:?DReal
      , WidthSamples:?Int
      , DepthSamples:?Int
      , Scale:?DReal
      , Offset:?DReal
      , Thickness:?DReal
      , BWrap:?Int
      >>
    )
.

%% Func:       geomHeightfieldDataSetBounds
%% Args:       D, MinHeight, MaxHeight
%% Returns:    ok
%% C-API func: void dGeomHeightfieldDataSetBounds(dHeightfieldDataID d, dReal minHeight, dReal maxHeight)

geomHeightfieldDataSetBounds(D, MinHeight, MaxHeight)
 -> cast
    ( ?dGeomHeightfieldDataSetBounds
    , <<D:?DHeightfieldDataID
      , MinHeight:?DReal
      , MaxHeight:?DReal
      >>
    )
.

%% Func:       geomHeightfieldSetHeightfieldData
%% Args:       G, D
%% Returns:    ok
%% C-API func: void dGeomHeightfieldSetHeightfieldData(dGeomID g, dHeightfieldDataID d)

geomHeightfieldSetHeightfieldData(G, D)
 -> cast
    ( ?dGeomHeightfieldSetHeightfieldData
    , <<G:?DGeomID
      , D:?DHeightfieldDataID
      >>
    )
.

%% Func:       geomHeightfieldGetHeightfieldData
%% Args:       G
%% Returns:    Exdl
%% C-API func: dHeightfieldDataID dGeomHeightfieldGetHeightfieldData(dGeomID g)

geomHeightfieldGetHeightfieldData(G)
 -> case
      call
      ( ?dGeomHeightfieldGetHeightfieldData
      , <<G:?DGeomID
        >>
      )
    of
      <<Exdl:?DHeightfieldDataID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       closestLineSegmentPoints
%% Args:       A1, A2, B1, B2, Cp1, Cp2
%% Returns:    ok
%% C-API func: void dClosestLineSegmentPoints(const dVector3 a1, const dVector3 a2, const dVector3 b1, const dVector3 b2, dVector3 cp1, dVector3 cp2)

closestLineSegmentPoints(A1, A2, B1, B2, Cp1, Cp2)
 -> cast
    ( ?dClosestLineSegmentPoints
    , <<A1:?DVector3
      , A2:?DVector3
      , B1:?DVector3
      , B2:?DVector3
      , Cp1:?DVector3
      , Cp2:?DVector3
      >>
    )
.

%% Func:       boxTouchesBox
%% Args:       P1, R1, Side1, P2, R2, Side2
%% Returns:    Exdl
%% C-API func: int dBoxTouchesBox(const dVector3 _p1, const dMatrix3 R1, const dVector3 side1, const dVector3 _p2, const dMatrix3 R2, const dVector3 side2)

boxTouchesBox(P1, R1, Side1, P2, R2, Side2)
 -> case
      call
      ( ?dBoxTouchesBox
      , <<P1:?DVector3
        , R1:?DMatrix3
        , Side1:?DVector3
        , P2:?DVector3
        , R2:?DMatrix3
        , Side2:?DVector3
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       boxBox
%% Args:       P1, R1, Side1, P2, R2, Side2, Normal, Depth, ReturnCode, Flags, Contact, Skip
%% Returns:    Exdl
%% C-API func: int dBoxBox(const dVector3 p1, const dMatrix3 R1, const dVector3 side1, const dVector3 p2, const dMatrix3 R2, const dVector3 side2, dVector3 normal, dReal* depth, int* return_code, int flags, dContactGeom* contact, int skip)

boxBox(P1, R1, Side1, P2, R2, Side2, Normal, Depth, ReturnCode, Flags, Contact, Skip)
 -> case
      call
      ( ?dBoxBox
      , <<P1:?DVector3
        , R1:?DMatrix3
        , Side1:?DVector3
        , P2:?DVector3
        , R2:?DMatrix3
        , Side2:?DVector3
        , Normal:?DVector3
        , Depth:?_PTR
        , ReturnCode:?_PTR
        , Flags:?Int
        , Contact:?_PTR
        , Skip:?Int
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       infiniteAABB
%% Args:       Geom, Aabb[6]
%% Returns:    ok
%% C-API func: void dInfiniteAABB(dGeomID geom, dReal aabb[6])

infiniteAABB(Geom, Aabb[6])
 -> cast
    ( ?dInfiniteAABB
    , <<Geom:?DGeomID
      , Aabb[6]:?DReal
      >>
    )
.

%% Func:       createGeomClass
%% Args:       Classptr
%% Returns:    Exdl
%% C-API func: int dCreateGeomClass(const dGeomClass* classptr)

createGeomClass(Classptr)
 -> case
      call
      ( ?dCreateGeomClass
      , <<Classptr:?_PTR
        >>
      )
    of
      <<Exdl:?Int
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       geomGetClassData
%% Args:       DGeomID
%% Returns:    Exdl
%% C-API func: void* dGeomGetClassData(dGeomID)

geomGetClassData(DGeomID)
 -> case
      call
      ( ?dGeomGetClassData
      , <<DGeomID:?
        >>
      )
    of
      0
        -> { nullptr, ?MODULE, ?LINE }
    ; <<Exdl:?_PTR
      >>
        -> { buffptr, Exdl }
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       createGeom
%% Args:       Classnum
%% Returns:    Exdl
%% C-API func: dGeomID dCreateGeom(int classnum)

createGeom(Classnum)
 -> case
      call
      ( ?dCreateGeom
      , <<Classnum:?Int
        >>
      )
    of
      <<Exdl:?DGeomID
      >>
        -> Exdl
    ; Res
        -> { badarg, ?MODULE, ?LINE, Res }
    end
.

%% Func:       setColliderOverride
%% Args:       I, J, Fn
%% Returns:    ok
%% C-API func: void dSetColliderOverride(int i, int j, dColliderFn* fn)

setColliderOverride(I, J, Fn)
 -> cast
    ( ?dSetColliderOverride
    , <<I:?Int
      , J:?Int
      , Fn:?_PTR
      >>
    )
.

%% odecpp_collision.h

%% export-dif.h

%% Func:       worldExportDIF
%% Args:       W, File, WorldName
%% Returns:    ok
%% C-API func: void dWorldExportDIF(dWorldID w, FILE* file, const char* world_name)

worldExportDIF(W, File, WorldName)
 -> cast
    ( ?dWorldExportDIF
    , <<W:?DWorldID
      , File:?_PTR
      , WorldName:?_PTR
      >>
    )
.


-endif. % COMPILE_DE
