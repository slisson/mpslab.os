<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32eca46c-b913-4bca-b9f5-3b2c26c671f1(de.q60.mps.lang.typescript.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="-1" />
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
      <concept id="2596016207932595749" name="de.q60.mps.lang.typescript.structure.TSModule" flags="ng" index="24Z7zp">
        <child id="906924707476882095" name="statements" index="1JIkAo" />
      </concept>
      <concept id="1856649162453200722" name="de.q60.mps.lang.typescript.structure.TSConsoleOp_Log" flags="ng" index="2hi8J1">
        <child id="2591751422752546988" name="argument" index="3gGa23" />
      </concept>
      <concept id="8391732534571575383" name="de.q60.mps.lang.typescript.structure.TSDotExpression" flags="ng" index="hjOgg">
        <child id="439023831131999408" name="operation" index="CABlD" />
        <child id="7381226927831223239" name="operand" index="3DwI$f" />
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
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="3145181163763065424" name="de.q60.mps.lang.typescript.structure.TSConsole" flags="ng" index="3JZgZa" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24Z7zp" id="LRngVnQgjd">
    <property role="TrG5h" value="hello" />
    <node concept="3ja7nU" id="LRngVnQgje" role="1JIkAo">
      <node concept="hjOgg" id="5xjl6SV$pw" role="$a3P1">
        <node concept="3JZgZa" id="5xjl6SV$pz" role="3DwI$f" />
        <node concept="2hi8J1" id="5xjl6SV$p$" role="CABlD">
          <node concept="33xXhr" id="5xjl6SV$p_" role="3gGa23">
            <property role="3b_9E9" value="Hello, world!" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="DTPfQdiZrE">
    <property role="TrG5h" value="demo" />
    <node concept="3ja7nU" id="DTPfQdiZrF" role="1JIkAo">
      <node concept="hjOgg" id="DTPfQdiZrG" role="$a3P1">
        <node concept="3JZgZa" id="DTPfQdiZrH" role="3DwI$f" />
        <node concept="2hi8J1" id="DTPfQdiZrI" role="CABlD">
          <node concept="33xXhr" id="DTPfQdiZrJ" role="3gGa23">
            <property role="3b_9E9" value="Hello, world!" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5YMdeRclLm">
    <property role="TrG5h" value="math" />
    <node concept="3ja7nU" id="5YMdeRclLn" role="1JIkAo">
      <node concept="2o8mD1" id="5YMdeRclLp" role="$a3P1">
        <node concept="mk1J3" id="5YMdeRclLs" role="33kRt2">
          <node concept="24BhzH" id="5YMdeRclLv" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="pJsIj" id="5YMdeRclLw" role="GyX5B">
            <node concept="1rvuUm" id="5YMdeRclLy" role="3tJ$EF">
              <node concept="24BhzH" id="5YMdeRclL_" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5YMdeRclLA" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="pJsIj" id="5YMdeRclLB" role="GyX5B">
          <node concept="2IocK" id="5YMdeRclLD" role="3tJ$EF">
            <node concept="24BhzH" id="5YMdeRclLG" role="33kRt2">
              <property role="2Hr5CV" value="4" />
            </node>
            <node concept="24BhzH" id="5YMdeRclLH" role="GyX5B">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5Xb8BFgqa8L">
    <property role="TrG5h" value="ternary" />
    <node concept="3ja7nU" id="5Xb8BFgqa8M" role="1JIkAo">
      <node concept="0o88v" id="5Xb8BFgqa8O" role="$a3P1">
        <node concept="1rvuUm" id="5Xb8BFgqa8S" role="3y1SWh">
          <node concept="24BhzH" id="5Xb8BFgqa8V" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa8W" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="mk1J3" id="5Xb8BFgqa8X" role="10ubTB">
          <node concept="24BhzH" id="5Xb8BFgqa90" role="33kRt2">
            <property role="2Hr5CV" value="3" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa91" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="0o88v" id="5Xb8BFgqa92" role="3nuTyc">
          <node concept="24BhzH" id="5Xb8BFgqa96" role="3y1SWh">
            <property role="2Hr5CV" value="5" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa97" role="10ubTB">
            <property role="2Hr5CV" value="6" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa98" role="3nuTyc">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5Xb8BFgqa99" role="1JIkAo">
      <node concept="1rvuUm" id="5Xb8BFgqa9b" role="$a3P1">
        <node concept="pJsIj" id="5Xb8BFgqa9e" role="33kRt2">
          <node concept="0o88v" id="5Xb8BFgqa9g" role="3tJ$EF">
            <node concept="24BhzH" id="5Xb8BFgqa9k" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgqa9l" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgqa9m" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="5Xb8BFgqa9n" role="GyX5B">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
  </node>
</model>

