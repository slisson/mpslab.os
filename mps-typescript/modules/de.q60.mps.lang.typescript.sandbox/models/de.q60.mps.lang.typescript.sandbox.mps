<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32eca46c-b913-4bca-b9f5-3b2c26c671f1(de.q60.mps.lang.typescript.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="8721570043856821956" name="de.q60.mps.lang.typescript.structure.TSConsoleLog" flags="ng" index="22NMdU">
        <child id="4034092257342201905" name="argument" index="3xWHAT" />
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
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="value" index="3b_9E9" />
      </concept>
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
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
      <node concept="22NMdU" id="LRngVnQgjf" role="$a3P1">
        <node concept="33xXhr" id="LRngVnQgjg" role="3xWHAT">
          <property role="3b_9E9" value="Hello, world!" />
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
</model>

