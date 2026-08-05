<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8667af77-a9c3-495f-a6ec-38d0b3862ca8(de.q60.mps.lang.typescript.sandbox.stubs.punycode)">
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
      <concept id="6957642462239564337" name="de.q60.mps.lang.typescript.structure.TSFunctionTypeParameter" flags="ng" index="2Fu235">
        <child id="5089302120831439094" name="declaredType" index="3cr0mA" />
      </concept>
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="1940646736673164813" name="de.q60.mps.lang.typescript.structure.TSObjectType" flags="ng" index="3n0$7x">
        <child id="5485283431336319566" name="members" index="2XfbTT" />
      </concept>
      <concept id="3669866448792605535" name="de.q60.mps.lang.typescript.structure.TSTypeAlias" flags="ng" index="1nxqX8">
        <child id="6707524301942339210" name="aliasedType" index="3mxPXq" />
      </concept>
      <concept id="5581245314995758456" name="de.q60.mps.lang.typescript.structure.TSTypeReference" flags="ng" index="1pPzhN">
        <reference id="7581794054781100515" name="declaration" index="2UkD1A" />
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
      <concept id="3600262704481932991" name="de.q60.mps.lang.typescript.structure.TSDeclarationFile" flags="ng" index="3Zjil_">
        <child id="1378682086413470213" name="declarations" index="21Z9C8" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3Zjil_" id="1jfLtDTwa7b">
    <property role="TrG5h" value="punycode" />
    <node concept="3NZHq0" id="1jfLtDSLr27" role="21Z9C8">
      <property role="TrG5h" value="decode" />
      <node concept="3MZLnu" id="1jfLtDSLr29" role="21Uvv_">
        <node concept="2Fu235" id="1jfLtDSLr2b" role="2thRFd">
          <property role="TrG5h" value="string" />
          <node concept="2Kh4GC" id="1jfLtDSLr2d" role="3cr0mA" />
        </node>
        <node concept="2Kh4GC" id="1jfLtDSLr2e" role="19PnrX" />
      </node>
    </node>
    <node concept="3NZHq0" id="1jfLtDSLr3w" role="21Z9C8">
      <property role="TrG5h" value="encode" />
      <node concept="3MZLnu" id="1jfLtDSLr3y" role="21Uvv_">
        <node concept="2Fu235" id="1jfLtDSLr3$" role="2thRFd">
          <property role="TrG5h" value="string" />
          <node concept="2Kh4GC" id="1jfLtDSLr3A" role="3cr0mA" />
        </node>
        <node concept="2Kh4GC" id="1jfLtDSLr3B" role="19PnrX" />
      </node>
    </node>
    <node concept="3NZHq0" id="1jfLtDSLr5L" role="21Z9C8">
      <property role="TrG5h" value="toUnicode" />
      <node concept="3MZLnu" id="1jfLtDSLr5N" role="21Uvv_">
        <node concept="2Fu235" id="1jfLtDSLr5P" role="2thRFd">
          <property role="TrG5h" value="domain" />
          <node concept="2Kh4GC" id="1jfLtDSLr5R" role="3cr0mA" />
        </node>
        <node concept="2Kh4GC" id="1jfLtDSLr5S" role="19PnrX" />
      </node>
    </node>
    <node concept="3NZHq0" id="1jfLtDSLr7k" role="21Z9C8">
      <property role="TrG5h" value="toASCII" />
      <node concept="3MZLnu" id="1jfLtDSLr7m" role="21Uvv_">
        <node concept="2Fu235" id="1jfLtDSLr7o" role="2thRFd">
          <property role="TrG5h" value="domain" />
          <node concept="2Kh4GC" id="1jfLtDSLr7q" role="3cr0mA" />
        </node>
        <node concept="2Kh4GC" id="1jfLtDSLr7r" role="19PnrX" />
      </node>
    </node>
    <node concept="1nxqX8" id="1jfLtDTDeXn" role="21Z9C8">
      <property role="TrG5h" value="ucs2" />
      <node concept="3n0$7x" id="1jfLtDTDeXp" role="3mxPXq">
        <node concept="1D9KjG" id="1jfLtDTDeXq" role="2XfbTT">
          <property role="TrG5h" value="decode" />
          <node concept="3MZLnu" id="1jfLtDTDeXs" role="ahpXF">
            <node concept="2Fu235" id="1jfLtDTDeXu" role="2thRFd">
              <property role="TrG5h" value="string" />
              <node concept="2Kh4GC" id="1jfLtDTDeXw" role="3cr0mA" />
            </node>
            <node concept="29s1Bg" id="1jfLtDTDeXx" role="19PnrX">
              <node concept="1ku6r5" id="1jfLtDTDeXz" role="2XRTOt" />
            </node>
          </node>
        </node>
        <node concept="1D9KjG" id="1jfLtDTDeX$" role="2XfbTT">
          <property role="TrG5h" value="encode" />
          <node concept="3MZLnu" id="1jfLtDTDeXA" role="ahpXF">
            <node concept="2Fu235" id="1jfLtDTDeXC" role="2thRFd">
              <property role="TrG5h" value="codePoints" />
              <node concept="29s1Bg" id="1jfLtDTDeXE" role="3cr0mA">
                <node concept="1ku6r5" id="1jfLtDTDeXG" role="2XRTOt" />
              </node>
            </node>
            <node concept="2Kh4GC" id="1jfLtDTDeXH" role="19PnrX" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3NZHq0" id="1jfLtDTDeXI" role="21Z9C8">
      <property role="TrG5h" value="ucs2" />
      <node concept="1pPzhN" id="1jfLtDTDeXK" role="21Uvv_">
        <ref role="2UkD1A" node="1jfLtDTDeXn" resolve="ucs2" />
      </node>
    </node>
    <node concept="3NZHq0" id="1jfLtDSLr9b" role="21Z9C8">
      <property role="TrG5h" value="version" />
      <node concept="2Kh4GC" id="1jfLtDSLr9d" role="21Uvv_" />
    </node>
  </node>
</model>

