<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html" />
	
     <!--   <xsl:template match="tei:teiHeader" />
<xsl:apply-templates />
</xsl:template> -->


    <xsl:template match="tei:TEI">
        <html>
            <head>
                <title>Vieweg Briefarchiv</title>
                <style type="text/css">
                    .note-right {
                        float: right;
                        font-style: italic;
                    }
                </style>
            </head>
            <body>
                <b> <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />  </b><br/>
                <xsl:text>Erstellt von: </xsl:text><xsl:apply-templates select="tei:teiHeader[1]/tei:fileDesc[1]/tei:titleStmt[1]/tei:author[1]/tei:persName[1]"></xsl:apply-templates><br/>
                <hr/>
                <xsl:apply-templates select="tei:text/tei:body/tei:div" />
            </body>
        </html>
    </xsl:template>



    <xsl:template match="tei:note[@place='left']" />
    
    <xsl:template match="tei:div">
        <div>
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p>
            <span style="margin-left: 5%"><xsl:apply-templates /></span>
        </p>
   </xsl:template>
    
    <xsl:template match="tei:head">
        <h1>
            <xsl:apply-templates />
        </h1>
    </xsl:template>
    
    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>
    
    <xsl:template match="tei:choice">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="tei:note[@place='right']">
        <span class="note-right">
            <xsl:apply-templates />
        </span>
    </xsl:template>
  
    <xsl:template match="tei:pb">
        <b>
            <xsl:apply-templates select="@n"/>
        </b>
    </xsl:template>
    
    <xsl:template match="tei:persName">
        <a>
            <xsl:attribute name="href">
                <xsl:apply-templates select="@ref" />
            </xsl:attribute>
            <xsl:apply-templates />
        </a>
    </xsl:template>
    
    <xsl:template match="tei:placeName"> <span style="color: blue">
        <a>
            <xsl:attribute name="href">
                <xsl:apply-templates select="@ref" />
            </xsl:attribute>
            <xsl:apply-templates />
        </a>
		</span>
    </xsl:template>
	
	<xsl:template match="tei:opener">
	<br/><xsl:apply-templates/>
	</xsl:template>

<xsl:template match="tei:hi">
<i><xsl:apply-templates/></i>
</xsl:template>

</xsl:stylesheet>