<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ca666ffb-a99b-49fd-a375-315208406478(de.q60.mps.lang.typescript.lib)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="5273689272520536483" name="de.q60.mps.lang.typescript.structure.TSArrayType" flags="ng" index="29s1Bg">
        <child id="8144558156267705696" name="elementType" index="2XRTOt" />
      </concept>
      <concept id="793978610932627840" name="de.q60.mps.lang.typescript.structure.TSUnknownType" flags="ng" index="cSnVn" />
      <concept id="8753009674359597755" name="de.q60.mps.lang.typescript.structure.TSVoidType" flags="ng" index="qIwln" />
      <concept id="6957642462239564337" name="de.q60.mps.lang.typescript.structure.TSFunctionTypeParameter" flags="ng" index="2Fu235">
        <property id="7889145667419773171" name="isRest" index="3MDvzs" />
        <child id="5089302120831439094" name="declaredType" index="3cr0mA" />
      </concept>
      <concept id="1940646736673164813" name="de.q60.mps.lang.typescript.structure.TSObjectType" flags="ng" index="3n0$7x">
        <child id="5485283431336319566" name="members" index="2XfbTT" />
      </concept>
      <concept id="1470766081798713625" name="de.q60.mps.lang.typescript.structure.TSPropertySignature" flags="ng" index="1D9KjG">
        <child id="905576507103305314" name="declaredType" index="ahpXF" />
      </concept>
      <concept id="316800515626931645" name="de.q60.mps.lang.typescript.structure.TSFunctionType" flags="ng" index="3MZLnu">
        <child id="2138071087599881886" name="parameters" index="2thRFd" />
        <child id="4744527248198108312" name="returnType" index="19PnrX" />
      </concept>
      <concept id="5872399183276680561" name="de.q60.mps.lang.typescript.structure.TSAmbientDeclaration" flags="ng" index="3NZHq0">
        <child id="671136011488177472" name="declaredType" index="21Uvv_" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3NZHq0" id="5OpYk6gdLqU">
    <property role="TrG5h" value="console" />
    <node concept="3n0$7x" id="5OpYk6gdLqW" role="21Uvv_">
      <node concept="1D9KjG" id="5OpYk6gdLqX" role="2XfbTT">
        <property role="TrG5h" value="log" />
        <node concept="3MZLnu" id="5OpYk6gdLqZ" role="ahpXF">
          <node concept="2Fu235" id="5OpYk6gdLr1" role="2thRFd">
            <property role="3MDvzs" value="true" />
            <property role="TrG5h" value="data" />
            <node concept="29s1Bg" id="5OpYk6gdLr3" role="3cr0mA">
              <node concept="cSnVn" id="5OpYk6gdLr5" role="2XRTOt" />
            </node>
          </node>
          <node concept="qIwln" id="5OpYk6gdLr6" role="19PnrX" />
        </node>
      </node>
    </node>
  </node>
</model>

