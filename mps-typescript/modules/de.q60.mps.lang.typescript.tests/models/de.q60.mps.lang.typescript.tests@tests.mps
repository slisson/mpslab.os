<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d8d4003-bdc2-4cff-95e1-0269570b382e(de.q60.mps.lang.typescript.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest" version="0" />
  </languages>
  <imports>
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="hb1i" ref="r:68855d6a-0611-45d5-9d54-ada096e93139(de.q60.mps.lang.typescript.intentions)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215526290564" name="jetbrains.mps.lang.test.structure.NodeTypeCheckOperation" flags="ng" index="30Omv">
        <child id="1215526393912" name="type" index="31d$z" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7835233914436786109" name="jetbrains.mps.lang.test.structure.NodeUnknownErrorCheckOperation" flags="ng" index="mDk06" />
      <concept id="7011073693661765739" name="jetbrains.mps.lang.test.structure.InvokeActionStatement" flags="nn" index="2HxZob">
        <child id="1101347953350127927" name="actionReference" index="3iKnsn" />
      </concept>
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <child id="3143335925185262946" name="testNodeBefore" index="25YQCW" />
        <child id="3143335925185262981" name="testNodeResult" index="25YQFr" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="6268941039745498163" name="selectionStart" index="p6zMq" />
        <property id="6268941039745498165" name="selectionEnd" index="p6zMs" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
        <property id="1932269937152561478" name="useLabelSelection" index="OXtK3" />
        <property id="1229432188737" name="isLastPosition" index="ZRATv" />
      </concept>
      <concept id="1227182079811" name="jetbrains.mps.lang.test.structure.TypeKeyStatement" flags="nn" index="2TK7Tu">
        <property id="1227184461946" name="keys" index="2TTd_B" />
      </concept>
      <concept id="4239542196496927193" name="jetbrains.mps.lang.test.structure.MPSActionReference" flags="ng" index="1iFQzN">
        <reference id="4239542196496929559" name="action" index="1iFR8X" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1225989773458" name="jetbrains.mps.lang.test.structure.InvokeIntentionStatement" flags="nn" index="1MFPAf">
        <reference id="1225989811227" name="intention" index="1MFYO6" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="2282927104365302788" name="de.q60.mps.lang.typescript.structure.TSTernaryOperatorExpression" flags="ng" index="0o88v">
        <child id="7744661840340332174" name="ifTrue" index="10ubTB" />
        <child id="4217550342683633468" name="ifFalse" index="3nuTyc" />
        <child id="7687543187806104797" name="condition" index="3y1SWh" />
      </concept>
      <concept id="8373526123298530633" name="de.q60.mps.lang.typescript.structure.TSNumberLiteral" flags="ng" index="24BhzH">
        <property id="7606013538328487736" name="value" index="2Hr5CV" />
      </concept>
      <concept id="2596016207932595749" name="de.q60.mps.lang.typescript.structure.TSModule" flags="ng" index="24Z7zp">
        <child id="906924707476882095" name="statements" index="1JIkAo" />
      </concept>
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="value" index="3b_9E9" />
      </concept>
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="1382782322912190867" name="de.q60.mps.lang.typescript.structure.TSIncompleteLeftParen" flags="ng" index="1lV$2x" />
      <concept id="4291374753109167949" name="de.q60.mps.lang.typescript.structure.TSIIncompleteParen" flags="ngI" index="3mEcBk">
        <property id="3567944042883971429" name="count" index="R4xHh" />
      </concept>
      <concept id="902545861387718385" name="de.q60.mps.lang.typescript.structure.TSAssignmentStatement" flags="ng" index="3p1v9s">
        <child id="488639419388104298" name="target" index="219B2s" />
        <child id="834448770786422024" name="expression" index="1IqeeO" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="3472769636933287167" name="de.q60.mps.lang.typescript.structure.TSBooleanType" flags="ng" index="3$6BPE" />
      <concept id="2240197384627242780" name="de.q60.mps.lang.typescript.structure.TSIncompleteRightParen" flags="ng" index="3Aoo2U" />
      <concept id="6275768358144507624" name="de.q60.mps.lang.typescript.structure.TSEqualsExpression" flags="ng" index="1CNJNU" />
      <concept id="2676595144476088988" name="de.q60.mps.lang.typescript.structure.TSVariableDeclaration" flags="ng" index="1Jbnu6">
        <child id="7603193039132759139" name="declaredType" index="19IeeE" />
        <child id="8956598854396892412" name="initializer" index="1bGQZ8" />
      </concept>
      <concept id="1786862727331701833" name="de.q60.mps.lang.typescript.structure.TSIfStatement" flags="ng" index="3Oct9B">
        <child id="186330115020247543" name="elseBlock" index="2uaaIR" />
        <child id="6415352913453783659" name="thenBlock" index="12avcn" />
        <child id="264280299738157132" name="condition" index="18F3B4" />
        <child id="2578765457793828190" name="elseIfClauses" index="1X4dzr" />
      </concept>
    </language>
    <language id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest">
      <concept id="7474925316805868297" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertTrue" flags="ng" index="2xtvZL">
        <child id="923496749372008960" name="condition" index="2tmK5A" />
      </concept>
      <concept id="2893403391783031051" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestMethod" flags="ng" index="B13S5">
        <child id="3423858813637018076" name="body" index="1OrNMJ" />
      </concept>
      <concept id="2540675105150896836" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestCase" flags="ng" index="Jsc18">
        <child id="3377630177900161387" name="testMethods" index="1QJMAF" />
      </concept>
      <concept id="9159215323861021911" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertEquals" flags="ng" index="174eko">
        <child id="4433563903700617020" name="actual" index="1s_IBt" />
        <child id="4065307100039490071" name="expected" index="3SOflj" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="LiM7Y" id="5YMdeRgphv">
    <property role="TrG5h" value="Type_plus_then_times_binds_times_tighter" />
    <node concept="1qefOq" id="5YMdeRgphw" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgphy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgphz" role="1JIkAo">
          <node concept="24BhzH" id="5YMdeRgph_" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5YMdeRgphA" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgphB" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgphC" role="3cqZAp">
        <property role="2TTd_B" value="+2*3" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgphD" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgphF" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgphG" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgphI" role="$a3P1">
            <node concept="24BhzH" id="5YMdeRgphL" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="5YMdeRgphM" role="GyX5B">
              <node concept="24BhzH" id="5YMdeRgphP" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5YMdeRgphQ" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5YMdeRgFi1">
    <property role="TrG5h" value="Type_times_then_plus_rebalances_the_tree" />
    <node concept="1qefOq" id="5YMdeRgFi2" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgFi4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFi5" role="1JIkAo">
          <node concept="24BhzH" id="5YMdeRgFi7" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5YMdeRgFi8" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgFi9" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgFia" role="3cqZAp">
        <property role="2TTd_B" value="*2+3" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgFib" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgFid" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFie" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgFig" role="$a3P1">
            <node concept="mk1J3" id="5YMdeRgFij" role="33kRt2">
              <node concept="24BhzH" id="5YMdeRgFim" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="5YMdeRgFin" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="24BhzH" id="5YMdeRgFio" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5YMdeRgFld">
    <property role="TrG5h" value="Type_close_paren_matches_the_open_one_and_restructures" />
    <node concept="1qefOq" id="5YMdeRgFle" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgFlg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFlh" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgFlj" role="$a3P1">
            <node concept="24BhzH" id="5YMdeRgFlm" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="5YMdeRgFln" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="mk1J3" id="5YMdeRgFlo" role="GyX5B">
              <node concept="24BhzH" id="5YMdeRgFlr" role="33kRt2">
                <property role="2Hr5CV" value="2" />
                <node concept="LIFWc" id="5YMdeRgFls" role="lGtFl">
                  <property role="LIFWd" value="value" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
              <node concept="24BhzH" id="5YMdeRgFlt" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgFlu" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgFlv" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgFlw" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgFly" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFlz" role="1JIkAo">
          <node concept="mk1J3" id="5YMdeRgFl_" role="$a3P1">
            <node concept="pJsIj" id="5YMdeRgFlC" role="33kRt2">
              <node concept="1rvuUm" id="5YMdeRgFlE" role="3tJ$EF">
                <node concept="24BhzH" id="5YMdeRgFlH" role="33kRt2">
                  <property role="2Hr5CV" value="1" />
                </node>
                <node concept="24BhzH" id="5YMdeRgFlI" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5YMdeRgFlJ" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgltnr">
    <property role="TrG5h" value="Enter_then_a_number_makes_a_new_expression_statement" />
    <node concept="1qefOq" id="5Xb8BFgltns" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgltnu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgltnv" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnx" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5Xb8BFgltny" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgltnz" role="LjaKd">
      <node concept="2HxZob" id="5Xb8BFgltn$" role="3cqZAp">
        <node concept="1iFQzN" id="5Xb8BFgltnA" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5Xb8BFgltnB" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgltnC" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgltnE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgltnF" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnH" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5Xb8BFgltnI" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnK" role="$a3P1">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$II">
    <property role="TrG5h" value="Ternary_takes_the_whole_binary_expression_as_its_condition" />
    <node concept="1qefOq" id="5Xb8BFgt$IJ" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$IB" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IA" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNORYVI" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNORYVL" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6QS6LNORYVM" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="6QS6LNORYVN" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$IK" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$IL" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$IM" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$IH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IG" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$IF" role="$a3P1">
            <node concept="1rvuUm" id="6QS6LNORYVO" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNORYVR" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNORYVS" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$J0">
    <property role="TrG5h" value="Ternary_typed_on_a_left_operand_is_wrapped_in_parentheses" />
    <node concept="1qefOq" id="5Xb8BFgt$J1" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$IS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IR" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNOSc2E" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSc2H" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOSc2I" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSc2J" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$J2" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$J3" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$J4" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$IZ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IY" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNOSc2K" role="$a3P1">
            <node concept="pJsIj" id="6QS6LNOSc2N" role="33kRt2">
              <node concept="0o88v" id="6QS6LNOSc2P" role="3tJ$EF">
                <node concept="24BhzH" id="6QS6LNOSc2T" role="3y1SWh">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSc2U" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$Jk">
    <property role="TrG5h" value="Ternary_typed_on_a_ternary_condition_is_wrapped_in_parentheses" />
    <node concept="1qefOq" id="5Xb8BFgt$Jl" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$Jb" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$Ja" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$J9" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScbn" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOScbo" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$J7" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$J8" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$Jm" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$Jn" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$Jo" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$Jj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$Ji" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$Jh" role="$a3P1">
            <node concept="pJsIj" id="5Xb8BFgt$Je" role="3y1SWh">
              <node concept="0o88v" id="5Xb8BFgt$Jd" role="3tJ$EF">
                <node concept="24BhzH" id="6QS6LNOScbp" role="3y1SWh">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$Jf" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$Jg" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhJy">
    <property role="TrG5h" value="Binary_operation_typed_in_the_true_branch_stays_in_the_branch" />
    <node concept="1qefOq" id="5Xb8BFgvhJz" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhJp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJo" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJn" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScjR" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJk" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="5Xb8BFgvhJl" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJm" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhJ$" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhJ_" role="3cqZAp">
        <property role="2TTd_B" value="+4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhJA" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhJx" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJw" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJv" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScjS" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgvhJt" role="10ubTB">
              <node concept="24BhzH" id="5Xb8BFgvhJr" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5Xb8BFgvhJs" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJu" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhJQ">
    <property role="TrG5h" value="Binary_operation_typed_in_the_false_branch_stays_in_the_branch" />
    <node concept="1qefOq" id="5Xb8BFgvhJR" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhJH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJG" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJF" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScsk" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJC" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJD" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
              <node concept="LIFWc" id="5Xb8BFgvhJE" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhJS" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhJT" role="3cqZAp">
        <property role="2TTd_B" value="+4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhJU" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhJP" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJO" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJN" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScsl" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJJ" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgvhJM" role="3nuTyc">
              <node concept="24BhzH" id="5Xb8BFgvhJK" role="33kRt2">
                <property role="2Hr5CV" value="3" />
              </node>
              <node concept="24BhzH" id="5Xb8BFgvhJL" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhKa">
    <property role="TrG5h" value="Binary_operation_typed_after_the_condition_stays_in_the_condition" />
    <node concept="1qefOq" id="5Xb8BFgvhKb" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhK1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhK0" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJZ" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSc$M" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOSc$N" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJX" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJY" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhKc" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhKd" role="3cqZAp">
        <property role="2TTd_B" value="*4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhKe" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhK9" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhK8" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhK7" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOSc$O" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNOSc$R" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOSc$S" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhK5" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhK6" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgwx7E">
    <property role="TrG5h" value="Close_paren_inside_a_ternary_branch_rebalances_that_branch_only" />
    <node concept="1qefOq" id="5Xb8BFgwx7F" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgwx7u" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7t" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7s" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScI8" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgwx7q" role="10ubTB">
              <node concept="24BhzH" id="5Xb8BFgwx7k" role="33kRt2">
                <property role="2Hr5CV" value="2" />
                <node concept="1lV$2x" id="5Xb8BFgwx7l" role="lGtFl">
                  <property role="R4xHh" value="1" />
                </node>
              </node>
              <node concept="mk1J3" id="5Xb8BFgwx7p" role="GyX5B">
                <node concept="24BhzH" id="5Xb8BFgwx7m" role="33kRt2">
                  <property role="2Hr5CV" value="3" />
                  <node concept="LIFWc" id="5Xb8BFgwx7n" role="lGtFl">
                    <property role="LIFWd" value="value" />
                    <property role="ZRATv" value="true" />
                    <property role="p6zMs" value="1" />
                    <property role="p6zMq" value="1" />
                    <property role="OXtK3" value="true" />
                  </node>
                </node>
                <node concept="24BhzH" id="5Xb8BFgwx7o" role="GyX5B">
                  <property role="2Hr5CV" value="4" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7r" role="3nuTyc">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgwx7G" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgwx7H" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgwx7I" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgwx7D" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7C" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7B" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScI9" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="5Xb8BFgwx7_" role="10ubTB">
              <node concept="pJsIj" id="5Xb8BFgwx7z" role="33kRt2">
                <node concept="1rvuUm" id="5Xb8BFgwx7y" role="3tJ$EF">
                  <node concept="24BhzH" id="5Xb8BFgwx7w" role="33kRt2">
                    <property role="2Hr5CV" value="2" />
                  </node>
                  <node concept="24BhzH" id="5Xb8BFgwx7x" role="GyX5B">
                    <property role="2Hr5CV" value="3" />
                  </node>
                </node>
              </node>
              <node concept="24BhzH" id="5Xb8BFgwx7$" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7A" role="3nuTyc">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgwx7Z">
    <property role="TrG5h" value="Close_paren_does_not_match_an_open_paren_in_another_ternary_branch" />
    <node concept="1qefOq" id="5Xb8BFgwx80" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgwx7Q" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7P" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7O" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScQt" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="6QS6LNOScQu" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7L" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="5Xb8BFgwx7M" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7N" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgwx81" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgwx82" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgwx83" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgwx7Y" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7X" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7W" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScQv" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="6QS6LNOScQw" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7T" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="3Aoo2U" id="5Xb8BFgwx7U" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7V" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6QS6LNOMncg">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Any_expression_is_allowed_as_a_ternary_condition" />
    <node concept="1qefOq" id="6QS6LNOMnch" role="1SKRRt">
      <node concept="24Z7zp" id="6QS6LNOMncj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6QS6LNOMnck" role="1JIkAo">
          <node concept="0o88v" id="6QS6LNOMncm" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOMncq" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNOMnct" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOMncu" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="7CXmI" id="6QS6LNOMncv" role="lGtFl">
                <node concept="30Omv" id="6QS6LNOMncw" role="7EUXB">
                  <node concept="1ku6r5" id="6QS6LNOMncy" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOMnc$" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6QS6LNOMnc_" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="7CXmI" id="6QS6LNOScWB" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOScWC" role="7EUXB">
                <node concept="1ku6r5" id="6QS6LNOScWE" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6QS6LNOScWF" role="lGtFl">
          <node concept="7OXhh" id="6QS6LNOScWG" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6QS6LNOMnhN">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Expression_types_are_computed" />
    <node concept="1qefOq" id="6QS6LNOMnhO" role="1SKRRt">
      <node concept="24Z7zp" id="6QS6LNOMnhQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6QS6LNOMnhR" role="1JIkAo">
          <node concept="1CNJNU" id="6QS6LNOSd39" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOSd3c" role="33kRt2">
              <node concept="24BhzH" id="6QS6LNOSd3f" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOSd3g" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="7CXmI" id="6QS6LNOSd3h" role="lGtFl">
                <node concept="30Omv" id="6QS6LNOSd3i" role="7EUXB">
                  <node concept="1ku6r5" id="6QS6LNOSd3k" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSd3l" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
            <node concept="7CXmI" id="6QS6LNOSd3m" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3n" role="7EUXB">
                <node concept="3$6BPE" id="6QS6LNOSd3p" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6QS6LNONIX5" role="lGtFl">
          <node concept="7OXhh" id="6QS6LNONIX6" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="6QS6LNOSd3q" role="1JIkAo">
          <node concept="33xXhr" id="6QS6LNOSd3s" role="$a3P1">
            <property role="3b_9E9" value="a" />
            <node concept="7CXmI" id="6QS6LNOSd3t" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3u" role="7EUXB">
                <node concept="2Kh4GC" id="6QS6LNOSYhN" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6QS6LNOSd3x" role="1JIkAo">
          <node concept="pJsIj" id="6QS6LNOSd3z" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSd3_" role="3tJ$EF">
              <property role="2Hr5CV" value="5" />
            </node>
            <node concept="7CXmI" id="6QS6LNOSd3A" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3B" role="7EUXB">
                <node concept="1ku6r5" id="6QS6LNOSd3D" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEOjj">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_test_case_with_boolean_assertions_is_free_of_errors" />
    <node concept="1qefOq" id="6WKYICFEOjk" role="1SKRRt">
      <node concept="Jsc18" id="6WKYICFEOjm" role="1qenE9">
        <property role="TrG5h" value="t" />
        <node concept="B13S5" id="6WKYICFEOjn" role="1QJMAF">
          <property role="TrG5h" value="a test" />
          <node concept="2xtvZL" id="6WKYICFEOjo" role="1OrNMJ">
            <node concept="1CNJNU" id="6WKYICFEOjq" role="2tmK5A">
              <node concept="24BhzH" id="6WKYICFEOjt" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFEOju" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="7CXmI" id="6WKYICFEOjv" role="lGtFl">
                <node concept="30Omv" id="6WKYICFEOjw" role="7EUXB">
                  <node concept="3$6BPE" id="6WKYICFEOjy" role="31d$z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="174eko" id="6WKYICFEOjz" role="1OrNMJ">
            <node concept="1rvuUm" id="6WKYICFEOjA" role="1s_IBt">
              <node concept="24BhzH" id="6WKYICFEOjD" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFEOjE" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICFEOjF" role="3SOflj">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFEOjG" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFEOjH" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEWGi">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_assertion_condition_that_is_not_boolean_is_an_error" />
    <node concept="1qefOq" id="6WKYICFEWGj" role="1SKRRt">
      <node concept="Jsc18" id="6WKYICFEWGl" role="1qenE9">
        <property role="TrG5h" value="t" />
        <node concept="B13S5" id="6WKYICFEWGm" role="1QJMAF">
          <property role="TrG5h" value="a test" />
          <node concept="2xtvZL" id="6WKYICFEWGn" role="1OrNMJ">
            <node concept="24BhzH" id="6WKYICFEWGp" role="2tmK5A">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="6WKYICFEWGq" role="lGtFl">
                <node concept="mDk06" id="6WKYICFEWGr" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEWLE">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_assertion_is_not_allowed_outside_a_test_method" />
    <node concept="1qefOq" id="6WKYICFEWLF" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFEWLH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2xtvZL" id="6WKYICFEWLI" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFEWLK" role="2tmK5A">
            <node concept="24BhzH" id="6WKYICFEWLN" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFEWLO" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="7CXmI" id="6WKYICFEWLP" role="lGtFl">
            <node concept="mDk06" id="6WKYICFEWRw" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTf5f">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Declarations_and_the_identifiers_that_point_at_them_are_typed" />
    <node concept="1qefOq" id="6WKYICFTf5g" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTf5i" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTf5j" role="1JIkAo">
          <property role="TrG5h" value="annotated" />
          <node concept="1ku6r5" id="6WKYICFTf5k" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICFTf5l" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFTf5m" role="1JIkAo">
          <property role="TrG5h" value="inferred" />
          <node concept="33xXhr" id="6WKYICFTf5n" role="1bGQZ8">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICFTf5o" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf5q" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf5j" resolve="annotated" />
            <node concept="7CXmI" id="6WKYICFTf5r" role="lGtFl">
              <node concept="30Omv" id="6WKYICFTf5s" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICFTf5u" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICFTf5v" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf5x" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf5m" resolve="inferred" />
            <node concept="7CXmI" id="6WKYICFTf5y" role="lGtFl">
              <node concept="30Omv" id="6WKYICFTf5z" role="7EUXB">
                <node concept="2Kh4GC" id="6WKYICFTf5_" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFTf5A" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFTf5B" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfby">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Assigning_to_a_const_is_an_error" />
    <node concept="1qefOq" id="6WKYICFTfbz" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfb_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTfbA" role="1JIkAo">
          <property role="TrG5h" value="fixed" />
          <node concept="24BhzH" id="6WKYICFTfbB" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3p1v9s" id="6WKYICFTfbC" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTfbF" role="219B2s">
            <ref role="2oxrr9" node="6WKYICFTfbA" resolve="fixed" />
            <node concept="7CXmI" id="6WKYICFTfbG" role="lGtFl">
              <node concept="mDk06" id="6WKYICFTfbH" role="7EUXB" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFTfbI" role="1IqeeO">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfhr">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_needs_a_type_annotation_or_an_initializer" />
    <node concept="1qefOq" id="6WKYICFTfhs" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfhu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICFTfhv" role="1JIkAo">
          <property role="TrG5h" value="undecided" />
          <node concept="7CXmI" id="6WKYICFTfhw" role="lGtFl">
            <node concept="mDk06" id="6WKYICFTfhx" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfnj">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_initializer_must_have_the_declared_type" />
    <node concept="1qefOq" id="6WKYICFTfnk" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfnm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTfnn" role="1JIkAo">
          <property role="TrG5h" value="mistyped" />
          <node concept="2Kh4GC" id="6WKYICFTfno" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICFTfnp" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="7CXmI" id="6WKYICFTfnq" role="lGtFl">
              <node concept="mDk06" id="6WKYICFTfnr" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTftP">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_of_an_enclosing_block_is_visible_inside_a_nested_one" />
    <node concept="1qefOq" id="6WKYICFTftQ" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTftS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTftT" role="1JIkAo">
          <property role="TrG5h" value="enclosing" />
          <node concept="24BhzH" id="6WKYICFTftU" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3Oct9B" id="6WKYICFTftV" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFTftY" role="18F3B4">
            <node concept="2v$HdM" id="6WKYICFTfu1" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTftT" resolve="enclosing" />
            </node>
            <node concept="24BhzH" id="6WKYICFTfu2" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFTfu3" role="12avcn">
            <node concept="3ja7nU" id="6WKYICFTfu4" role="6EW52">
              <node concept="2v$HdM" id="6WKYICFTfu6" role="$a3P1">
                <ref role="2oxrr9" node="6WKYICFTftT" resolve="enclosing" />
                <node concept="7CXmI" id="6WKYICFTfu7" role="lGtFl">
                  <node concept="30Omv" id="6WKYICFTfu8" role="7EUXB">
                    <node concept="1ku6r5" id="6WKYICFTfua" role="31d$z" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFTfub" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFTfuc" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTf$C">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_is_not_visible_before_it_is_declared" />
    <node concept="1qefOq" id="6WKYICFTf$D" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTf$F" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFTf$G" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf$I" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf$L" resolve="declaredLater" />
            <node concept="7CXmI" id="6WKYICFTf$J" role="lGtFl">
              <node concept="mDk06" id="6WKYICFTf$K" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFTf$L" role="1JIkAo">
          <property role="TrG5h" value="declaredLater" />
          <node concept="24BhzH" id="6WKYICFTf$M" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICFY8me">
    <property role="TrG5h" value="Typing_const_in_a_statement_list_creates_a_const_declaration" />
    <node concept="1qefOq" id="6WKYICFY8mf" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICFY8mh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFY8mi" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICFY8mk" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICFY8ml" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICFY8mm" role="LjaKd">
      <node concept="2HxZob" id="6WKYICFY8mn" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICFY8mp" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="6WKYICFY8mq" role="3cqZAp">
        <property role="2TTd_B" value="const" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICFY8mr" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICFY8mt" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFY8mu" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICFY8mw" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFY8mx" role="1JIkAo" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICFYEeV">
    <property role="TrG5h" value="The_intention_adds_the_else_branch_the_editor_hides_when_it_is_empty" />
    <node concept="1qefOq" id="6WKYICFYEeW" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICFYEeY" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICFYEeZ" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFYEf2" role="18F3B4">
            <node concept="24BhzH" id="6WKYICFYEf5" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFYEf7" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFYEf8" role="12avcn" />
          <node concept="LIFWc" id="6WKYICFZVvr" role="lGtFl">
            <property role="LIFWd" value="ifKeyword" />
            <property role="ZRATv" value="true" />
            <property role="p6zMq" value="2" />
            <property role="p6zMs" value="2" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICFYEf9" role="LjaKd">
      <node concept="1MFPAf" id="6WKYICFYXzv" role="3cqZAp">
        <ref role="1MFYO6" to="hb1i:6WKYICFLkqh" resolve="AddElseBranch" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICFYEfb" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICFYEfd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICFYEfe" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFYEfh" role="18F3B4">
            <node concept="24BhzH" id="6WKYICFYEfk" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFYEfl" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFYEfm" role="12avcn" />
          <node concept="qYD23" id="6WKYICFYEfn" role="2uaaIR" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG1agd">
    <property role="TrG5h" value="Typing_a_declarations_name_creates_a_reference_to_it" />
    <node concept="1qefOq" id="6WKYICG1age" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG1agg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICG1agh" role="1JIkAo">
          <property role="TrG5h" value="greeted" />
          <node concept="24BhzH" id="6WKYICG1agi" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG1agj" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG1agl" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICG1agm" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG1agn" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG1ago" role="3cqZAp">
        <property role="2TTd_B" value="+greeted" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG1agp" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG1agr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICG1ags" role="1JIkAo">
          <property role="TrG5h" value="greeted" />
          <node concept="24BhzH" id="6WKYICG1agt" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG1agu" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICG1agw" role="$a3P1">
            <node concept="24BhzH" id="6WKYICG1agz" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="2v$HdM" id="6WKYICG1ag$" role="GyX5B">
              <ref role="2oxrr9" node="6WKYICG1ags" resolve="greeted" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICG5KN1">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Floating_point_literals_are_numbers" />
    <node concept="1qefOq" id="6WKYICG5KN2" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICG5KN4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5KN5" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICG5KN7" role="$a3P1">
            <node concept="24BhzH" id="6WKYICG5KNa" role="33kRt2">
              <property role="2Hr5CV" value="1.5" />
              <node concept="7CXmI" id="6WKYICG5KNb" role="lGtFl">
                <node concept="30Omv" id="6WKYICG5KNc" role="7EUXB">
                  <node concept="1ku6r5" id="6WKYICG5KNe" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICG5KNf" role="GyX5B">
              <property role="2Hr5CV" value=".25" />
              <node concept="7CXmI" id="6WKYICG5KNg" role="lGtFl">
                <node concept="30Omv" id="6WKYICG5KNh" role="7EUXB">
                  <node concept="1ku6r5" id="6WKYICG5KNj" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="6WKYICG5KNk" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KNl" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNn" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICG5KNo" role="lGtFl">
          <node concept="7OXhh" id="6WKYICG5KNp" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG5KNq" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KNs" role="$a3P1">
            <property role="2Hr5CV" value="1.5e-3" />
            <node concept="7CXmI" id="6WKYICG5KNt" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KNu" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNw" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG5KNx" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KNz" role="$a3P1">
            <property role="2Hr5CV" value="1." />
            <node concept="7CXmI" id="6WKYICG5KN$" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KN_" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNB" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICG5KVx">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_number_literal_that_stops_at_its_exponent_is_an_error" />
    <node concept="1qefOq" id="6WKYICG5KVy" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICG5KV$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5KV_" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KVB" role="$a3P1">
            <property role="2Hr5CV" value="1.5e" />
            <node concept="7CXmI" id="6WKYICG5KVC" role="lGtFl">
              <node concept="mDk06" id="6WKYICG5KVD" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG5L3S">
    <property role="TrG5h" value="Typing_a_decimal_point_continues_the_number_literal" />
    <node concept="1qefOq" id="6WKYICG5L3T" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG5L3V" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5L3W" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5L3Y" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICG5L3Z" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG5L40" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG5L41" role="3cqZAp">
        <property role="2TTd_B" value=".5" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG5L42" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG5L44" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5L45" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5L47" role="$a3P1">
            <property role="2Hr5CV" value="1.5" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG5LcP">
    <property role="TrG5h" value="Typing_an_exponent_continues_the_number_literal" />
    <node concept="1qefOq" id="6WKYICG5LcQ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG5LcS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5LcT" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5LcV" role="$a3P1">
            <property role="2Hr5CV" value="1.5" />
            <node concept="LIFWc" id="6WKYICG5LcW" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="3" />
              <property role="p6zMq" value="3" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG5LcX" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG5LcY" role="3cqZAp">
        <property role="2TTd_B" value="e3" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG5LcZ" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG5Ld1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5Ld2" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5Ld4" role="$a3P1">
            <property role="2Hr5CV" value="1.5e3" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_e5">
    <property role="TrG5h" value="Typing_a_colon_after_the_name_adds_the_type_annotation" />
    <node concept="1qefOq" id="6WKYICGd_e6" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_e8" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_e9" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="6WKYICGd_ea" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="LIFWc" id="6WKYICGd_eb" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_ec" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_ed" role="3cqZAp">
        <property role="2TTd_B" value=":number" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_ee" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_eg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_eh" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_ei" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_ej" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_nB">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_name_adds_the_initializer" />
    <node concept="1qefOq" id="6WKYICGd_nC" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_nE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_nF" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_nG" role="19IeeE" />
          <node concept="LIFWc" id="6WKYICGd_nH" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_nI" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_nJ" role="3cqZAp">
        <property role="2TTd_B" value="=1" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_nK" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_nM" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_nN" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_nO" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_nP" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_xo">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_type_annotation_adds_the_initializer" />
    <node concept="1qefOq" id="6WKYICGd_xp" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_xr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_xs" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_xt" role="19IeeE">
            <node concept="LIFWc" id="6WKYICGd_xu" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_xv" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_xw" role="3cqZAp">
        <property role="2TTd_B" value="=1" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_xx" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_xz" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_x$" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_x_" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_xA" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_FI">
    <property role="TrG5h" value="Typing_else_after_the_then_block_adds_the_else_branch" />
    <node concept="1qefOq" id="6WKYICGd_FJ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_FL" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGd_FM" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGd_FP" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGd_FS" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGd_FT" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGd_FU" role="12avcn">
            <node concept="LIFWc" id="6WKYICGd_FV" role="lGtFl">
              <property role="LIFWd" value="closingBrace" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_FW" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_FX" role="3cqZAp">
        <property role="2TTd_B" value="else{" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_FY" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_G0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGd_G1" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGd_G4" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGd_G7" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGd_G8" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGd_G9" role="12avcn" />
          <node concept="qYD23" id="6WKYICGd_Ga" role="2uaaIR" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGdA1a">
    <property role="TrG5h" value="Typing_else_if_after_the_then_block_adds_a_clause" />
    <node concept="1qefOq" id="6WKYICGdA1b" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGdA1d" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdA1e" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGdA1h" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGdA1k" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGdA1l" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGdA1m" role="12avcn">
            <node concept="LIFWc" id="6WKYICGdA1n" role="lGtFl">
              <property role="LIFWd" value="closingBrace" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGdA1o" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGdA1p" role="3cqZAp">
        <property role="2TTd_B" value="else if" />
      </node>
      <node concept="2TK7Tu" id="6WKYICGdA1q" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGdA1r" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGdA1t" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdA1u" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGdA1x" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGdA1$" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGdA1_" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGdA1A" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdA1B" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdA1E" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdA1F" role="1TBx7Y" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGdAc_">
    <property role="TrG5h" value="Typing_else_if_after_a_clauses_block_appends_a_second_clause" />
    <node concept="1qefOq" id="6WKYICGdAcA" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGdAcC" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdAcD" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGdAcG" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGdAcH" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdAcI" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAcL" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdAcM" role="1TBx7Y">
              <node concept="LIFWc" id="6WKYICGdAcN" role="lGtFl">
                <property role="LIFWd" value="closingBrace" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGdAcO" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGdAcP" role="3cqZAp">
        <property role="2TTd_B" value="else if" />
      </node>
      <node concept="2TK7Tu" id="6WKYICGdAcQ" role="3cqZAp">
        <property role="2TTd_B" value="3" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGdAcR" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGdAcT" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdAcU" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGdAcX" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGdAcY" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdAcZ" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAd2" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdAd3" role="1TBx7Y" />
          </node>
          <node concept="ILWLb" id="6WKYICGdAd4" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAd7" role="1usCvQ">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="qYD23" id="6WKYICGdAd8" role="1TBx7Y" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGgGmP">
    <property role="TrG5h" value="Typing_else_after_a_block_that_is_only_a_statement_does_nothing" />
    <node concept="1qefOq" id="6WKYICGgGmQ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGgGmS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGgGmT" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGgGmW" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGgGmX" role="12avcn">
            <node concept="qYD23" id="6WKYICGgGmY" role="6EW52">
              <node concept="LIFWc" id="6WKYICGgGmZ" role="lGtFl">
                <property role="LIFWd" value="closingBrace" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGgGn0" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGgGn1" role="3cqZAp">
        <property role="2TTd_B" value="else{" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGgGn2" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGgGn4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGgGn5" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGgGn8" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGgGn9" role="12avcn">
            <node concept="qYD23" id="6WKYICGgGna" role="6EW52" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

