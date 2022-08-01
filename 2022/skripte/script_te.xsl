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
                <title>
                    Vieweg Briefarchiv
                 </title>                
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:note">
        
        <!-- Kommentar -->
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <h1><xsl:text>Briefinformationen</xsl:text></h1>
 <xsl:call-template name="title"/>
        <xsl:call-template name="author"></xsl:call-template>
    </xsl:template>
    
    <xsl:template name="title">
        <h2><xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:title"/></h2>
    </xsl:template>
    
    <xsl:template name="author">
        <h2><xsl:text>Transkribiert und kodiert von: </xsl:text><xsl:value-of select="//tei:respStmt/tei:persName"/></h2>
    </xsl:template>
    
    
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
    
    <xsl:template match="tei:note[@place='right']">
        <span class="note-right">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <b>
            <xsl:text>
                Seite: </xsl:text>
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
</xsl:stylesheet>