<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9234d2d6-55e6-492b-919c-1164aa26e735(de.q60.mps.lang.typescript.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6WKYICG2DK_">
    <ref role="1M2myG" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
    <node concept="1N5Pfh" id="6WKYICG2DKA" role="1Mr941">
      <ref role="1N5Vy1" to="mo8k:6WKYICFF5zd" resolve="declaration" />
      <node concept="1dDu$B" id="6WKYICG2DKB" role="1N6uqs">
        <ref role="1dDu$A" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6WKYICG9K0x">
    <ref role="1M2myG" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
    <node concept="EnEH3" id="6WKYICG9K0y" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="6WKYICG9K0z" role="QCWH9">
        <node concept="3clFbS" id="6WKYICG9K0$" role="2VODD2">
          <node concept="3clFbF" id="6WKYICG9K0B" role="3cqZAp">
            <node concept="2YIFZM" id="6WKYICG9K0_" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="6WKYICG9K0A" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="465JEkTd3J$">
    <ref role="1M2myG" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    <node concept="EnEH3" id="465JEkTd3J_" role="1MhHOB">
      <ref role="EomxK" to="mo8k:1TCdlWHrFuK" resolve="escapedValue" />
      <node concept="QB0g5" id="465JEkTd3JA" role="QCWH9">
        <node concept="3clFbS" id="465JEkTd3JB" role="2VODD2">
          <node concept="3clFbF" id="465JEkTd3JC" role="3cqZAp">
            <node concept="2YIFZM" id="465JEkTd3JD" role="3clFbG">
              <ref role="37wK5l" to="tw2a:1dYSrZvLegT" resolve="isValidWhileTyping" />
              <ref role="1Pybhc" to="tw2a:1dYSrZvFRsW" resolve="TSStringUtil" />
              <node concept="1Wqviy" id="465JEkTd3JE" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6fqSeL">
    <ref role="1M2myG" to="mo8k:465JEkTIpO7" resolve="TSIConciseBody" />
    <ref role="1MND4H" to="mo8k:465JEkTIpRg" resolve="TSExpressionBody" />
  </node>
  <node concept="1M2fIO" id="5OpYk6fQO0b">
    <ref role="1M2myG" to="mo8k:5OpYk6fOBiT" resolve="TSMemberAccess" />
    <node concept="EnEH3" id="5OpYk6fQO0c" role="1MhHOB">
      <ref role="EomxK" to="mo8k:5OpYk6fOBiV" resolve="name" />
      <node concept="QB0g5" id="5OpYk6fQO0d" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6fQO0e" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6fQO0f" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6fQO0g" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6fQO0h" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g1prc">
    <ref role="1M2myG" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
    <node concept="EnEH3" id="5OpYk6g1prd" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g1pre" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g1prf" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g1prg" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g1prh" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g1pri" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g1prj">
    <ref role="1M2myG" to="mo8k:5OpYk6fJr5w" resolve="TSPropertyAssignment" />
    <node concept="EnEH3" id="5OpYk6g1prk" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g1prl" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g1prm" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g1prn" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g1pro" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g1prp" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g8As$">
    <ref role="1M2myG" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
    <node concept="EnEH3" id="5OpYk6g8As_" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g8AsA" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g8AsB" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g8AsC" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g8AsD" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g8AsE" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

