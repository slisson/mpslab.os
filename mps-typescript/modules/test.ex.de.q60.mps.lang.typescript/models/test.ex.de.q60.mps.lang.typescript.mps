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
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="value" index="3b_9E9" />
      </concept>
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="6275768358144507624" name="de.q60.mps.lang.typescript.structure.TSEqualsExpression" flags="ng" index="1CNJNU" />
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
</model>

