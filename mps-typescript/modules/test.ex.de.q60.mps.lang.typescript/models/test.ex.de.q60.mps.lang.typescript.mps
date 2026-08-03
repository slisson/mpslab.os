<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1f63df8-2f97-4afe-aab5-5d1cb10edbe3(test.ex.de.q60.mps.lang.typescript)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <use id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="2282927104365302788" name="de.q60.mps.lang.typescript.structure.TSTernaryOperatorExpression" flags="ng" index="0o88v">
        <child id="7744661840340332174" name="ifTrue" index="10ubTB" />
        <child id="4217550342683633468" name="ifFalse" index="3nuTyc" />
        <child id="7687543187806104797" name="condition" index="3y1SWh" />
      </concept>
      <concept id="1507547570108522935" name="de.q60.mps.lang.typescript.structure.TSMinusExpression" flags="ng" index="2IocK" />
      <concept id="8373526123298530633" name="de.q60.mps.lang.typescript.structure.TSNumberLiteral" flags="ng" index="24BhzH">
        <property id="7606013538328487736" name="value" index="2Hr5CV" />
      </concept>
      <concept id="2450593264803086893" name="de.q60.mps.lang.typescript.structure.TSNotExpression" flags="ng" index="fzWeU" />
      <concept id="7893345815834438480" name="de.q60.mps.lang.typescript.structure.TSStrictEqualsExpression" flags="ng" index="2fEAty" />
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="5261423696657887118" name="de.q60.mps.lang.typescript.structure.TSUnaryMinusExpression" flags="ng" index="2t6vHR" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="1148579228915497614" name="de.q60.mps.lang.typescript.structure.TSNullLiteral" flags="ng" index="C5IwR" />
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
      <concept id="8023700100379537636" name="de.q60.mps.lang.typescript.structure.TSUndefinedLiteral" flags="ng" index="2OeDxu" />
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="5203292047127445673" name="de.q60.mps.lang.typescript.structure.TSUnaryOperation" flags="ng" index="V$4S_">
        <child id="1920165562965334341" name="expression" index="3CQlky" />
      </concept>
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="value" index="3b_9E9" />
      </concept>
      <concept id="4112825962079110083" name="de.q60.mps.lang.typescript.structure.TSExponentExpression" flags="ng" index="35EnaC" />
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="902545861387718385" name="de.q60.mps.lang.typescript.structure.TSAssignmentStatement" flags="ng" index="3p1v9s">
        <child id="488639419388104298" name="target" index="219B2s" />
        <child id="834448770786422024" name="expression" index="1IqeeO" />
      </concept>
      <concept id="4523838444874165896" name="de.q60.mps.lang.typescript.structure.TSUnionType" flags="ng" index="3pfgAg">
        <child id="4870825102337838263" name="types" index="3KvU$C" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="9084056344319210901" name="de.q60.mps.lang.typescript.structure.TSUnaryPlusExpression" flags="ng" index="3sPFy8" />
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
      <concept id="5086057359599138485" name="de.q60.mps.lang.typescript.structure.TSUndefinedType" flags="ng" index="3OJVyd" />
    </language>
    <language id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest">
      <concept id="5324903807302792343" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertFalse" flags="ng" index="2gzqXr">
        <child id="1719658372091490261" name="condition" index="2OlPJS" />
      </concept>
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
      <concept id="7158842254919711510" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertNotEquals" flags="ng" index="1$OICc">
        <child id="3663594992465210637" name="expected" index="s7_$L" />
        <child id="6572111961859092722" name="actual" index="1_w2nK" />
      </concept>
      <concept id="1671337506811517318" name="de.q60.mps.lang.typescript.unitTest.structure.TSFail" flags="ng" index="1Iu54t">
        <child id="1832419353059037549" name="message" index="1NN9Vs" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Jsc18" id="6WKYICFB5QI">
    <property role="TrG5h" value="arithmetic" />
    <node concept="B13S5" id="6WKYICFB5QJ" role="1QJMAF">
      <property role="TrG5h" value="multiplication binds tighter than addition" />
      <node concept="174eko" id="6WKYICFB5QK" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFB5QN" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICFB5QQ" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="mk1J3" id="6WKYICFB5QR" role="GyX5B">
            <node concept="24BhzH" id="6WKYICFB5QU" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5QV" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5QW" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5QX" role="1QJMAF">
      <property role="TrG5h" value="parentheses override the operator priority" />
      <node concept="174eko" id="6WKYICFB5QY" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICFB5R1" role="1s_IBt">
          <node concept="pJsIj" id="6WKYICFB5R4" role="33kRt2">
            <node concept="1rvuUm" id="6WKYICFB5R6" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICFB5R9" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFB5Ra" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5Rb" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Rc" role="3SOflj">
          <property role="2Hr5CV" value="9" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Rd" role="1QJMAF">
      <property role="TrG5h" value="division and subtraction" />
      <node concept="174eko" id="6WKYICFB5Re" role="1OrNMJ">
        <node concept="2o8mD1" id="6WKYICFB5Rh" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICFB5Rk" role="33kRt2">
            <property role="2Hr5CV" value="10" />
          </node>
          <node concept="pJsIj" id="6WKYICFB5Rl" role="GyX5B">
            <node concept="2IocK" id="6WKYICFB5Rn" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICFB5Rq" role="33kRt2">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="24BhzH" id="6WKYICFB5Rr" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Rs" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICG5KBp" role="1QJMAF">
      <property role="TrG5h" value="floating point literals" />
      <node concept="174eko" id="6WKYICG5KBq" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICG5KBt" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBw" role="33kRt2">
            <property role="2Hr5CV" value="1.5" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBx" role="GyX5B">
            <property role="2Hr5CV" value="2.25" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBy" role="3SOflj">
          <property role="2Hr5CV" value="3.75" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICG5KBz" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICG5KBA" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBD" role="33kRt2">
            <property role="2Hr5CV" value="1.5e3" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBE" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBF" role="3SOflj">
          <property role="2Hr5CV" value="3000" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICG5KBG" role="1OrNMJ">
        <node concept="2o8mD1" id="6WKYICG5KBJ" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBM" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBN" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBO" role="3SOflj">
          <property role="2Hr5CV" value=".25" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzOz" role="1QJMAF">
      <property role="TrG5h" value="exponentiation is right associative" />
      <node concept="174eko" id="6WKYICGJzO$" role="1OrNMJ">
        <node concept="35EnaC" id="6WKYICGJzOB" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzOE" role="33kRt2">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="35EnaC" id="6WKYICGJzOF" role="GyX5B">
            <node concept="24BhzH" id="6WKYICGJzOI" role="33kRt2">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="24BhzH" id="6WKYICGJzOJ" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzOK" role="3SOflj">
          <property role="2Hr5CV" value="512" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICGJzOL" role="1OrNMJ">
        <node concept="35EnaC" id="6WKYICGJzOO" role="1s_IBt">
          <node concept="pJsIj" id="6WKYICGJzOR" role="33kRt2">
            <node concept="35EnaC" id="6WKYICGJzOT" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICGJzOW" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="6WKYICGJzOX" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICGJzOY" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzOZ" role="3SOflj">
          <property role="2Hr5CV" value="64" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzP0" role="1QJMAF">
      <property role="TrG5h" value="exponentiation binds tighter than multiplication" />
      <node concept="174eko" id="6WKYICGJzP1" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICGJzP4" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzP7" role="33kRt2">
            <property role="2Hr5CV" value="3" />
          </node>
          <node concept="35EnaC" id="6WKYICGJzP8" role="GyX5B">
            <node concept="24BhzH" id="6WKYICGJzPb" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6WKYICGJzPc" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzPd" role="3SOflj">
          <property role="2Hr5CV" value="24" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFB5UU">
    <property role="TrG5h" value="comparison" />
    <node concept="B13S5" id="6WKYICFB5UV" role="1QJMAF">
      <property role="TrG5h" value="numbers compare by value" />
      <node concept="2xtvZL" id="6WKYICFB5UW" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFB5UY" role="2tmK5A">
          <node concept="mk1J3" id="6WKYICFB5V1" role="33kRt2">
            <node concept="24BhzH" id="6WKYICFB5V4" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5V5" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5V6" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5V7" role="1QJMAF">
      <property role="TrG5h" value="different numbers are not equal" />
      <node concept="2gzqXr" id="6WKYICFB5V8" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFB5Va" role="2OlPJS">
          <node concept="mk1J3" id="6WKYICFB5Vd" role="33kRt2">
            <node concept="24BhzH" id="6WKYICFB5Vg" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5Vh" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5Vi" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
      </node>
      <node concept="1$OICc" id="6WKYICFB5Vj" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFB5Vm" role="1_w2nK">
          <node concept="24BhzH" id="6WKYICFB5Vp" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="6WKYICFB5Vq" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Vr" role="s7_$L">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Vs" role="1QJMAF">
      <property role="TrG5h" value="strings compare by value" />
      <node concept="174eko" id="6WKYICFB5Vt" role="1OrNMJ">
        <node concept="33xXhr" id="6WKYICFB5Vw" role="1s_IBt">
          <property role="3b_9E9" value="a &quot;quoted&quot; word" />
        </node>
        <node concept="33xXhr" id="6WKYICFB5Vx" role="3SOflj">
          <property role="3b_9E9" value="a &quot;quoted&quot; word" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Vy" role="1QJMAF">
      <property role="TrG5h" value="a ternary evaluates the branch its condition selects" />
      <node concept="174eko" id="6WKYICFB5Vz" role="1OrNMJ">
        <node concept="0o88v" id="6WKYICFB5VA" role="1s_IBt">
          <node concept="1CNJNU" id="6WKYICFB5VE" role="3y1SWh">
            <node concept="24BhzH" id="6WKYICFB5VH" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5VI" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5VJ" role="10ubTB">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="6WKYICFB5VK" role="3nuTyc">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5VL" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFTeMp">
    <property role="TrG5h" value="declarations" />
    <node concept="B13S5" id="6WKYICFTeMq" role="1QJMAF">
      <property role="TrG5h" value="a const keeps the value it was initialized with" />
      <node concept="2MuU66" id="6WKYICFTeMr" role="1OrNMJ">
        <property role="TrG5h" value="answer" />
        <node concept="1ku6r5" id="6WKYICFTeMs" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeMt" role="1bGQZ8">
          <property role="2Hr5CV" value="40" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMu" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFTeMx" role="1s_IBt">
          <node concept="2v$HdM" id="6WKYICFTeM$" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeMr" resolve="answer" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeM_" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFTeMA" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeMB" role="1QJMAF">
      <property role="TrG5h" value="a let can be reassigned" />
      <node concept="2swglJ" id="6WKYICFTeMC" role="1OrNMJ">
        <property role="TrG5h" value="counter" />
        <node concept="1ku6r5" id="6WKYICFTeMD" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeME" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3p1v9s" id="6WKYICFTeMF" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeMI" role="219B2s">
          <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
        </node>
        <node concept="mk1J3" id="6WKYICFTeMJ" role="1IqeeO">
          <node concept="2v$HdM" id="6WKYICFTeMM" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeMN" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMO" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeMR" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeMS" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeMT" role="1QJMAF">
      <property role="TrG5h" value="a declaration without an annotation takes the type of its initializer" />
      <node concept="2MuU66" id="6WKYICFTeMU" role="1OrNMJ">
        <property role="TrG5h" value="word" />
        <node concept="33xXhr" id="6WKYICFTeMV" role="1bGQZ8">
          <property role="3b_9E9" value="hello" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMW" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeMZ" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeMU" resolve="word" />
        </node>
        <node concept="33xXhr" id="6WKYICFTeN0" role="3SOflj">
          <property role="3b_9E9" value="hello" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFTeVV">
    <property role="TrG5h" value="control_flow" />
    <node concept="B13S5" id="6WKYICFTeVW" role="1QJMAF">
      <property role="TrG5h" value="an if runs the then branch when its condition holds" />
      <node concept="2swglJ" id="6WKYICFTeVX" role="1OrNMJ">
        <property role="TrG5h" value="flow" />
        <node concept="2Kh4GC" id="6WKYICFTeVY" role="19IeeE" />
        <node concept="33xXhr" id="6WKYICFTeVZ" role="1bGQZ8">
          <property role="3b_9E9" value="none" />
        </node>
      </node>
      <node concept="2MuU66" id="6WKYICFTeW0" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="6WKYICFTeW1" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeW2" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeW3" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeW6" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeW9" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeW0" resolve="one" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeWa" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWb" role="12avcn">
          <node concept="3p1v9s" id="6WKYICFTeWc" role="6EW52">
            <node concept="2v$HdM" id="6WKYICFTeWf" role="219B2s">
              <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
            </node>
            <node concept="33xXhr" id="6WKYICFTeWg" role="1IqeeO">
              <property role="3b_9E9" value="then" />
            </node>
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWh" role="2uaaIR">
          <node concept="3p1v9s" id="6WKYICFTeWi" role="6EW52">
            <node concept="2v$HdM" id="6WKYICFTeWl" role="219B2s">
              <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
            </node>
            <node concept="33xXhr" id="6WKYICFTeWm" role="1IqeeO">
              <property role="3b_9E9" value="else" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeWn" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeWq" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
        </node>
        <node concept="33xXhr" id="6WKYICFTeWr" role="3SOflj">
          <property role="3b_9E9" value="then" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeWs" role="1QJMAF">
      <property role="TrG5h" value="an else-if branch runs when the first condition does not hold" />
      <node concept="2swglJ" id="6WKYICFTeWt" role="1OrNMJ">
        <property role="TrG5h" value="chosen" />
        <node concept="1ku6r5" id="6WKYICFTeWu" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeWv" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2MuU66" id="6WKYICFTeWw" role="1OrNMJ">
        <property role="TrG5h" value="two" />
        <node concept="1ku6r5" id="6WKYICFTeWx" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeWy" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeWz" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeWA" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeWD" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeWw" resolve="two" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeWE" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWF" role="12avcn">
          <node concept="3p1v9s" id="6WKYICFTeWG" role="6EW52">
            <node concept="2v$HdM" id="6WKYICFTeWJ" role="219B2s">
              <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
            </node>
            <node concept="24BhzH" id="6WKYICFTeWK" role="1IqeeO">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
        <node concept="ILWLb" id="6WKYICFTeWL" role="1X4dzr">
          <node concept="1CNJNU" id="6WKYICFTeWO" role="1usCvQ">
            <node concept="2v$HdM" id="6WKYICFTeWR" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTeWw" resolve="two" />
            </node>
            <node concept="24BhzH" id="6WKYICFTeWS" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFTeWT" role="1TBx7Y">
            <node concept="3p1v9s" id="6WKYICFTeWU" role="6EW52">
              <node concept="2v$HdM" id="6WKYICFTeWX" role="219B2s">
                <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
              </node>
              <node concept="24BhzH" id="6WKYICFTeWY" role="1IqeeO">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWZ" role="2uaaIR">
          <node concept="3p1v9s" id="6WKYICFTeX0" role="6EW52">
            <node concept="2v$HdM" id="6WKYICFTeX3" role="219B2s">
              <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
            </node>
            <node concept="24BhzH" id="6WKYICFTeX4" role="1IqeeO">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeX5" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeX8" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeX9" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeXa" role="1QJMAF">
      <property role="TrG5h" value="a branch that must not be taken fails the test if it is" />
      <node concept="2MuU66" id="6WKYICFTeXb" role="1OrNMJ">
        <property role="TrG5h" value="guarded" />
        <node concept="1ku6r5" id="6WKYICFTeXc" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeXd" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeXe" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeXh" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeXk" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeXb" resolve="guarded" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeXl" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeXm" role="12avcn">
          <node concept="1Iu54t" id="6WKYICFTeXn" role="6EW52">
            <node concept="33xXhr" id="6WKYICFTeXp" role="1NN9Vs">
              <property role="3b_9E9" value="1 is not 2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeXq" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeXt" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeXb" resolve="guarded" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeXu" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICGJzWI">
    <property role="TrG5h" value="unary" />
    <node concept="B13S5" id="6WKYICGJzWJ" role="1QJMAF">
      <property role="TrG5h" value="logical not" />
      <node concept="2MuU66" id="6WKYICGK9jh" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="6WKYICGK9ji" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICGK9jj" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="2xtvZL" id="6WKYICGK9jk" role="1OrNMJ">
        <node concept="fzWeU" id="6WKYICGK9jm" role="2tmK5A">
          <node concept="pJsIj" id="6WKYICGK9jo" role="3CQlky">
            <node concept="1CNJNU" id="6WKYICGK9jq" role="3tJ$EF">
              <node concept="2v$HdM" id="6WKYICGK9jt" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICGK9jh" resolve="one" />
              </node>
              <node concept="24BhzH" id="6WKYICGK9ju" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="6WKYICGK9jv" role="1OrNMJ">
        <node concept="fzWeU" id="6WKYICGK9jx" role="2OlPJS">
          <node concept="pJsIj" id="6WKYICGK9jz" role="3CQlky">
            <node concept="1CNJNU" id="6WKYICGK9j_" role="3tJ$EF">
              <node concept="2v$HdM" id="6WKYICGK9jC" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICGK9jh" resolve="one" />
              </node>
              <node concept="24BhzH" id="6WKYICGK9jD" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzX6" role="1QJMAF">
      <property role="TrG5h" value="unary minus binds tighter than addition" />
      <node concept="174eko" id="6WKYICGJzX7" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICGJzXa" role="1s_IBt">
          <node concept="2t6vHR" id="6WKYICGJzXd" role="33kRt2">
            <node concept="24BhzH" id="6WKYICGJzXf" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICGJzXg" role="GyX5B">
            <property role="2Hr5CV" value="8" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXh" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzXi" role="1QJMAF">
      <property role="TrG5h" value="nested unary minus is not the decrement operator" />
      <node concept="174eko" id="6WKYICGJzXj" role="1OrNMJ">
        <node concept="2t6vHR" id="6WKYICGJzXm" role="1s_IBt">
          <node concept="2t6vHR" id="6WKYICGJzXo" role="3CQlky">
            <node concept="24BhzH" id="6WKYICGJzXq" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXr" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzXs" role="1QJMAF">
      <property role="TrG5h" value="unary plus" />
      <node concept="174eko" id="6WKYICGJzXt" role="1OrNMJ">
        <node concept="3sPFy8" id="6WKYICGJzXw" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzXy" role="3CQlky">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXz" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5TZAFSUv0Ky">
    <property role="TrG5h" value="unions_and_nullish" />
    <node concept="B13S5" id="5TZAFSUv0Kz" role="1QJMAF">
      <property role="TrG5h" value="a union typed variable holds either member" />
      <node concept="2swglJ" id="5TZAFSUv0K$" role="1OrNMJ">
        <property role="TrG5h" value="value" />
        <node concept="3pfgAg" id="5TZAFSUv0K_" role="19IeeE">
          <node concept="2Kh4GC" id="5TZAFSUv0KA" role="3KvU$C" />
          <node concept="1ku6r5" id="5TZAFSUv0KB" role="3KvU$C" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0KC" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0KD" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0KG" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0KH" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3p1v9s" id="5TZAFSUv0KI" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0KL" role="219B2s">
          <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
        </node>
        <node concept="33xXhr" id="5TZAFSUv0KM" role="1IqeeO">
          <property role="3b_9E9" value="text" />
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0KN" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0KQ" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
        </node>
        <node concept="33xXhr" id="5TZAFSUv0KR" role="3SOflj">
          <property role="3b_9E9" value="text" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5TZAFSUv0KS" role="1QJMAF">
      <property role="TrG5h" value="null and undefined are values of their own" />
      <node concept="2MuU66" id="5TZAFSUv0KT" role="1OrNMJ">
        <property role="TrG5h" value="nothing" />
        <node concept="2UUy$f" id="5TZAFSUv0KU" role="19IeeE" />
        <node concept="C5IwR" id="5TZAFSUv0KV" role="1bGQZ8" />
      </node>
      <node concept="2xtvZL" id="5TZAFSUv0KW" role="1OrNMJ">
        <node concept="2fEAty" id="5TZAFSUv0KY" role="2tmK5A">
          <node concept="2v$HdM" id="5TZAFSUv0L1" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0KT" resolve="nothing" />
          </node>
          <node concept="C5IwR" id="5TZAFSUv0L2" role="GyX5B" />
        </node>
      </node>
      <node concept="2MuU66" id="5TZAFSUv0L3" role="1OrNMJ">
        <property role="TrG5h" value="missing" />
        <node concept="3OJVyd" id="5TZAFSUv0L4" role="19IeeE" />
        <node concept="2OeDxu" id="5TZAFSUv0L5" role="1bGQZ8" />
      </node>
      <node concept="2xtvZL" id="5TZAFSUv0L6" role="1OrNMJ">
        <node concept="2fEAty" id="5TZAFSUv0L8" role="2tmK5A">
          <node concept="2v$HdM" id="5TZAFSUv0Lb" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0L3" resolve="missing" />
          </node>
          <node concept="2OeDxu" id="5TZAFSUv0Lc" role="GyX5B" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5TZAFSUv0Ld" role="1QJMAF">
      <property role="TrG5h" value="a nullable variable holds the null literal or a number" />
      <node concept="2swglJ" id="5TZAFSUv0Le" role="1OrNMJ">
        <property role="TrG5h" value="maybe" />
        <node concept="3pfgAg" id="5TZAFSUv0Lf" role="19IeeE">
          <node concept="2UUy$f" id="5TZAFSUv0Lg" role="3KvU$C" />
          <node concept="1ku6r5" id="5TZAFSUv0Lh" role="3KvU$C" />
        </node>
        <node concept="C5IwR" id="5TZAFSUv0Li" role="1bGQZ8" />
      </node>
      <node concept="174eko" id="5TZAFSUv0Lj" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0Lm" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
        </node>
        <node concept="C5IwR" id="5TZAFSUv0Ln" role="3SOflj" />
      </node>
      <node concept="3p1v9s" id="5TZAFSUv0Lo" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0Lr" role="219B2s">
          <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0Ls" role="1IqeeO">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0Lt" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0Lw" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0Lx" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
  </node>
</model>

