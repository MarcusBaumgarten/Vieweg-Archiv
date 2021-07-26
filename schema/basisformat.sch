<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" targetNamespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xs:import namespace="http://www.w3.org/XML/1998/namespace" schemaLocation="xml.xsd"/>
  <!--
    Schema generated from ODD source 2020-01-11T13:28:36Z. .
    TEI Edition: 3.5.0
    TEI Edition Location: http://www.tei-c.org/Vault/P5//
    
  -->
  <!-- [https://creativecommons.org/licenses/by-sa/3.0/de/deed.en] Distributed under the Creative Commons Attribution-ShareAlike 3.0 Germany (CC BY-SA 3.0 DE) Licence. -->
  <xs:complexType name="tei_macro.paraContent" mixed="true">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:group ref="tei:tei_model.phrase"/>
      <xs:group ref="tei:tei_model.inter"/>
      <xs:element ref="tei:tei_model.global"/>
      <xs:element ref="tei:lg"/>
      <xs:group ref="tei:tei_model.lLike"/>
    </xs:choice>
  </xs:complexType>
  <xs:complexType name="tei_macro.limitedContent" mixed="true">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:group ref="tei:tei_model.limitedPhrase"/>
      <xs:group ref="tei:tei_model.inter"/>
    </xs:choice>
  </xs:complexType>
  <xs:complexType name="tei_macro.phraseSeq" mixed="true">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:group ref="tei:tei_model.qLike"/>
      <xs:group ref="tei:tei_model.phrase"/>
      <xs:element ref="tei:tei_model.global"/>
    </xs:choice>
  </xs:complexType>
  <xs:complexType name="tei_macro.phraseSeq.limited" mixed="true">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:group ref="tei:tei_model.limitedPhrase"/>
      <xs:element ref="tei:tei_model.global"/>
    </xs:choice>
  </xs:complexType>
  <xs:complexType name="tei_macro.specialPara" mixed="true">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:group ref="tei:tei_model.phrase"/>
      <xs:group ref="tei:tei_model.inter"/>
      <xs:group ref="tei:tei_model.divPart"/>
      <xs:element ref="tei:tei_model.global"/>
    </xs:choice>
  </xs:complexType>
  <xs:simpleType name="tei_teidata.count">
    <xs:restriction base="xs:nonNegativeInteger"/>
  </xs:simpleType>
  <xs:simpleType name="tei_teidata.pointer">
    <xs:restriction base="xs:anyURI"/>
  </xs:simpleType>
  <xs:attributeGroup name="tei_att.ascribed.attributes">
    <xs:attributeGroup ref="tei:tei_att.ascribed.attribute.who"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.ascribed.attribute.who">
    <xs:attribute name="who">
      <xs:annotation>
        <xs:documentation>indicates the person, or group of people, to whom the element content is ascribed.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="xs:anyURI"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.ascribed.directed.attributes">
    <xs:attributeGroup ref="tei:tei_att.ascribed.attributes"/>
    <xs:attributeGroup ref="tei:tei_att.ascribed.directed.attribute.toWhom"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.ascribed.directed.attribute.toWhom">
    <xs:attribute name="toWhom">
      <xs:annotation>
        <xs:documentation>indicates the person, or group of people, to whom a speech act or action is directed.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="xs:anyURI"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.canonical.attributes">
    <xs:attributeGroup ref="tei:tei_att.canonical.attribute.ref"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.canonical.attribute.ref">
    <xs:attribute name="ref">
      <xs:annotation>
        <xs:documentation>(reference) provides an explicit means of locating a full definition or identity for the entity being named by means of one or more URIs.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="xs:anyURI"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.datable.w3c.attributes">
    <xs:attributeGroup ref="tei:tei_att.datable.w3c.attribute.when"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.datable.w3c.attribute.when">
    <xs:attribute name="when">
      <xs:annotation>
        <xs:documentation>supplies the value of the date or time in a standard form, e.g. yyyy-mm-dd.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:union memberTypes="xs:date xs:gYear xs:gMonth xs:gDay xs:gYearMonth xs:gMonthDay xs:time xs:dateTime"/>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.datable.attributes">
    <xs:attributeGroup ref="tei:tei_att.datable.w3c.attributes"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.responsibility.attribute.cert">
    <xs:attribute name="cert">
      <xs:annotation>
        <xs:documentation>(certainty) signifies the degree of certainty associated with the intervention or interpretation.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction base="xs:token">
          <xs:enumeration value="high">
            <xs:annotation>
              <xs:documentation/>
            </xs:annotation>
          </xs:enumeration>
          <xs:enumeration value="low">
            <xs:annotation>
              <xs:documentation/>
            </xs:annotation>
          </xs:enumeration>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.responsibility.attribute.resp">
    <xs:attribute name="resp">
      <xs:annotation>
        <xs:documentation>(responsible party) indicates the agency responsible for the intervention or interpretation, for example an editor or transcriber.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="xs:anyURI"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.rendition.attribute.rend">
    <xs:attribute name="rend">
      <xs:annotation>
        <xs:documentation>(rendition) indicates how the element in question was rendered or presented in the source text.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list>
              <xs:simpleType>
                <xs:restriction base="xs:token">
                  <xs:pattern value="(\p{L}|\p{N}|\p{P}|\p{S})+"/>
                </xs:restriction>
              </xs:simpleType>
            </xs:list>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.rendition.attribute.rendition">
    <xs:attribute name="rendition">
      <xs:annotation>
        <xs:documentation>points to a description of the rendering or presentation used for this element in the source text.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list>
              <xs:simpleType>
                <xs:restriction base="xs:token">
                  <xs:enumeration value="#topBraced">
                    <xs:annotation>
                      <xs:documentation>horizontale Klammerung oben</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#bottomBraced">
                    <xs:annotation>
                      <xs:documentation>horizontale Klammerung unten</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#leftBraced">
                    <xs:annotation>
                      <xs:documentation>vertikale Klammerung links</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#rightBraced">
                    <xs:annotation>
                      <xs:documentation>vertikale Klammerung rechts</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#fr">
                    <xs:annotation>
                      <xs:documentation>Frakturwechsel</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#aq">
                    <xs:annotation>
                      <xs:documentation>Antiqua-Schrift in Fraktur-Werken</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#right">
                    <xs:annotation>
                      <xs:documentation>rechtsbündig</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#c">
                    <xs:annotation>
                      <xs:documentation>zentriert</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#et">
                    <xs:annotation>
                      <xs:documentation>eingerückter Text</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#b">
                    <xs:annotation>
                      <xs:documentation>fett</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#g">
                    <xs:annotation>
                      <xs:documentation>gesperrt</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#k">
                    <xs:annotation>
                      <xs:documentation>Kapitälchen</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#i">
                    <xs:annotation>
                      <xs:documentation>kursiv</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#in">
                    <xs:annotation>
                      <xs:documentation>Initiale</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#u">
                    <xs:annotation>
                      <xs:documentation>einfach unterstrichen</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#uu">
                    <xs:annotation>
                      <xs:documentation>doppelt unterstrichen</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#sup">
                    <xs:annotation>
                      <xs:documentation>hochgestellt</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#sub">
                    <xs:annotation>
                      <xs:documentation>tiefgestellt</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#red">
                    <xs:annotation>
                      <xs:documentation>rot</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#blue">
                    <xs:annotation>
                      <xs:documentation>blau</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#s">
                    <xs:annotation>
                      <xs:documentation>durchgestrichen</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#v">
                    <xs:annotation>
                      <xs:documentation>vertikal gedruckt</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#f">
                    <xs:annotation>
                      <xs:documentation>Frakturschrift in Antiqua-Werken</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#none">
                    <xs:annotation>
                      <xs:documentation>ohne Wert; hier ist zusätzlich @rend zu verwenden</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#et2">
                    <xs:annotation>
                      <xs:documentation>(Level 3:) zweifach eingerückter Text</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#et3">
                    <xs:annotation>
                      <xs:documentation>(Level 3:) dreifach eingerückter Text</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#smaller">
                    <xs:annotation>
                      <xs:documentation>(Level 3:) gegenüber dem Grundtext verkleinerte Schrift</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                  <xs:enumeration value="#larger">
                    <xs:annotation>
                      <xs:documentation>(Level 3:) gegenüber dem Grundtext vergrößerte Schrift</xs:documentation>
                    </xs:annotation>
                  </xs:enumeration>
                </xs:restriction>
              </xs:simpleType>
            </xs:list>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.attribute.xmlid">
    <xs:attributeGroup ref="xml:id"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.attribute.n">
    <xs:attribute name="n" type="xs:string">
      <xs:annotation>
        <xs:documentation>(number) gives a number (or other label) for an element, which is not necessarily unique within the document.</xs:documentation>
      </xs:annotation>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.attribute.xmllang">
    <xs:attribute ref="xml:lang"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.naming.attribute.role">
    <xs:attribute name="role">
      <xs:annotation>
        <xs:documentation>may be used to specify further information about the entity referenced by this name in the form of a set of whitespace-separated values, for example the occupation of a person, or the status of a place.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list>
              <xs:simpleType>
                <xs:restriction base="xs:token">
                  <xs:pattern value="(\p{L}|\p{N}|\p{P}|\p{S})+"/>
                </xs:restriction>
              </xs:simpleType>
            </xs:list>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.notated.attributes">
    <xs:attributeGroup ref="tei:tei_att.notated.attribute.notation"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.notated.attribute.notation">
    <xs:attribute name="notation">
      <xs:annotation>
        <xs:documentation>names the notation used for the content of the element.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction base="xs:token">
          <xs:pattern value="(\p{L}|\p{N}|\p{P}|\p{S})+"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.placement.attributes">
    <xs:attributeGroup ref="tei:tei_att.placement.attribute.place"/>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.placement.attribute.place">
    <xs:attribute name="place">
      <xs:annotation>
        <xs:documentation>specifies where this item is placed.
Suggested values include: 1] below; 2] bottom; 3] margin; 4] top; 5] opposite; 6] overleaf; 7] above; 8] end; 9] inline; 10] inspace</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list>
              <xs:simpleType>
                <xs:union>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="below">
                        <xs:annotation>
                          <xs:documentation>below the line</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="bottom">
                        <xs:annotation>
                          <xs:documentation>at the foot of the page</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="margin">
                        <xs:annotation>
                          <xs:documentation>in the margin (left, right, or both)</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="top">
                        <xs:annotation>
                          <xs:documentation>at the top of the page</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="opposite">
                        <xs:annotation>
                          <xs:documentation>on the opposite, i.e. facing, page</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="overleaf">
                        <xs:annotation>
                          <xs:documentation>on the other side of the leaf</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="above">
                        <xs:annotation>
                          <xs:documentation>above the line</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="end">
                        <xs:annotation>
                          <xs:documentation>at the end of e.g. chapter or volume.</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="inline">
                        <xs:annotation>
                          <xs:documentation>within the body of the text.</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:enumeration value="inspace">
                        <xs:annotation>
                          <xs:documentation>in a predefined space, for example left by an earlier scribe.</xs:documentation>
                        </xs:annotation>
                      </xs:enumeration>
                    </xs:restriction>
                  </xs:simpleType>
                  <xs:simpleType>
                    <xs:restriction base="xs:token">
                      <xs:pattern value="(\p{L}|\p{N}|\p{P}|\p{S})+"/>
                    </xs:restriction>
                  </xs:simpleType>
                </xs:union>
              </xs:simpleType>
            </xs:list>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:group name="tei_model.nameLike.agent">
    <xs:choice>
      <xs:element ref="tei:name"/>
      <xs:element ref="tei:orgName"/>
      <xs:element ref="tei:persName"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.nameLike.agent_alternation">
    <xs:choice>
      <xs:element ref="tei:name"/>
      <xs:element ref="tei:orgName"/>
      <xs:element ref="tei:persName"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.nameLike.agent_sequence">
    <xs:sequence>
      <xs:element ref="tei:name"/>
      <xs:element ref="tei:orgName"/>
      <xs:element ref="tei:persName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike.agent_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:name"/>
      <xs:element minOccurs="0" ref="tei:orgName"/>
      <xs:element minOccurs="0" ref="tei:persName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike.agent_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:name"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:orgName"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:persName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike.agent_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:name"/>
      <xs:element maxOccurs="unbounded" ref="tei:orgName"/>
      <xs:element maxOccurs="unbounded" ref="tei:persName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike">
    <xs:sequence>
      <xs:element ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.hiLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:hi"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.emphLike">
    <xs:choice>
      <xs:element ref="tei:foreign"/>
      <xs:element ref="tei:title"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.emphLike_alternation">
    <xs:choice>
      <xs:element ref="tei:foreign"/>
      <xs:element ref="tei:title"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.emphLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:foreign"/>
      <xs:element ref="tei:title"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.emphLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:foreign"/>
      <xs:element minOccurs="0" ref="tei:title"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.emphLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:foreign"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:title"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.emphLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:foreign"/>
      <xs:element maxOccurs="unbounded" ref="tei:title"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.highlighted">
    <xs:choice>
      <xs:group ref="tei:tei_model.hiLike"/>
      <xs:group ref="tei:tei_model.emphLike"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.dateLike">
    <xs:sequence>
      <xs:element ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.dateLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.dateLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.dateLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.dateLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.dateLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:date"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike">
    <xs:sequence>
      <xs:element ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.measureLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:measure"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="tei_model.graphicLike" abstract="true">
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element ref="tei:tei_model.graphicLike"/>
        <xs:group ref="tei:tei_model.hiLike"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.global.facs.attribute.facs"/>
      <xs:attribute name="notation">
        <xs:annotation>
          <xs:documentation>names the notation used for the content of the element.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="TeX">
              <xs:annotation>
                <xs:documentation>TeX-Notation</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="MathML">
              <xs:annotation>
                <xs:documentation>MathML-Notation</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:group name="tei_model.pPart.editorial">
    <xs:choice>
      <xs:element ref="tei:choice"/>
      <xs:element ref="tei:abbr"/>
      <xs:element ref="tei:expan"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.pPart.editorial_alternation">
    <xs:choice>
      <xs:element ref="tei:choice"/>
      <xs:element ref="tei:abbr"/>
      <xs:element ref="tei:expan"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.pPart.editorial_sequence">
    <xs:sequence>
      <xs:element ref="tei:choice"/>
      <xs:element ref="tei:abbr"/>
      <xs:element ref="tei:expan"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.editorial_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:choice"/>
      <xs:element minOccurs="0" ref="tei:abbr"/>
      <xs:element minOccurs="0" ref="tei:expan"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.editorial_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:choice"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:abbr"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:expan"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.editorial_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:choice"/>
      <xs:element maxOccurs="unbounded" ref="tei:abbr"/>
      <xs:element maxOccurs="unbounded" ref="tei:expan"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional">
    <xs:choice>
      <xs:element ref="tei:sic"/>
      <xs:element ref="tei:corr"/>
      <xs:element ref="tei:reg"/>
      <xs:element ref="tei:orig"/>
      <xs:element ref="tei:supplied"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional_alternation">
    <xs:choice>
      <xs:element ref="tei:sic"/>
      <xs:element ref="tei:corr"/>
      <xs:element ref="tei:reg"/>
      <xs:element ref="tei:orig"/>
      <xs:element ref="tei:supplied"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional_sequence">
    <xs:sequence>
      <xs:element ref="tei:sic"/>
      <xs:element ref="tei:corr"/>
      <xs:element ref="tei:reg"/>
      <xs:element ref="tei:orig"/>
      <xs:element ref="tei:supplied"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:sic"/>
      <xs:element minOccurs="0" ref="tei:corr"/>
      <xs:element minOccurs="0" ref="tei:reg"/>
      <xs:element minOccurs="0" ref="tei:orig"/>
      <xs:element minOccurs="0" ref="tei:supplied"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:sic"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:corr"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:reg"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:orig"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:supplied"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.transcriptional_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:sic"/>
      <xs:element maxOccurs="unbounded" ref="tei:corr"/>
      <xs:element maxOccurs="unbounded" ref="tei:reg"/>
      <xs:element maxOccurs="unbounded" ref="tei:orig"/>
      <xs:element maxOccurs="unbounded" ref="tei:supplied"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pPart.edit">
    <xs:choice>
      <xs:group ref="tei:tei_model.pPart.editorial"/>
      <xs:group ref="tei:tei_model.pPart.transcriptional"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.ptrLike" abstract="true">
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="target">
            <xs:annotation>
              <xs:documentation>specifies the destination of the reference by supplying one or more URI References</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list itemType="tei:tei_teidata.pointer"/>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="type">
            <xs:annotation>
              <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="editorialNote">
                  <xs:annotation>
                    <xs:documentation>Referenz auf einen editorischen Kommentar außerhalb des Textes</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="tei_model.milestoneLike" abstract="true" substitutionGroup="tei:tei_model.global"/>
  <xs:group name="tei_model.biblLike">
    <xs:choice>
      <xs:element ref="tei:bibl"/>
      <xs:element ref="tei:listBibl"/>
      <xs:element ref="tei:biblFull"/>
      <xs:element ref="tei:msDesc"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.biblLike_alternation">
    <xs:choice>
      <xs:element ref="tei:bibl"/>
      <xs:element ref="tei:listBibl"/>
      <xs:element ref="tei:biblFull"/>
      <xs:element ref="tei:msDesc"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.biblLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:bibl"/>
      <xs:element ref="tei:listBibl"/>
      <xs:element ref="tei:biblFull"/>
      <xs:element ref="tei:msDesc"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.biblLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:bibl"/>
      <xs:element minOccurs="0" ref="tei:listBibl"/>
      <xs:element minOccurs="0" ref="tei:biblFull"/>
      <xs:element minOccurs="0" ref="tei:msDesc"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.biblLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:bibl"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:listBibl"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:biblFull"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:msDesc"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.biblLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:bibl"/>
      <xs:element maxOccurs="unbounded" ref="tei:listBibl"/>
      <xs:element maxOccurs="unbounded" ref="tei:biblFull"/>
      <xs:element maxOccurs="unbounded" ref="tei:msDesc"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike">
    <xs:sequence>
      <xs:element ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.headLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:head"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.listLike">
    <xs:choice>
      <xs:element ref="tei:list"/>
      <xs:element ref="tei:table"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.listLike_alternation">
    <xs:choice>
      <xs:element ref="tei:list"/>
      <xs:element ref="tei:table"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.listLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:list"/>
      <xs:element ref="tei:table"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.listLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:list"/>
      <xs:element minOccurs="0" ref="tei:table"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.listLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:list"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:table"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.listLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:list"/>
      <xs:element maxOccurs="unbounded" ref="tei:table"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="tei_model.noteLike" abstract="true" substitutionGroup="tei:tei_model.global">
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.n"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.sameAs"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.global.responsibility.attribute.resp"/>
          <xs:attribute name="place">
            <xs:annotation>
              <xs:documentation>describes, where the note occurs on the page (left/right - margins; foot - footnotes; end - endnotes)</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="left">
                          <xs:annotation>
                            <xs:documentation>Marginalie links</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="right">
                          <xs:annotation>
                            <xs:documentation>Marginalie rechts</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="foot">
                          <xs:annotation>
                            <xs:documentation>Fußnote</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="end">
                          <xs:annotation>
                            <xs:documentation>Endnote</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="type">
            <xs:annotation>
              <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="editorial">
                  <xs:annotation>
                    <xs:documentation>editorischer Kommentar</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="remarkResponsibility">
                  <xs:annotation>
                    <xs:documentation>nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="remarkRevisionDTA">
                  <xs:annotation>
                    <xs:documentation>nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="remarkSource">
                  <xs:annotation>
                    <xs:documentation>nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="remarkDocument">
                  <xs:annotation>
                    <xs:documentation>nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:group name="tei_model.lLike">
    <xs:sequence>
      <xs:element ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.lLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.lLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.lLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.lLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.lLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:l"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike">
    <xs:sequence>
      <xs:element ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.pLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:p"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike">
    <xs:sequence>
      <xs:element ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike_alternation">
    <xs:sequence>
      <xs:element ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.stageLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:stage"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="tei_model.global.edit" abstract="true" substitutionGroup="tei:tei_model.global"/>
  <xs:group name="tei_model.divPart">
    <xs:choice>
      <xs:group ref="tei:tei_model.lLike"/>
      <xs:group ref="tei:tei_model.pLike"/>
      <xs:element ref="tei:lg"/>
      <xs:element ref="tei:sp"/>
      <xs:element ref="tei:spGrp"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.placeNamePart">
    <xs:choice>
      <xs:element ref="tei:placeName"/>
      <xs:element ref="tei:country"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.placeNamePart_alternation">
    <xs:choice>
      <xs:element ref="tei:placeName"/>
      <xs:element ref="tei:country"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.placeNamePart_sequence">
    <xs:sequence>
      <xs:element ref="tei:placeName"/>
      <xs:element ref="tei:country"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeNamePart_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:placeName"/>
      <xs:element minOccurs="0" ref="tei:country"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeNamePart_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:placeName"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:country"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeNamePart_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:placeName"/>
      <xs:element maxOccurs="unbounded" ref="tei:country"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike">
    <xs:sequence>
      <xs:group ref="tei:tei_model.placeNamePart"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike_alternation">
    <xs:sequence>
      <xs:group ref="tei:tei_model.placeNamePart_alternation"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike_sequence">
    <xs:sequence>
      <xs:group ref="tei:tei_model.placeNamePart_sequence"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike_sequenceOptional">
    <xs:sequence>
      <xs:group minOccurs="0" ref="tei:tei_model.placeNamePart_sequenceOptional"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.placeNamePart_sequenceOptionalRepeatable"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.placeStateLike_sequenceRepeatable">
    <xs:sequence>
      <xs:group maxOccurs="unbounded" ref="tei:tei_model.placeNamePart_sequenceRepeatable"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.publicationStmtPart.agency">
    <xs:sequence>
      <xs:element ref="tei:publisher"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.publicationStmtPart.detail">
    <xs:choice>
      <xs:element ref="tei:tei_model.ptrLike"/>
      <xs:element ref="tei:address"/>
      <xs:element ref="tei:date"/>
      <xs:element ref="tei:pubPlace"/>
      <xs:element ref="tei:idno"/>
      <xs:element ref="tei:availability"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.availabilityPart" abstract="true">
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attribute name="target" use="required">
            <xs:annotation>
              <xs:documentation>specifies the destination of the reference by supplying one or more URI References</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list itemType="xs:anyURI"/>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:group name="tei_model.quoteLike">
    <xs:choice>
      <xs:element ref="tei:quote"/>
      <xs:element ref="tei:cit"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.quoteLike_alternation">
    <xs:choice>
      <xs:element ref="tei:quote"/>
      <xs:element ref="tei:cit"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.quoteLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:quote"/>
      <xs:element ref="tei:cit"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.quoteLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:quote"/>
      <xs:element minOccurs="0" ref="tei:cit"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.quoteLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:quote"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:cit"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.quoteLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:quote"/>
      <xs:element maxOccurs="unbounded" ref="tei:cit"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.qLike">
    <xs:choice>
      <xs:group ref="tei:tei_model.quoteLike"/>
      <xs:element ref="tei:q"/>
      <xs:element ref="tei:floatingText"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.qLike_alternation">
    <xs:choice>
      <xs:group ref="tei:tei_model.quoteLike_alternation"/>
      <xs:element ref="tei:q"/>
      <xs:element ref="tei:floatingText"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.qLike_sequence">
    <xs:sequence>
      <xs:group ref="tei:tei_model.quoteLike_sequence"/>
      <xs:element ref="tei:q"/>
      <xs:element ref="tei:floatingText"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.qLike_sequenceOptional">
    <xs:sequence>
      <xs:group minOccurs="0" ref="tei:tei_model.quoteLike_sequenceOptional"/>
      <xs:element minOccurs="0" ref="tei:q"/>
      <xs:element minOccurs="0" ref="tei:floatingText"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.qLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.quoteLike_sequenceOptionalRepeatable"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:q"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:floatingText"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.qLike_sequenceRepeatable">
    <xs:sequence>
      <xs:group maxOccurs="unbounded" ref="tei:tei_model.quoteLike_sequenceRepeatable"/>
      <xs:element maxOccurs="unbounded" ref="tei:q"/>
      <xs:element maxOccurs="unbounded" ref="tei:floatingText"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="tei_model.respLike" abstract="true"/>
  <xs:group name="tei_model.divWrapper">
    <xs:choice>
      <xs:element ref="tei:byline"/>
      <xs:element ref="tei:dateline"/>
      <xs:element ref="tei:argument"/>
      <xs:element ref="tei:epigraph"/>
      <xs:element ref="tei:salute"/>
      <xs:element ref="tei:docAuthor"/>
      <xs:element ref="tei:docDate"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.divTopPart">
    <xs:choice>
      <xs:group ref="tei:tei_model.headLike"/>
      <xs:element ref="tei:opener"/>
      <xs:element ref="tei:signed"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.divTop">
    <xs:choice>
      <xs:group ref="tei:tei_model.divWrapper"/>
      <xs:group ref="tei:tei_model.divTopPart"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.frontPart.drama" abstract="true">
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divTop"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.common"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:sequence maxOccurs="unbounded">
          <xs:choice>
            <xs:element ref="tei:castItem"/>
            <xs:element ref="tei:castGroup"/>
          </xs:choice>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.common"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:group name="tei_model.pLike.front">
    <xs:choice>
      <xs:element ref="tei:head"/>
      <xs:element ref="tei:byline"/>
      <xs:element ref="tei:argument"/>
      <xs:element ref="tei:epigraph"/>
      <xs:element ref="tei:docTitle"/>
      <xs:element ref="tei:titlePart"/>
      <xs:element ref="tei:docAuthor"/>
      <xs:element ref="tei:docEdition"/>
      <xs:element ref="tei:docImprint"/>
      <xs:element ref="tei:docDate"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.divBottomPart" abstract="true"/>
  <xs:group name="tei_model.divBottom">
    <xs:choice>
      <xs:group ref="tei:tei_model.divWrapper"/>
      <xs:element ref="tei:tei_model.divBottomPart"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.titlepagePart">
    <xs:choice>
      <xs:element ref="tei:byline"/>
      <xs:element ref="tei:argument"/>
      <xs:element ref="tei:epigraph"/>
      <xs:element ref="tei:docTitle"/>
      <xs:element ref="tei:titlePart"/>
      <xs:element ref="tei:docAuthor"/>
      <xs:element ref="tei:imprimatur"/>
      <xs:element ref="tei:docEdition"/>
      <xs:element ref="tei:docImprint"/>
      <xs:element ref="tei:docDate"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.choicePart">
    <xs:choice>
      <xs:element ref="tei:sic"/>
      <xs:element ref="tei:corr"/>
      <xs:element ref="tei:reg"/>
      <xs:element ref="tei:orig"/>
      <xs:element ref="tei:abbr"/>
      <xs:element ref="tei:expan"/>
      <xs:element ref="tei:supplied"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.imprintPart">
    <xs:choice>
      <xs:element ref="tei:publisher"/>
      <xs:element ref="tei:biblScope"/>
      <xs:element ref="tei:pubPlace"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.castItemPart" abstract="true"/>
  <xs:group name="tei_model.addressLike">
    <xs:choice>
      <xs:element ref="tei:email"/>
      <xs:element ref="tei:address"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.addressLike_alternation">
    <xs:choice>
      <xs:element ref="tei:email"/>
      <xs:element ref="tei:address"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.addressLike_sequence">
    <xs:sequence>
      <xs:element ref="tei:email"/>
      <xs:element ref="tei:address"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.addressLike_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:email"/>
      <xs:element minOccurs="0" ref="tei:address"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.addressLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:email"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:address"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.addressLike_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:email"/>
      <xs:element maxOccurs="unbounded" ref="tei:address"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike">
    <xs:choice>
      <xs:group ref="tei:tei_model.nameLike.agent"/>
      <xs:group ref="tei:tei_model.placeStateLike"/>
      <xs:element ref="tei:idno"/>
      <xs:group ref="tei:tei_model.persNamePart"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.nameLike_alternation">
    <xs:choice>
      <xs:group ref="tei:tei_model.nameLike.agent_alternation"/>
      <xs:group ref="tei:tei_model.placeStateLike_alternation"/>
      <xs:element ref="tei:idno"/>
      <xs:group ref="tei:tei_model.persNamePart_alternation"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.nameLike_sequence">
    <xs:sequence>
      <xs:group ref="tei:tei_model.nameLike.agent_sequence"/>
      <xs:group ref="tei:tei_model.placeStateLike_sequence"/>
      <xs:element ref="tei:idno"/>
      <xs:group ref="tei:tei_model.persNamePart_sequence"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike_sequenceOptional">
    <xs:sequence>
      <xs:group minOccurs="0" ref="tei:tei_model.nameLike.agent_sequenceOptional"/>
      <xs:group minOccurs="0" ref="tei:tei_model.placeStateLike_sequenceOptional"/>
      <xs:element minOccurs="0" ref="tei:idno"/>
      <xs:group minOccurs="0" ref="tei:tei_model.persNamePart_sequenceOptional"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.nameLike_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.nameLike.agent_sequenceOptionalRepeatable"/>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.placeStateLike_sequenceOptionalRepeatable"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:idno"/>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.persNamePart_sequenceOptionalRepeatable"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="tei_model.global" abstract="true"/>
  <xs:group name="tei_model.biblPart">
    <xs:choice>
      <xs:element ref="tei:tei_model.respLike"/>
      <xs:group ref="tei:tei_model.imprintPart"/>
      <xs:element ref="tei:bibl"/>
      <xs:element ref="tei:edition"/>
      <xs:element ref="tei:extent"/>
      <xs:element ref="tei:availability"/>
      <xs:element ref="tei:msIdentifier"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.frontPart">
    <xs:choice>
      <xs:element ref="tei:tei_model.frontPart.drama"/>
      <xs:element ref="tei:listBibl"/>
      <xs:element ref="tei:titlePage"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.addrPart">
    <xs:choice>
      <xs:group ref="tei:tei_model.nameLike"/>
      <xs:element ref="tei:addrLine"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.pPart.data">
    <xs:choice>
      <xs:group ref="tei:tei_model.dateLike"/>
      <xs:group ref="tei:tei_model.measureLike"/>
      <xs:group ref="tei:tei_model.addressLike"/>
      <xs:group ref="tei:tei_model.nameLike"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.inter">
    <xs:choice>
      <xs:group ref="tei:tei_model.biblLike"/>
      <xs:group ref="tei:tei_model.listLike"/>
      <xs:group ref="tei:tei_model.stageLike"/>
      <xs:group ref="tei:tei_model.qLike"/>
      <xs:element ref="tei:castList"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.common">
    <xs:choice>
      <xs:group ref="tei:tei_model.divPart"/>
      <xs:group ref="tei:tei_model.inter"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.phrase">
    <xs:choice>
      <xs:group ref="tei:tei_model.highlighted"/>
      <xs:element ref="tei:tei_model.graphicLike"/>
      <xs:group ref="tei:tei_model.pPart.edit"/>
      <xs:element ref="tei:tei_model.ptrLike"/>
      <xs:group ref="tei:tei_model.pPart.data"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.limitedPhrase">
    <xs:choice>
      <xs:group ref="tei:tei_model.hiLike"/>
      <xs:group ref="tei:tei_model.emphLike"/>
      <xs:group ref="tei:tei_model.pPart.editorial"/>
      <xs:element ref="tei:tei_model.ptrLike"/>
      <xs:group ref="tei:tei_model.pPart.data"/>
    </xs:choice>
  </xs:group>
  <xs:element name="tei_model.divLike" abstract="true">
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divTop"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:sequence minOccurs="0">
          <xs:choice>
            <xs:sequence maxOccurs="unbounded">
              <xs:element ref="tei:tei_model.divLike"/>
              <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
            </xs:sequence>
            <xs:sequence>
              <xs:sequence maxOccurs="unbounded">
                <xs:group ref="tei:tei_model.common"/>
                <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
              </xs:sequence>
              <xs:sequence minOccurs="0" maxOccurs="unbounded">
                <xs:element ref="tei:tei_model.divLike"/>
                <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
              </xs:sequence>
            </xs:sequence>
          </xs:choice>
          <xs:sequence minOccurs="0" maxOccurs="unbounded">
            <xs:group ref="tei:tei_model.divBottom"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="n">
        <xs:annotation>
          <xs:documentation>(number) gives a number (or other label) for an element, which is not necessarily unique within the document.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list itemType="tei:tei_teidata.count"/>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="abbreviations">
              <xs:annotation>
                <xs:documentation>Abkürzungsverzeichnis</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="act">
              <xs:annotation>
                <xs:documentation>Akt im Drama</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="advertisement">
              <xs:annotation>
                <xs:documentation>Anzeige</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="appendix">
              <xs:annotation>
                <xs:documentation>Anhang</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="bibliography">
              <xs:annotation>
                <xs:documentation>Bibliographie</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="contents">
              <xs:annotation>
                <xs:documentation>Inhaltsverzeichnis</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="copyright">
              <xs:annotation>
                <xs:documentation>Hinweis zum Urheberrecht</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="corrigenda">
              <xs:annotation>
                <xs:documentation>Druckfehlerverzeichnis</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="dedication">
              <xs:annotation>
                <xs:documentation>Widmung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="figures">
              <xs:annotation>
                <xs:documentation>Verzeichnis der Abbildungen</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="frontispiece">
              <xs:annotation>
                <xs:documentation>Frontispiz</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="imprint">
              <xs:annotation>
                <xs:documentation>Hinweise zum Druck</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="imprimatur">
              <xs:annotation>
                <xs:documentation>Druckerlaubnis</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="index">
              <xs:annotation>
                <xs:documentation>Verzeichnis</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="poem">
              <xs:annotation>
                <xs:documentation>Gedicht</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="scene">
              <xs:annotation>
                <xs:documentation>Szene im Drama</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="chapter">
              <xs:annotation>
                <xs:documentation>(Level 3:) Kapitel</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="diaryEntry">
              <xs:annotation>
                <xs:documentation>(Level 3:) Tagebucheintrag</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="edition">
              <xs:annotation>
                <xs:documentation>(Level 3:) Abdruck einer Textquelle</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="lexiconEntry">
              <xs:annotation>
                <xs:documentation>(Level 3:) Lexikoneintrag/Wörterbucheintrag</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="letter">
              <xs:annotation>
                <xs:documentation>(Level 3:) Brief</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="recipe">
              <xs:annotation>
                <xs:documentation>(Level 3:) Rezept</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="postface">
              <xs:annotation>
                <xs:documentation>(Level 3:) Nachwort</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="preface">
              <xs:annotation>
                <xs:documentation>(Level 3:) Vorwort</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="session">
              <xs:annotation>
                <xs:documentation>(Level 3:) Vorlesungsstunde/Lehreinheit/Vortrag</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsAcademicOration">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Akademische Trauerrede/~schrift</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsBibleVerse">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Leichtext</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsBurial">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Beisetzungspredigt/~rede</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsCalligram">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Figurengedicht</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsCondolence">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Kondolenzschreiben</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsConsolationLetter">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Trostbrief</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsCurriculumVitae">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Lebenslauf</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsEpicedia">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Epicedien (übergeordnet)</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsEpitaph">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Epitaph</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsExordium">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Exordium</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsHymn">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Lied</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsMainPart">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Hauptteil der Predigt</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsOration">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Leichabdankung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsOtherPublication">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Sonstige Trauerschrift</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsPersonalia">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Personalia (übergeordnet)</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsPrayer">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Gebet</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsProcession">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Prozessions- oder sonstige Trauerordnung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsProgrammaAcademicum">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Programma Academicum</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsRemembrance">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Gedächtnispredigt</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsSermon">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Predigtteil</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsThanks">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Abdankung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsTranslocation">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Überführungspredigt/~rede</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="fsVotum">
              <xs:annotation>
                <xs:documentation>(Leichenpredigt:) Anrufung/Votum als Einleitung zur eigentlichen Predigt</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jAn">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Anzeige</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jAnnouncements">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Anzeigenteil</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jArticle">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Artikel/Nachricht</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jEditorialStaff">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Zusammenstellung der Redaktion</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jExpedition">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Hinweise zum Versand</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jFeuilleton">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Feuilleton</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jFinancialNews">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Finanznachrichten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jPoliticalNews">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Politische Nachrichten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jReadersLetters">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Leserbriefe</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jSupplement">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Beilage</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jWeatherReports">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Wetternachrichten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jVarious">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Vermischtes</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jLocal">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Lokalnachrichten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="jCulturalNews">
              <xs:annotation>
                <xs:documentation>(Zeitung/Zeitschrift:) Kulturnachrichten (Theater etc.)</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="tei_model.teiHeaderPart" abstract="true"/>
  <xs:element name="tei_model.encodingDescPart" abstract="true"/>
  <xs:element name="tei_model.profileDescPart" abstract="true"/>
  <xs:element name="tei_model.resourceLike" abstract="true">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:front"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:element ref="tei:body"/>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:back"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:attributeGroup name="tei_att.personal.attribute.full">
    <xs:attribute name="full">
      <xs:annotation>
        <xs:documentation/>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction base="xs:token">
          <xs:enumeration value="abb">
            <xs:annotation>
              <xs:documentation>unvollständiger Teil eines Namens</xs:documentation>
            </xs:annotation>
          </xs:enumeration>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:element name="p">
    <xs:annotation>
      <xs:documentation>(paragraph) marks paragraphs in prose. [3.1. Paragraphs 7.2.5. Speech Contents]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="foreign">
    <xs:annotation>
      <xs:documentation>identifies a word or phrase as belonging to some language other than that of the surrounding text. [3.3.2.1. Foreign Words or Expressions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute ref="xml:lang" use="required"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="hi">
    <xs:annotation>
      <xs:documentation>(highlighted) marks a word or phrase as graphically distinct from the surrounding text, for reasons concerning which no claim is made. [3.3.2.2. Emphatic Words and Phrases 3.3.2. Emphasis, Foreign Words, and Unusual Language]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attribute name="rendition" use="required">
            <xs:annotation>
              <xs:documentation>points to a description of the rendering or presentation used for this element in the source text.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="#topBraced">
                          <xs:annotation>
                            <xs:documentation>horizontale Klammerung oben</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#bottomBraced">
                          <xs:annotation>
                            <xs:documentation>horizontale Klammerung unten</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#leftBraced">
                          <xs:annotation>
                            <xs:documentation>vertikale Klammerung links</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#rightBraced">
                          <xs:annotation>
                            <xs:documentation>vertikale Klammerung rechts</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#fr">
                          <xs:annotation>
                            <xs:documentation>Frakturwechsel</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#aq">
                          <xs:annotation>
                            <xs:documentation>Antiqua-Schrift in Fraktur-Werken</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#right">
                          <xs:annotation>
                            <xs:documentation>rechtsbündig</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#c">
                          <xs:annotation>
                            <xs:documentation>zentriert</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#et">
                          <xs:annotation>
                            <xs:documentation>eingerückter Text</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#b">
                          <xs:annotation>
                            <xs:documentation>fett</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#g">
                          <xs:annotation>
                            <xs:documentation>gesperrt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#k">
                          <xs:annotation>
                            <xs:documentation>Kapitälchen</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#i">
                          <xs:annotation>
                            <xs:documentation>kursiv</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#in">
                          <xs:annotation>
                            <xs:documentation>Initiale</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#u">
                          <xs:annotation>
                            <xs:documentation>einfach unterstrichen</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#uu">
                          <xs:annotation>
                            <xs:documentation>doppelt unterstrichen</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#sup">
                          <xs:annotation>
                            <xs:documentation>hochgestellt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#sub">
                          <xs:annotation>
                            <xs:documentation>tiefgestellt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#red">
                          <xs:annotation>
                            <xs:documentation>rot</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#blue">
                          <xs:annotation>
                            <xs:documentation>blau</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#s">
                          <xs:annotation>
                            <xs:documentation>durchgestrichen</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#v">
                          <xs:annotation>
                            <xs:documentation>vertikal gedruckt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#f">
                          <xs:annotation>
                            <xs:documentation>Frakturschrift in Antiqua-Werken</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#none">
                          <xs:annotation>
                            <xs:documentation>ohne Wert; hier ist zusätzlich @rend zu verwenden</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#et2">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) zweifach eingerückter Text</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#et3">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) dreifach eingerückter Text</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#smaller">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) gegenüber dem Grundtext verkleinerte Schrift</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="#larger">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) gegenüber dem Grundtext vergrößerte Schrift</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="quote">
    <xs:annotation>
      <xs:documentation>(quotation) contains a phrase or passage attributed by the narrator or author to some agency external to the text. [3.3.3. Quotation 4.3.1. Grouped Texts]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.notated.attributes"/>
          <xs:attribute name="type">
            <xs:annotation>
              <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="translation">
                  <xs:annotation>
                    <xs:documentation>Übersetzung</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="q">
    <xs:annotation>
      <xs:documentation>(quoted) contains material which is distinguished from the surrounding text using quotation marks or a similar method, for any one of a variety of reasons including, but not limited to: direct speech or thought, technical terms or jargon, authorial distance, quotations from elsewhere, and passages that are mentioned but not used. [3.3.3. Quotation]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.ascribed.directed.attribute.toWhom"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="cit">
    <xs:annotation>
      <xs:documentation>(cited quotation) contains a quotation from some other document, together with a bibliographic reference to its source. In a dictionary it may contain an example text with at least one occurrence of the word form, used in the sense being described, or a translation of the headword, or an example. [3.3.3. Quotation 4.3.1. Grouped Texts 9.3.5.1. Examples]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.qLike"/>
        <xs:group ref="tei:tei_model.biblLike"/>
        <xs:element ref="tei:tei_model.ptrLike"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="sic">
    <xs:annotation>
      <xs:documentation>(Latin for thus or so) contains text reproduced although apparently incorrect or inaccurate. [3.4.1. Apparent Errors]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="corr">
    <xs:annotation>
      <xs:documentation>(correction) contains the correct form of a passage apparently erroneous in the copy text. [3.4.1. Apparent Errors]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="type">
            <xs:annotation>
              <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="addenda">
                  <xs:annotation>
                    <xs:documentation>Korrektur aus dem Verzeichnis der Addenda übernommen</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="corrigenda">
                  <xs:annotation>
                    <xs:documentation>Korrektur aus dem Verzeichnis der Corrigenda übernommen</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="editorial">
                  <xs:annotation>
                    <xs:documentation>Korrektur durch den Editor</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="choice">
    <xs:annotation>
      <xs:documentation>groups a number of alternative encodings for the same point in a text. [3.4. Simple Editorial Changes]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.choicePart"/>
        <xs:element ref="tei:choice"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="reg">
    <xs:annotation>
      <xs:documentation>(regularization) contains a reading which has been regularized or normalized in some sense. [3.4.2. Regularization and
Normalization 12. Critical Apparatus]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="orig">
    <xs:annotation>
      <xs:documentation>(original form) contains a reading which is marked as following the original, rather than being normalized or corrected. [3.4.2. Regularization and
Normalization 12. Critical Apparatus]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="gap" substitutionGroup="tei:tei_model.global.edit">
    <xs:annotation>
      <xs:documentation>nicht-transkribierter Text [3.4.3. Additions, Deletions, and Omissions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="unit">
        <xs:annotation>
          <xs:documentation>names the unit used for the measurement</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="chars">
              <xs:annotation>
                <xs:documentation>Zeichen</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="lines">
              <xs:annotation>
                <xs:documentation>Zeilen</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="pages">
              <xs:annotation>
                <xs:documentation>Seiten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="words">
              <xs:annotation>
                <xs:documentation>Wörter</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="quantity">
        <xs:annotation>
          <xs:documentation>specifies the length in the units specified</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list itemType="tei:tei_teidata.count"/>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="reason">
        <xs:annotation>
          <xs:documentation>gives the reason for omission</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list>
                <xs:simpleType>
                  <xs:restriction base="xs:token">
                    <xs:enumeration value="insignificant">
                      <xs:annotation>
                        <xs:documentation>irrelevantes Material</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="illegible">
                      <xs:annotation>
                        <xs:documentation>unleserliches Material</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="fm">
                      <xs:annotation>
                        <xs:documentation>fremdsprachliches Material</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="lost">
                      <xs:annotation>
                        <xs:documentation>Textverlust</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                  </xs:restriction>
                </xs:simpleType>
              </xs:list>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="name">
    <xs:annotation>
      <xs:documentation>(name, proper noun) contains a proper noun or noun phrase. [3.5.1. Referring Strings]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.personal.attribute.full"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attribute.ref"/>
          <xs:attribute name="type">
            <xs:annotation>
              <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="artificialWork">
                  <xs:annotation>
                    <xs:documentation>von Menschenhand geschaffenes Werk</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="email" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>(electronic mail address) contains an email address identifying a location to which email messages can be delivered. [3.5.2. Addresses]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="address">
    <xs:annotation>
      <xs:documentation>contains a postal address, for example of a publisher, an organization, or an individual. [3.5.2. Addresses 2.2.4. Publication, Distribution, Licensing, etc. 3.11.2.4. Imprint, Size of a Document, and Reprint Information]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.addrPart"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="addrLine" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>(address line) contains one line of a postal address. [3.5.2. Addresses 2.2.4. Publication, Distribution, Licensing, etc. 3.11.2.4. Imprint, Size of a Document, and Reprint Information]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="measure">
    <xs:annotation>
      <xs:documentation>contains a word or phrase referring to some quantity of an object or commodity, usually comprising a number, a unit, and a commodity name. [3.5.3. Numbers and
Measures]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attribute name="type" use="required">
            <xs:annotation>
              <xs:documentation>specifies the type of measurement in any convenient typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="images">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="tokens">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="types">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="characters">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="pages">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="date">
    <xs:annotation>
      <xs:documentation>contains a date in any format. [3.5.4. Dates and Times 2.2.4. Publication, Distribution, Licensing, etc. 2.6. The Revision Description 3.11.2.4. Imprint, Size of a Document, and Reprint Information 15.2.3. The Setting Description 13.3.7. Dates and Times]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.canonical.attributes"/>
      <xs:attributeGroup ref="tei:tei_att.datable.attributes"/>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="firstPublication">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="publication">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="importDTA">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="creation">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="abbr">
    <xs:annotation>
      <xs:documentation>(abbreviation) contains an abbreviation of any sort. [3.5.5. Abbreviations and Their Expansions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="expan">
    <xs:annotation>
      <xs:documentation>(expansion) contains the expansion of an abbreviation. [3.5.5. Abbreviations and Their Expansions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="ref" substitutionGroup="tei:tei_model.ptrLike">
    <xs:annotation>
      <xs:documentation>(reference) defines a reference to another location, possibly modified by additional text or comment. [3.6. Simple Links and Cross-References 16.1. Links]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="list">
    <xs:annotation>
      <xs:documentation>contains any sequence of items organized as a list. [3.7. Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divTop"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:choice>
          <xs:sequence maxOccurs="unbounded">
            <xs:element ref="tei:item"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
          <xs:sequence maxOccurs="unbounded">
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
            <xs:element ref="tei:item"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divBottom"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="item">
    <xs:annotation>
      <xs:documentation>contains one component of a list. [3.7. Lists 2.6. The Revision Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="head">
    <xs:annotation>
      <xs:documentation>(heading) contains any type of heading, for example the title of a section, or the heading of a list, glossary, manuscript description, etc. [4.2.1. Headings and Trailers]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element ref="tei:lg"/>
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:group ref="tei:tei_model.inter"/>
        <xs:group ref="tei:tei_model.lLike"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.placement.attributes"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="note" substitutionGroup="tei:tei_model.noteLike">
    <xs:annotation>
      <xs:documentation>contains a note or annotation. [3.8.1. Notes and Simple Annotation 2.2.6. The Notes Statement 3.11.2.8. Notes and Statement of Language 9.3.5.4. Notes within Entries]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="milestone" substitutionGroup="tei:tei_model.milestoneLike">
    <xs:annotation>
      <xs:documentation>marks a boundary point separating any kind of section of a text, typically but not necessarily indicating a point at which some part of a standard reference system changes, where the change is not represented by a structural element. [3.10.3. Milestone
Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="rendition" use="required">
        <xs:annotation>
          <xs:documentation>points to a description of the rendering or presentation used for this element in the source text.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list>
                <xs:simpleType>
                  <xs:restriction base="xs:token">
                    <xs:enumeration value="#hr">
                      <xs:annotation>
                        <xs:documentation>horizontale Linie</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="#hrRed">
                      <xs:annotation>
                        <xs:documentation>horizontale Linie rot</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="#hrBlue">
                      <xs:annotation>
                        <xs:documentation>horizontale Linie blau</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                    <xs:enumeration value="#vr">
                      <xs:annotation>
                        <xs:documentation>vertikale Linie</xs:documentation>
                      </xs:annotation>
                    </xs:enumeration>
                  </xs:restriction>
                </xs:simpleType>
              </xs:list>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="unit" use="required">
        <xs:annotation>
          <xs:documentation>provides a conventional name for the kind of section changing at this milestone.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="section">
              <xs:annotation>
                <xs:documentation>Trennung von Textabschnitten</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="pb" substitutionGroup="tei:tei_model.milestoneLike">
    <xs:annotation>
      <xs:documentation>(page beginning) marks the beginning of a new page in a paginated document. [3.10.3. Milestone
Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.n"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="facs" use="required">
        <xs:annotation>
          <xs:documentation>(facsimile) points to all or part of an image which corresponds with the content of the element.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list itemType="xs:anyURI"/>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="lb" substitutionGroup="tei:tei_model.milestoneLike">
    <xs:annotation>
      <xs:documentation>(line beginning) marks the beginning of a new (typographic) line in some edition or version of a text. [3.10.3. Milestone
Elements 7.2.5. Speech Contents]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.n"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="cb" substitutionGroup="tei:tei_model.milestoneLike">
    <xs:annotation>
      <xs:documentation>(column beginning) marks the beginning of a new column of a text on a multi-column page. [3.10.3. Milestone
Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.n"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="start">
              <xs:annotation>
                <xs:documentation>Beginn des Spaltensatzes</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="end">
              <xs:annotation>
                <xs:documentation>Ende des Spaltensatzes</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="author" substitutionGroup="tei:tei_model.respLike" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>in a bibliographic reference, contains the name(s) of an author, personal or corporate, of a work; for example in the same form as that provided by a recognized bibliographic name authority. [3.11.2.2. Titles, Authors, and Editors 2.2.1. The Title Statement]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="editor" substitutionGroup="tei:tei_model.respLike">
    <xs:annotation>
      <xs:documentation>contains a secondary statement of responsibility for a bibliographic item, for example the name of an individual, institution or organization, (or of several such) acting as editor, compiler, translator, etc. [3.11.2.2. Titles, Authors, and Editors]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attribute name="corresp">
            <xs:annotation>
              <xs:documentation>
Suggested values include: 1] #DTACorpusPublisher</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:union memberTypes="tei:tei_teidata.pointer">
                <xs:simpleType>
                  <xs:restriction base="xs:token">
                    <xs:enumeration value="#DTACorpusPublisher">
                      <xs:annotation>
                        <xs:documentation/>
                      </xs:annotation>
                    </xs:enumeration>
                  </xs:restriction>
                </xs:simpleType>
              </xs:union>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="role">
            <xs:annotation>
              <xs:documentation>may be used to specify further information about the entity referenced by this name in the form of a set of whitespace-separated values, for example the occupation of a person, or the status of a place.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="translator">
                          <xs:annotation>
                            <xs:documentation/>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="respStmt" substitutionGroup="tei:tei_model.respLike">
    <xs:annotation>
      <xs:documentation>(statement of responsibility) supplies a statement of responsibility for the intellectual content of a text, edition, recording, or series, where the specialized elements for authors, editors, etc. do not suffice or do not apply. May also be used to encode information about individuals or organizations which have played a role in the production or distribution of a bibliographic work. [3.11.2.2. Titles, Authors, and Editors 2.2.1. The Title Statement 2.2.2. The Edition Statement 2.2.5. The Series Statement]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice>
          <xs:sequence>
            <xs:element maxOccurs="unbounded" ref="tei:resp"/>
            <xs:group maxOccurs="unbounded" ref="tei:tei_model.nameLike.agent"/>
          </xs:sequence>
          <xs:sequence>
            <xs:group maxOccurs="unbounded" ref="tei:tei_model.nameLike.agent"/>
            <xs:element maxOccurs="unbounded" ref="tei:resp"/>
          </xs:sequence>
        </xs:choice>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:note"/>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.canonical.attributes"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="resp" type="tei:tei_macro.phraseSeq.limited">
    <xs:annotation>
      <xs:documentation>(responsibility) contains a phrase describing the nature of a person's intellectual responsibility, or an organization's role in the production or distribution of a work. [3.11.2.2. Titles, Authors, and Editors 2.2.1. The Title Statement 2.2.2. The Edition Statement 2.2.5. The Series Statement]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="title">
    <xs:annotation>
      <xs:documentation>contains a title for any kind of work. [3.11.2.2. Titles, Authors, and Editors 2.2.1. The Title Statement 2.2.5. The Series Statement]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attribute name="n">
            <xs:annotation>
              <xs:documentation>(number) gives a number (or other label) for an element, which is not necessarily unique within the document.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list itemType="tei:tei_teidata.count"/>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="type" use="required">
            <xs:annotation>
              <xs:documentation>classifies the title according to some convenient typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="main">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="sub">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="volume">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="part">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="level">
            <xs:annotation>
              <xs:documentation>indicates the bibliographic level for a title, that is, whether it identifies an article, book, journal, series, or unpublished material.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="m">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="a">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="j">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="s">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="publisher">
    <xs:annotation>
      <xs:documentation>provides the name of the organization responsible for the publication or distribution of a bibliographic item. [3.11.2.4. Imprint, Size of a Document, and Reprint Information 2.2.4. Publication, Distribution, Licensing, etc.]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attributes"/>
          <xs:attributeGroup ref="xml:id1"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="biblScope">
    <xs:annotation>
      <xs:documentation>(scope of bibliographic reference) defines the scope of a bibliographic reference, for example as a list of page numbers, or a named subdivision of a larger work. [3.11.2.5. Scopes and Ranges in Bibliographic Citations]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attribute name="unit" use="required">
            <xs:annotation>
              <xs:documentation>identifies the unit of information conveyed by the element, e.g. columns, pages, volume, entry.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="volume">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="issue">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="pages">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="pubPlace">
    <xs:annotation>
      <xs:documentation>(publication place) contains the name of the place where a bibliographic item was published. [3.11.2.4. Imprint, Size of a Document, and Reprint Information]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="bibl">
    <xs:annotation>
      <xs:documentation>(bibliographic citation) contains a loosely-structured bibliographic citation of which the sub-components may or may not be explicitly tagged. [3.11.1. Methods of Encoding Bibliographic References and Lists of References 2.2.7. The Source Description 15.3.2. Declarable Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.highlighted"/>
        <xs:group ref="tei:tei_model.pPart.data"/>
        <xs:group ref="tei:tei_model.pPart.edit"/>
        <xs:element ref="tei:tei_model.ptrLike"/>
        <xs:group ref="tei:tei_model.biblPart"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="M">
              <xs:annotation>
                <xs:documentation>Monographie</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="MM">
              <xs:annotation>
                <xs:documentation>Teil einer mehrbändigen Monographie</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="DM">
              <xs:annotation>
                <xs:documentation>unselbständiger Teil einer Monographie</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="DS">
              <xs:annotation>
                <xs:documentation>unselbständige Schrift in einem Band, der Teil einer Reihe ist</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="JA">
              <xs:annotation>
                <xs:documentation>Artikel einer Zeitschrift/Zeitung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="J">
              <xs:annotation>
                <xs:documentation>Zeitschrift/Zeitung</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="MMS">
              <xs:annotation>
                <xs:documentation>Teil einer mehrbändigen Monographie, die ihrerseits Teil einer Reihe ist</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="MS">
              <xs:annotation>
                <xs:documentation>selbständiger Band einer Reihe</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="listBibl">
    <xs:annotation>
      <xs:documentation>(citation list) contains a list of bibliographic citations of any kind. [3.11.1. Methods of Encoding Bibliographic References and Lists of References 2.2.7. The Source Description 15.3.2. Declarable Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.headLike"/>
        <xs:choice maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.biblLike"/>
          <xs:element ref="tei:tei_model.milestoneLike"/>
        </xs:choice>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="l">
    <xs:annotation>
      <xs:documentation>(verse line) contains a single, possibly incomplete, line of verse. [3.12.1. Core Tags for Verse 3.12. Passages of Verse or Drama 7.2.5. Speech Contents]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:group ref="tei:tei_model.inter"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.n"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="lg">
    <xs:annotation>
      <xs:documentation>(line group) contains one or more verse lines functioning as a formal unit, e.g. a stanza, refrain, verse paragraph, etc. [3.12.1. Core Tags for Verse 3.12. Passages of Verse or Drama 7.2.5. Speech Contents]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divTop"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:choice>
          <xs:group ref="tei:tei_model.lLike"/>
          <xs:group ref="tei:tei_model.stageLike"/>
          <xs:element ref="tei:lg"/>
        </xs:choice>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.lLike"/>
          <xs:group ref="tei:tei_model.stageLike"/>
          <xs:element ref="tei:tei_model.global"/>
          <xs:element ref="tei:lg"/>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divBottom"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="n">
        <xs:annotation>
          <xs:documentation>(number) gives a number (or other label) for an element, which is not necessarily unique within the document.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction>
            <xs:simpleType>
              <xs:list itemType="tei:tei_teidata.count"/>
            </xs:simpleType>
            <xs:minLength value="1"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="poem">
              <xs:annotation>
                <xs:documentation>Gedicht</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="sp">
    <xs:annotation>
      <xs:documentation>(speech) contains an individual speech in a performance text, or a passage presented as such in a prose or verse text. [3.12.2. Core Tags for Drama 3.12. Passages of Verse or Drama 7.2.2. Speeches and Speakers]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:speaker"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:sequence maxOccurs="unbounded">
          <xs:choice>
            <xs:element ref="tei:lg"/>
            <xs:group ref="tei:tei_model.lLike"/>
            <xs:group ref="tei:tei_model.pLike"/>
            <xs:group ref="tei:tei_model.listLike"/>
            <xs:group ref="tei:tei_model.stageLike"/>
            <xs:group ref="tei:tei_model.qLike"/>
          </xs:choice>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.ascribed.directed.attributes"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="speaker">
    <xs:annotation>
      <xs:documentation>contains a specialized form of heading or label, giving the name of one or more speakers in a dramatic text or fragment. [3.12.2. Core Tags for Drama]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="stage">
    <xs:annotation>
      <xs:documentation>(stage direction) contains any kind of stage direction within a dramatic text or fragment. [3.12.2. Core Tags for Drama 3.12. Passages of Verse or Drama 7.2.4. Stage Directions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.ascribed.directed.attribute.toWhom"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="teiHeader">
    <xs:annotation>
      <xs:documentation>(TEI header) supplies descriptive and declarative metadata associated with a digital resource or set of resources. [2.1.1. The TEI Header and Its Components 15.1. Varieties of Composite Text]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element ref="tei:fileDesc"/>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.teiHeaderPart"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="fileDesc">
    <xs:annotation>
      <xs:documentation>(file description) contains a full bibliographic description of an electronic file. [2.2. The File Description 2.1.1. The TEI Header and Its Components]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:sequence>
          <xs:element ref="tei:titleStmt"/>
          <xs:element minOccurs="0" ref="tei:editionStmt"/>
          <xs:element minOccurs="0" ref="tei:extent"/>
          <xs:element ref="tei:publicationStmt"/>
          <xs:element minOccurs="0" ref="tei:seriesStmt"/>
          <xs:element minOccurs="0" ref="tei:notesStmt"/>
        </xs:sequence>
        <xs:element maxOccurs="unbounded" ref="tei:sourceDesc"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="titleStmt">
    <xs:annotation>
      <xs:documentation>(title statement) groups information about the title of a work and those responsible for its content. [2.2.1. The Title Statement 2.2. The File Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="tei:title"/>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.respLike"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="editionStmt">
    <xs:annotation>
      <xs:documentation>(edition statement) groups information relating to one edition of a text. [2.2.2. The Edition Statement 2.2. The File Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
        <xs:sequence>
          <xs:element ref="tei:edition"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.respLike"/>
        </xs:sequence>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="edition">
    <xs:annotation>
      <xs:documentation>describes the particularities of one edition of a text. [2.2.2. The Edition Statement]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attribute name="n">
            <xs:annotation>
              <xs:documentation>(number) gives a number (or other label) for an element, which is not necessarily unique within the document.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list itemType="tei:tei_teidata.count"/>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="extent" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>describes the approximate size of a text stored on some carrier medium or of some other object, digital or non-digital, specified in any convenient units. [2.2.3. Type and Extent of File 2.2. The File Description 3.11.2.4. Imprint, Size of a Document, and Reprint Information 10.7.1. Object Description]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="publicationStmt">
    <xs:annotation>
      <xs:documentation>(publication statement) groups information concerning the publication or distribution of an electronic or other text. [2.2.4. Publication, Distribution, Licensing, etc. 2.2. The File Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:sequence maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.publicationStmtPart.agency"/>
          <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.publicationStmtPart.detail"/>
        </xs:sequence>
        <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="idno">
    <xs:annotation>
      <xs:documentation>(identifier) supplies any form of identifier used to identify some object, such as a bibliographic item, a person, a title, an organization, etc. in a standardized way. [2.2.4. Publication, Distribution, Licensing, etc. 2.2.5. The Series Statement 3.11.2.4. Imprint, Size of a Document, and Reprint Information]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:idno"/>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.datable.attributes"/>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>categorizes the identifier, for example as an ISBN, Social Security number, etc.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="URN">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="EPN">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLCatalogue">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLImages">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLWeb">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLXML">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLText">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLHTML">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLCAB">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLTCF">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="DTAID">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="DTADirName">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="PIDCMDI">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="shelfmark">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="PPN">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="DOI">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="VD">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="URLIIIF">
              <xs:annotation>
                <xs:documentation/>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="availability">
    <xs:annotation>
      <xs:documentation>supplies information about the availability of a text, for example any restrictions on its use or distribution, its copyright status, any licence applying to it, etc. [2.2.4. Publication, Distribution, Licensing, etc.]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element ref="tei:tei_model.availabilityPart"/>
        <xs:group ref="tei:tei_model.pLike"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="licence" substitutionGroup="tei:tei_model.availabilityPart">
    <xs:annotation>
      <xs:documentation>contains information about a licence or other legal agreement applicable to the text. [2.2.4. Publication, Distribution, Licensing, etc.]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="seriesStmt">
    <xs:annotation>
      <xs:documentation>(series statement) groups information about the series, if any, to which a publication belongs. [2.2.5. The Series Statement 2.2. The File Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
        <xs:sequence>
          <xs:element maxOccurs="unbounded" ref="tei:title"/>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element ref="tei:editor"/>
            <xs:element ref="tei:respStmt"/>
          </xs:choice>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element ref="tei:idno"/>
            <xs:element ref="tei:biblScope"/>
          </xs:choice>
        </xs:sequence>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="notesStmt">
    <xs:annotation>
      <xs:documentation>(notes statement) collects together any notes providing information about a text additional to that recorded in other parts of the bibliographic description. [2.2.6. The Notes Statement 2.2. The File Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="tei:tei_model.noteLike"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="sourceDesc">
    <xs:annotation>
      <xs:documentation>(source description) describes the source from which an electronic text was derived or generated, typically a bibliographic description in the case of a digitized text, or a phrase such as "born digital" for a text which has no previous existence. [2.2.7. The Source Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
        <xs:choice maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.biblLike"/>
          <xs:group ref="tei:tei_model.listLike"/>
        </xs:choice>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="biblFull">
    <xs:annotation>
      <xs:documentation>(fully-structured bibliographic citation) contains a fully-structured bibliographic citation, in which all components of the TEI file description are present. [3.11.1. Methods of Encoding Bibliographic References and Lists of References 2.2. The File Description 2.2.7. The Source Description 15.3.2. Declarable Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:sequence>
          <xs:sequence>
            <xs:element ref="tei:titleStmt"/>
            <xs:element minOccurs="0" ref="tei:editionStmt"/>
            <xs:element minOccurs="0" ref="tei:extent"/>
            <xs:element ref="tei:publicationStmt"/>
            <xs:element minOccurs="0" ref="tei:seriesStmt"/>
            <xs:element minOccurs="0" ref="tei:notesStmt"/>
          </xs:sequence>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:sourceDesc"/>
        </xs:sequence>
        <xs:sequence>
          <xs:element ref="tei:fileDesc"/>
          <xs:element ref="tei:profileDesc"/>
        </xs:sequence>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="encodingDesc" substitutionGroup="tei:tei_model.teiHeaderPart">
    <xs:annotation>
      <xs:documentation>(encoding description) documents the relationship between an electronic text and the source or sources from which it was derived. [2.3. The Encoding Description 2.1.1. The TEI Header and Its Components]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element ref="tei:tei_model.encodingDescPart"/>
        <xs:group ref="tei:tei_model.pLike"/>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="editorialDecl" substitutionGroup="tei:tei_model.encodingDescPart">
    <xs:annotation>
      <xs:documentation>(editorial practice declaration) provides details of editorial principles and practices applied during the encoding of a text. [2.3.3. The Editorial Practices Declaration 2.3. The Encoding Description 15.3.2. Declarable Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="tagsDecl" substitutionGroup="tei:tei_model.encodingDescPart">
    <xs:annotation>
      <xs:documentation>(tagging declaration) provides detailed information about the tagging applied to a document. [2.3.4. The Tagging Declaration 2.3. The Encoding Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:rendition"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="rendition">
    <xs:annotation>
      <xs:documentation>supplies information about the rendition or appearance of one or more elements in the source text. [2.3.4. The Tagging Declaration]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.limitedContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attribute name="scheme" use="required">
            <xs:annotation>
              <xs:documentation>identifies the language used to describe the rendition.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="css">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="selector" type="xs:string">
            <xs:annotation>
              <xs:documentation>contains a selector or series of selectors specifying the elements to which the contained style description applies, expressed in the language specified in the scheme attribute.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="profileDesc" substitutionGroup="tei:tei_model.teiHeaderPart">
    <xs:annotation>
      <xs:documentation>(text-profile description) provides a detailed description of non-bibliographic aspects of a text, specifically the languages and sublanguages used, the situation in which it was produced, the participants and their setting. [2.4. The Profile Description 2.1.1. The TEI Header and Its Components]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.profileDescPart"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="abstract" substitutionGroup="tei:tei_model.profileDescPart">
    <xs:annotation>
      <xs:documentation>contains a summary or formal abstract prefixed to an existing source document by the encoder. [2.4.4. Abstracts]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.pLike"/>
        <xs:group ref="tei:tei_model.listLike"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="langUsage" substitutionGroup="tei:tei_model.profileDescPart">
    <xs:annotation>
      <xs:documentation>(language usage) describes the languages, sublanguages, registers, dialects, etc. represented within a text. [2.4.2. Language Usage 2.4. The Profile Description 15.3.2. Declarable Elements]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice>
        <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
        <xs:element maxOccurs="unbounded" ref="tei:language"/>
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="language">
    <xs:annotation>
      <xs:documentation>characterizes a single language or sublanguage used within a text. [2.4.2. Language Usage]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq.limited">
          <xs:attribute name="ident" use="required">
            <xs:annotation>
              <xs:documentation>(identifier) Supplies a language code constructed as defined in BCP 47 which is used to identify the language documented by this element, and which is referenced by the global xml:lang attribute.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:union memberTypes="xs:language">
                <xs:simpleType>
                  <xs:restriction base="xs:token">
                    <xs:enumeration value="">
                      <xs:annotation>
                        <xs:documentation/>
                      </xs:annotation>
                    </xs:enumeration>
                  </xs:restriction>
                </xs:simpleType>
              </xs:union>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="textClass" substitutionGroup="tei:tei_model.profileDescPart">
    <xs:annotation>
      <xs:documentation>(text classification) groups information which describes the nature or topic of a text in terms of a standard classification scheme, thesaurus, etc. [2.4.3. The Text Classification]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:classCode"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="classCode">
    <xs:annotation>
      <xs:documentation>(classification code) contains the classification code used for this text in some standard classification system. [2.4.3. The Text Classification]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq.limited">
          <xs:attribute name="scheme" use="required" type="xs:anyURI">
            <xs:annotation>
              <xs:documentation>identifies the classification system in use, as defined by, e.g. a taxonomy element, or some other resource.
Sample values include: 1] http://www.deutschestextarchiv.de/doku/klassifikation#dtamain; 2] http://www.deutschestextarchiv.de/doku/klassifikation#dtasub; 3] http://www.deutschestextarchiv.de/doku/klassifikation#dwds1main; 4] http://www.deutschestextarchiv.de/doku/klassifikation#dwds1sub; 5] http://www.deutschestextarchiv.de/doku/klassifikation#dwds2main; 6] http://www.deutschestextarchiv.de/doku/klassifikation#dwds2sub; 7] http://www.deutschestextarchiv.de/doku/klassifikation#DTACorpus</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="TEI">
    <xs:annotation>
      <xs:documentation>(TEI document) contains a single TEI-conformant document, combining a single TEI header with one or more members of the model.resourceLike class. Multiple TEI elements may be combined to form a teiCorpus element. [4. Default Text Structure 15.1. Varieties of Composite Text]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element ref="tei:teiHeader"/>
        <xs:element maxOccurs="unbounded" ref="tei:tei_model.resourceLike"/>
      </xs:sequence>
      <xs:attributeGroup ref="xml:id2"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="text" substitutionGroup="tei:tei_model.resourceLike">
    <xs:annotation>
      <xs:documentation>contains a single text of any kind, whether unitary or composite, for example a poem or drama, a collection of essays, a novel, a dictionary, or a corpus sample. [4. Default Text Structure 15.1. Varieties of Composite Text]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="body">
    <xs:annotation>
      <xs:documentation>(text body) contains the whole body of a single unitary text, excluding any front or back matter. [4. Default Text Structure]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:group ref="tei:tei_model.divTop"/>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element ref="tei:tei_model.global"/>
            <xs:group ref="tei:tei_model.divTop"/>
          </xs:choice>
        </xs:sequence>
        <xs:choice>
          <xs:sequence maxOccurs="unbounded">
            <xs:element ref="tei:tei_model.divLike"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
          <xs:sequence>
            <xs:sequence maxOccurs="unbounded">
              <xs:group ref="tei:tei_model.common"/>
              <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
            </xs:sequence>
            <xs:sequence minOccurs="0" maxOccurs="unbounded">
              <xs:element ref="tei:tei_model.divLike"/>
              <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
            </xs:sequence>
          </xs:sequence>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divBottom"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="floatingText">
    <xs:annotation>
      <xs:documentation>contains a single text of any kind, whether unitary or composite, which interrupts the text containing it at any point and after which the surrounding text resumes. [4.3.2. Floating Texts]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:front"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:element ref="tei:body"/>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:back"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="div" substitutionGroup="tei:tei_model.divLike">
    <xs:annotation>
      <xs:documentation>(text division) contains a subdivision of the front, body, or back of a text. [4.1. Divisions of the Body]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="trailer" substitutionGroup="tei:tei_model.divBottomPart">
    <xs:annotation>
      <xs:documentation>contains a closing title or footer appearing at the end of a division of a text. [4.2.4. Content of Textual Divisions 4.2. Elements Common to All Divisions]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element ref="tei:lg"/>
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:group ref="tei:tei_model.inter"/>
        <xs:group ref="tei:tei_model.lLike"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="byline">
    <xs:annotation>
      <xs:documentation>contains the primary statement of responsibility given for a work on its title page or at the head or end of the work. [4.2.2. Openers and Closers 4.5. Front Matter]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:docAuthor"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="dateline">
    <xs:annotation>
      <xs:documentation>contains a brief description of the place, date, time, etc. of production of a letter, newspaper story, or other work, prefixed or suffixed to it as a kind of heading or trailer. [4.2.2. Openers and Closers]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:tei_model.global"/>
        <xs:element ref="tei:docDate"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="argument">
    <xs:annotation>
      <xs:documentation>contains a formal list or prose description of the topics addressed by a subdivision of a text. [4.2. Elements Common to All Divisions 4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.global"/>
          <xs:group ref="tei:tei_model.headLike"/>
        </xs:choice>
        <xs:sequence maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.common"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="epigraph">
    <xs:annotation>
      <xs:documentation>contains a quotation, anonymous or attributed, appearing at the start or end of a section or on a title page. [4.2.3. Arguments, Epigraphs, and Postscripts 4.2. Elements Common to All Divisions 4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.common"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="opener">
    <xs:annotation>
      <xs:documentation>groups together dateline, byline, salutation, and similar phrases appearing as a preliminary group at the start of a division, especially of a letter. [4.2. Elements Common to All Divisions]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:argument"/>
        <xs:element ref="tei:byline"/>
        <xs:element ref="tei:dateline"/>
        <xs:element ref="tei:epigraph"/>
        <xs:element ref="tei:salute"/>
        <xs:element ref="tei:signed"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="closer" substitutionGroup="tei:tei_model.divBottomPart">
    <xs:annotation>
      <xs:documentation>groups together salutations, datelines, and similar phrases appearing as a final group at the end of a division, especially of a letter. [4.2.2. Openers and Closers 4.2. Elements Common to All Divisions]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element ref="tei:signed"/>
        <xs:element ref="tei:dateline"/>
        <xs:element ref="tei:salute"/>
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="salute">
    <xs:annotation>
      <xs:documentation>(salutation) contains a salutation or greeting prefixed to a foreword, dedicatory epistle, or other division of a text, or the salutation in the closing of a letter, preface, etc. [4.2.2. Openers and Closers]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="signed" substitutionGroup="tei:tei_model.divBottomPart">
    <xs:annotation>
      <xs:documentation>(signature) contains the closing salutation, etc., appended to a foreword, dedicatory epistle, or other division of a text. [4.2.2. Openers and Closers]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="postscript" substitutionGroup="tei:tei_model.divBottomPart">
    <xs:annotation>
      <xs:documentation>contains a postscript, e.g. to a letter. [4.2. Elements Common to All Divisions]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.global"/>
          <xs:group ref="tei:tei_model.divTopPart"/>
        </xs:choice>
        <xs:group ref="tei:tei_model.common"/>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.global"/>
          <xs:group ref="tei:tei_model.common"/>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.divBottomPart"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="titlePage">
    <xs:annotation>
      <xs:documentation>(title page) contains the title page of a text, appearing within the front or back matter. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:group ref="tei:tei_model.titlepagePart"/>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.titlepagePart"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attribute name="type" use="required">
        <xs:annotation>
          <xs:documentation>classifies the title page according to any convenient typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="main">
              <xs:annotation>
                <xs:documentation>Haupttitelseite</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="halftitle">
              <xs:annotation>
                <xs:documentation>Schmutztitelseite</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="series">
              <xs:annotation>
                <xs:documentation>Titelblatt Reihe</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="heading">
              <xs:annotation>
                <xs:documentation>Titelkopf (z.B. einer Flugschrift oder Zeitungsausgabe)</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="docTitle">
    <xs:annotation>
      <xs:documentation>(document title) contains the title of a document, including all its constituents, as given on a title page. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        <xs:sequence maxOccurs="unbounded">
          <xs:element ref="tei:titlePart"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="titlePart">
    <xs:annotation>
      <xs:documentation>contains a subsection or division of the title of a work, as indicated on a title page. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="type" use="required">
            <xs:annotation>
              <xs:documentation/>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="main">
                  <xs:annotation>
                    <xs:documentation>Haupttitel</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="sub">
                  <xs:annotation>
                    <xs:documentation>Untertitel</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="volume">
                  <xs:annotation>
                    <xs:documentation>Titel des Bandes innerhalb einer Reihe/mehrbändigen Publikation</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="desc">
                  <xs:annotation>
                    <xs:documentation>beschreibende Hinweise zum Werk</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="series">
                  <xs:annotation>
                    <xs:documentation>Titel der übergeordneten Reihe</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="copyright">
                  <xs:annotation>
                    <xs:documentation>Hinweis zum Urheberrecht auf der Titelseite</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="dedication">
                  <xs:annotation>
                    <xs:documentation>Widmung auf der Titelseite</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="price">
                  <xs:annotation>
                    <xs:documentation>Preisangabe auf der Titelseite</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="jImprimatur">
                  <xs:annotation>
                    <xs:documentation>Zeitungen/Zeitschriften: Druckerlaubnis in der Titelei</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="docAuthor">
    <xs:annotation>
      <xs:documentation>(document author) contains the name of the author of the document, as given on the title page (often but not always contained in a byline). [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="imprimatur">
    <xs:annotation>
      <xs:documentation>contains a formal statement authorizing the publication of a work, sometimes required to appear on a title page or its verso. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="docEdition">
    <xs:annotation>
      <xs:documentation>(document edition) contains an edition statement as presented on a title page of a document. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="docImprint">
    <xs:annotation>
      <xs:documentation>(document imprint) contains the imprint statement (place and date of publication, publisher name), as given (usually) at the foot of a title page. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:pubPlace"/>
        <xs:element ref="tei:docDate"/>
        <xs:element ref="tei:publisher"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="docDate">
    <xs:annotation>
      <xs:documentation>(document date) contains the date of a document, as given on a title page or in a dateline. [4.6. Title Pages]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="when">
            <xs:annotation>
              <xs:documentation>gives the value of the date in standard form, i.e. YYYY-MM-DD.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:union memberTypes="xs:date xs:gYear xs:gMonth xs:gDay xs:gYearMonth xs:gMonthDay xs:time xs:dateTime"/>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="front">
    <xs:annotation>
      <xs:documentation>(front matter) contains any prefatory matter (headers, abstracts, title page, prefaces, dedications, etc.) found at the start of a document, before the main body. [4.6. Title Pages 4. Default Text Structure]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.frontPart"/>
          <xs:group ref="tei:tei_model.pLike"/>
          <xs:group ref="tei:tei_model.pLike.front"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:sequence minOccurs="0">
          <xs:sequence>
            <xs:element ref="tei:tei_model.divLike"/>
            <xs:choice minOccurs="0" maxOccurs="unbounded">
              <xs:element ref="tei:tei_model.divLike"/>
              <xs:group ref="tei:tei_model.frontPart"/>
              <xs:element ref="tei:tei_model.global"/>
            </xs:choice>
          </xs:sequence>
          <xs:sequence minOccurs="0">
            <xs:group ref="tei:tei_model.divBottom"/>
            <xs:choice minOccurs="0" maxOccurs="unbounded">
              <xs:group ref="tei:tei_model.divBottom"/>
              <xs:element ref="tei:tei_model.global"/>
            </xs:choice>
          </xs:sequence>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="back">
    <xs:annotation>
      <xs:documentation>(back matter) contains any appendixes, etc. following the main part of a text. [4.7. Back Matter 4. Default Text Structure]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.frontPart"/>
          <xs:group ref="tei:tei_model.pLike.front"/>
          <xs:group ref="tei:tei_model.pLike"/>
          <xs:group ref="tei:tei_model.listLike"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:tei_model.divLike"/>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:group ref="tei:tei_model.frontPart"/>
            <xs:element ref="tei:tei_model.divLike"/>
            <xs:element ref="tei:tei_model.global"/>
          </xs:choice>
        </xs:sequence>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:tei_model.divBottomPart"/>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element ref="tei:tei_model.divBottomPart"/>
            <xs:element ref="tei:tei_model.global"/>
          </xs:choice>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="textDesc" substitutionGroup="tei:tei_model.profileDescPart" type="tei:tei_channel">
    <xs:annotation>
      <xs:documentation>(text description) provides a description of a text in terms of its situational parameters. [15.2.1. The Text Description]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:complexType name="tei_channel">
    <xs:sequence>
      <xs:element ref="tei:channel"/>
    </xs:sequence>
  </xs:complexType>
  <xs:element name="channel">
    <xs:annotation>
      <xs:documentation>(primary channel) describes the medium or channel by which a text is delivered or experienced. For a written text, this might be print, manuscript, email, etc.; for a spoken one, radio, telephone, face-to-face, etc. [15.2.1. The Text Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq.limited">
          <xs:attribute name="mode" use="required">
            <xs:annotation>
              <xs:documentation>specifies the mode of this channel with respect to speech and writing.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="w">
                  <xs:annotation>
                    <xs:documentation/>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="castList" substitutionGroup="tei:tei_model.frontPart.drama">
    <xs:annotation>
      <xs:documentation>(cast list) contains a single cast list or dramatis personae. [7.1.4. Cast Lists 7.1. Front and Back Matter
 ]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="castGroup">
    <xs:annotation>
      <xs:documentation>(cast list grouping) groups one or more individual castItem elements within a cast list. [7.1.4. Cast Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.global"/>
          <xs:group ref="tei:tei_model.headLike"/>
        </xs:choice>
        <xs:sequence maxOccurs="unbounded">
          <xs:choice>
            <xs:element ref="tei:castItem"/>
            <xs:element ref="tei:castGroup"/>
            <xs:element ref="tei:roleDesc"/>
          </xs:choice>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
        <xs:sequence minOccurs="0">
          <xs:element ref="tei:trailer"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="castItem">
    <xs:annotation>
      <xs:documentation>(cast list item) contains a single entry within a cast list, describing either a single role or a list of non-speaking roles. [7.1.4. Cast Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType mixed="true">
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element ref="tei:tei_model.castItemPart"/>
        <xs:group ref="tei:tei_model.phrase"/>
        <xs:element ref="tei:tei_model.global"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="role" substitutionGroup="tei:tei_model.castItemPart">
    <xs:annotation>
      <xs:documentation>contains the name of a dramatic role, as given in a cast list. [7.1.4. Cast Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="roleDesc" substitutionGroup="tei:tei_model.castItemPart">
    <xs:annotation>
      <xs:documentation>(role description) describes a character's role in a drama. [7.1.4. Cast Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="actor" substitutionGroup="tei:tei_model.castItemPart">
    <xs:annotation>
      <xs:documentation>contains the name of an actor appearing within a cast list. [7.1.4. Cast Lists]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attributes"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="spGrp">
    <xs:annotation>
      <xs:documentation>(speech group) contains a group of speeches or songs in a performance text presented in a source as constituting a single unit or number. [7.2.3. Grouped Speeches]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.headLike"/>
        <xs:choice maxOccurs="unbounded">
          <xs:element ref="tei:tei_model.global"/>
          <xs:element ref="tei:sp"/>
          <xs:group ref="tei:tei_model.stageLike"/>
        </xs:choice>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.ascribed.directed.attribute.toWhom"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="table">
    <xs:annotation>
      <xs:documentation>contains text displayed in tabular form, in rows and columns. [14.1.1. TEI Tables]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:choice minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.headLike"/>
          <xs:element ref="tei:tei_model.global"/>
        </xs:choice>
        <xs:choice>
          <xs:sequence maxOccurs="unbounded">
            <xs:element ref="tei:row"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
          <xs:sequence maxOccurs="unbounded">
            <xs:element ref="tei:tei_model.graphicLike"/>
            <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
          </xs:sequence>
        </xs:choice>
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:group ref="tei:tei_model.divBottom"/>
          <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.global"/>
        </xs:sequence>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.global.facs.attribute.facs"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="row">
    <xs:annotation>
      <xs:documentation>contains one row of a table. [14.1.1. TEI Tables]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="tei:cell"/>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="cell">
    <xs:annotation>
      <xs:documentation>contains one cell of a table. [14.1.1. TEI Tables]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.specialPara">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="role">
            <xs:annotation>
              <xs:documentation/>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="label">
                  <xs:annotation>
                    <xs:documentation>Spaltentitel</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="rows" default="1" type="tei:tei_teidata.count">
            <xs:annotation>
              <xs:documentation>indicates the number of rows occupied by this cell or row.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
          <xs:attribute name="cols" default="1" type="tei:tei_teidata.count">
            <xs:annotation>
              <xs:documentation>(columns) indicates the number of columns occupied by this cell or row.</xs:documentation>
            </xs:annotation>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="formula" substitutionGroup="tei:tei_model.graphicLike">
    <xs:annotation>
      <xs:documentation>contains a mathematical or other formula. [14.2. Formulæ and Mathematical Expressions]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="figure" substitutionGroup="tei:tei_model.global">
    <xs:annotation>
      <xs:documentation>groups elements representing or containing graphic information such as an illustration, formula, or figure. [14.4. Specific Elements for Graphic Images]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:group ref="tei:tei_model.headLike"/>
        <xs:group ref="tei:tei_model.common"/>
        <xs:element ref="tei:tei_model.graphicLike"/>
        <xs:element ref="tei:tei_model.global"/>
        <xs:group ref="tei:tei_model.divBottom"/>
      </xs:choice>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
      <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
      <xs:attributeGroup ref="tei:tei_att.global.facs.attribute.facs"/>
      <xs:attribute name="type">
        <xs:annotation>
          <xs:documentation>characterizes the element in some sense, using any convenient classification scheme or typology.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="notatedMusic">
              <xs:annotation>
                <xs:documentation>Notensatz</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:attributeGroup name="tei_att.global.linking.attribute.corresp">
    <xs:attribute name="corresp">
      <xs:annotation>
        <xs:documentation>(corresponds) points to elements that correspond to the current element in some way.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="tei:tei_teidata.pointer"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.linking.attribute.sameAs">
    <xs:attribute name="sameAs">
      <xs:annotation>
        <xs:documentation>points to an element that is the same as the current element.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="tei:tei_teidata.pointer"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.linking.attribute.next">
    <xs:attribute name="next">
      <xs:annotation>
        <xs:documentation>points to the next element of a virtual aggregate of which the current element is part.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="tei:tei_teidata.pointer"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:attributeGroup name="tei_att.global.linking.attribute.prev">
    <xs:attribute name="prev">
      <xs:annotation>
        <xs:documentation>(previous) points to the previous element of a virtual aggregate of which the current element is part.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="tei:tei_teidata.pointer"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:element name="msDesc">
    <xs:annotation>
      <xs:documentation>(manuscript description) contains a description of a single identifiable manuscript or other text-bearing object. [10.1. Overview]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element ref="tei:msIdentifier"/>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.headLike"/>
        <xs:choice>
          <xs:group maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
          <xs:element minOccurs="0" ref="tei:physDesc"/>
        </xs:choice>
      </xs:sequence>
      <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
      <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="msIdentifier">
    <xs:annotation>
      <xs:documentation>(manuscript identifier) contains the information required to identify the manuscript or similar object being described. [10.4. The Manuscript Identifier]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" ref="tei:placeName"/>
        <xs:element minOccurs="0" ref="tei:country"/>
        <xs:element minOccurs="0" ref="tei:repository"/>
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:idno"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="repository" type="xs:string">
    <xs:annotation>
      <xs:documentation>contains the name of a repository within which manuscripts or other objects are stored, possibly forming part of an institution. [10.4. The Manuscript Identifier]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="physDesc">
    <xs:annotation>
      <xs:documentation>(physical description) contains a full physical description of a manuscript, manuscript part, or other object optionally subdivided using more specialized elements from the model.physDescPart class. [10.7. Physical Description]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
        <xs:element minOccurs="0" ref="tei:typeDesc"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="typeDesc">
    <xs:annotation>
      <xs:documentation>contains a description of the typefaces or other aspects of the printing of an incunable or other printed source. [10.7.2.1. Writing]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:group minOccurs="0" maxOccurs="unbounded" ref="tei:tei_model.pLike"/>
    </xs:complexType>
  </xs:element>
  <xs:group name="tei_model.persNamePart">
    <xs:choice>
      <xs:element ref="tei:surname"/>
      <xs:element ref="tei:forename"/>
      <xs:element ref="tei:genName"/>
      <xs:element ref="tei:nameLink"/>
      <xs:element ref="tei:addName"/>
      <xs:element ref="tei:roleName"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.persNamePart_alternation">
    <xs:choice>
      <xs:element ref="tei:surname"/>
      <xs:element ref="tei:forename"/>
      <xs:element ref="tei:genName"/>
      <xs:element ref="tei:nameLink"/>
      <xs:element ref="tei:addName"/>
      <xs:element ref="tei:roleName"/>
    </xs:choice>
  </xs:group>
  <xs:group name="tei_model.persNamePart_sequence">
    <xs:sequence>
      <xs:element ref="tei:surname"/>
      <xs:element ref="tei:forename"/>
      <xs:element ref="tei:genName"/>
      <xs:element ref="tei:nameLink"/>
      <xs:element ref="tei:addName"/>
      <xs:element ref="tei:roleName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.persNamePart_sequenceOptional">
    <xs:sequence>
      <xs:element minOccurs="0" ref="tei:surname"/>
      <xs:element minOccurs="0" ref="tei:forename"/>
      <xs:element minOccurs="0" ref="tei:genName"/>
      <xs:element minOccurs="0" ref="tei:nameLink"/>
      <xs:element minOccurs="0" ref="tei:addName"/>
      <xs:element minOccurs="0" ref="tei:roleName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.persNamePart_sequenceOptionalRepeatable">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:surname"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:forename"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:genName"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:nameLink"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:addName"/>
      <xs:element minOccurs="0" maxOccurs="unbounded" ref="tei:roleName"/>
    </xs:sequence>
  </xs:group>
  <xs:group name="tei_model.persNamePart_sequenceRepeatable">
    <xs:sequence>
      <xs:element maxOccurs="unbounded" ref="tei:surname"/>
      <xs:element maxOccurs="unbounded" ref="tei:forename"/>
      <xs:element maxOccurs="unbounded" ref="tei:genName"/>
      <xs:element maxOccurs="unbounded" ref="tei:nameLink"/>
      <xs:element maxOccurs="unbounded" ref="tei:addName"/>
      <xs:element maxOccurs="unbounded" ref="tei:roleName"/>
    </xs:sequence>
  </xs:group>
  <xs:element name="orgName">
    <xs:annotation>
      <xs:documentation>(organization name) contains an organizational name. [13.2.2. Organizational Names]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.personal.attribute.full"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attribute.ref"/>
          <xs:attribute name="role">
            <xs:annotation>
              <xs:documentation>nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="hostingInstitution">
                          <xs:annotation>
                            <xs:documentation>Publizierende Institution; nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="project">
                          <xs:annotation>
                            <xs:documentation>Herausgebendes Projekt; nur in &lt;teiHeader&gt; zu verwenden</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="persName">
    <xs:annotation>
      <xs:documentation>(personal name) contains a proper noun or proper-noun phrase referring to a person, possibly including one or more of the person's forenames, surnames, honorifics, added names, etc. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.personal.attribute.full"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attribute.ref"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="surname" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>contains a family (inherited) name, as opposed to a given, baptismal, or nick name. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="forename" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>contains a forename, given or baptismal name. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="genName" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>(generational name component) contains a name component used to distinguish otherwise similar names on the basis of the relative ages or generations of the persons named. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="nameLink" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>(name link) contains a connecting phrase or link used within a name but not regarded as part of it, such as van der or of. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="addName" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>(additional name) contains an additional name component, such as a nickname, epithet, or alias, or any other descriptive phrase used within a personal name. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="roleName" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>contains a name component which indicates that the referent has a particular role or position in society, such as an official title or rank. [13.2.1. Personal Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:element name="placeName">
    <xs:annotation>
      <xs:documentation>contains an absolute or relative place name. [13.2.3. Place Names]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.personal.attribute.full"/>
          <xs:attributeGroup ref="tei:tei_att.canonical.attribute.ref"/>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="country" type="tei:tei_macro.phraseSeq">
    <xs:annotation>
      <xs:documentation>contains the name of a geo-political unit, such as a nation, country, colony, or commonwealth, larger than or administratively superior to a region and smaller than a bloc. [13.2.3. Place Names]</xs:documentation>
    </xs:annotation>
  </xs:element>
  <xs:attributeGroup name="tei_att.global.facs.attribute.facs">
    <xs:attribute name="facs">
      <xs:annotation>
        <xs:documentation>(facsimile) points to all or part of an image which corresponds with the content of the element.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction>
          <xs:simpleType>
            <xs:list itemType="xs:anyURI"/>
          </xs:simpleType>
          <xs:minLength value="1"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:attributeGroup>
  <xs:element name="fw" substitutionGroup="tei:tei_model.milestoneLike">
    <xs:annotation>
      <xs:documentation>(forme work) contains a running head (e.g. a header, footer), catchword, or similar material appearing on the current page. [11.6. Headers, Footers, and Similar Matter]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.phraseSeq">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmllang"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attribute name="place" use="required">
            <xs:annotation>
              <xs:documentation>describes the place, where the forme work is found on the page</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="top">
                          <xs:annotation>
                            <xs:documentation>am Seitenanfang gedruckt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="bottom">
                          <xs:annotation>
                            <xs:documentation>am Seitenende gedruckt</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
          <xs:attribute name="type" use="required">
            <xs:annotation>
              <xs:documentation>classifies the material encoded according to some useful typology.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction base="xs:token">
                <xs:enumeration value="header">
                  <xs:annotation>
                    <xs:documentation>Kolumnentitel</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="sig">
                  <xs:annotation>
                    <xs:documentation>Bogensignatur</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="catch">
                  <xs:annotation>
                    <xs:documentation>Kustode</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="pageNum">
                  <xs:annotation>
                    <xs:documentation>Seitennummer</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
                <xs:enumeration value="folNum">
                  <xs:annotation>
                    <xs:documentation>Blattnummer</xs:documentation>
                  </xs:annotation>
                </xs:enumeration>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="space" substitutionGroup="tei:tei_model.global.edit">
    <xs:annotation>
      <xs:documentation>indicates the location of a significant space in the text. [11.5.1. Space]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="dim" use="required">
        <xs:annotation>
          <xs:documentation>(dimension) indicates whether the space is horizontal or vertical.</xs:documentation>
        </xs:annotation>
        <xs:simpleType>
          <xs:restriction base="xs:token">
            <xs:enumeration value="vertical">
              <xs:annotation>
                <xs:documentation>vertikaler Leerraum</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
            <xs:enumeration value="horizontal">
              <xs:annotation>
                <xs:documentation>horizontaler Leerraum</xs:documentation>
              </xs:annotation>
            </xs:enumeration>
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="supplied">
    <xs:annotation>
      <xs:documentation>signifies text supplied by the transcriber or editor for any reason; for example because the original cannot be read due to physical damage, or because of an obvious omission by the author or scribe. [11.3.3.1. Damage, Illegibility, and Supplied Text]</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:complexContent>
        <xs:extension base="tei:tei_macro.paraContent">
          <xs:attributeGroup ref="tei:tei_att.global.attribute.xmlid"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rend"/>
          <xs:attributeGroup ref="tei:tei_att.global.rendition.attribute.rendition"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.corresp"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.next"/>
          <xs:attributeGroup ref="tei:tei_att.global.linking.attribute.prev"/>
          <xs:attributeGroup ref="tei:tei_att.global.responsibility.attribute.cert"/>
          <xs:attribute name="reason">
            <xs:annotation>
              <xs:documentation>one or more words indicating why the text has had to be supplied, e.g. overbinding, faded-ink, lost-folio, omitted-in-original.</xs:documentation>
            </xs:annotation>
            <xs:simpleType>
              <xs:restriction>
                <xs:simpleType>
                  <xs:list>
                    <xs:simpleType>
                      <xs:restriction base="xs:token">
                        <xs:enumeration value="covered">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) Ergänzung aufgrund von Überschreibung</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                        <xs:enumeration value="damage">
                          <xs:annotation>
                            <xs:documentation>(Level 3:) Ergänzung aufgrund Textverlust</xs:documentation>
                          </xs:annotation>
                        </xs:enumeration>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:list>
                </xs:simpleType>
                <xs:minLength value="1"/>
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
</xs:schema>
