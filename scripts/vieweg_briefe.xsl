<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html" />
	
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <title>Vieweg Briefarchiv</title>
                <link rel="stylesheet" type="text/css" href="../scripts/style.css"/>
            </head>
            <body>
               <div class="meta">
                    <span class="maintitle">
                        <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/><br/>
                    </span>
                   <span class="subtitle">
                       <xsl:text>- </xsl:text>
                        <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/>
                       <xsl:text> -</xsl:text>
                       <br/>
                   </span>
                <span class="author">
                    <xsl:text>Geschrieben von: </xsl:text><xsl:apply-templates select="//tei:author/tei:persName/tei:forename"/>
                    <xsl:text> </xsl:text>
                    <xsl:apply-templates select="//tei:author/tei:persName/tei:surname"/><br/>
                </span> 
                   <span class="editor">
                       <xsl:text>transkribiert und bearbeitet von: </xsl:text><xsl:apply-templates select="//tei:respStmt//tei:persName/tei:forename"/>
                       <xsl:text> </xsl:text>
                       <xsl:apply-templates select="//tei:respStmt//tei:persName/tei:surname"/><br/>
                   </span>
               </div>                
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
            <xsl:apply-templates />
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
    
    
    <xsl:template match="tei:sic">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:corr">
        <xsl:text>[korrigiert: </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>] </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:note[@place='right']">
        <span class="note-right">
            <xsl:apply-templates />
        </span>
    </xsl:template>
  
    <xsl:template match="tei:pb">
        <xsl:choose>
            <xsl:when test="@corresp">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@corresp"/>
            </xsl:attribute>
        <xsl:text>[Seite: </xsl:text>
            <xsl:apply-templates select="@n"/>
            <xsl:text>]</xsl:text>
        </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>[Seite: </xsl:text>
                <xsl:apply-templates select="@n"/>
                <xsl:text>]</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:template>
    
    <xsl:template match="//tei:text//tei:persName">
        <xsl:choose>
            <xsl:when test="@ref">
                <a>
                    <xsl:attribute name="href">
                        <xsl:apply-templates select="@ref" />
                    </xsl:attribute>
                    <xsl:apply-templates />
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="//tei:text//tei:placeName">
        <xsl:choose>
            <xsl:when test="@ref">
                <a>
                    <xsl:attribute name="href">
                        <xsl:apply-templates select="@ref" />
                    </xsl:attribute>
                    <xsl:apply-templates />
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
	
	<xsl:template match="tei:opener">
	<br/><xsl:apply-templates/>
	</xsl:template>

<xsl:template match="tei:hi">
<i><xsl:apply-templates/></i>
</xsl:template>

</xsl:stylesheet>