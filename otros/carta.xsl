<?xml version="1.0" ?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
  exclude-result-prefixes="tei">
  
  <xsl:output method="xhtml" indent="yes"/>
  
<!--  <xsl:decimal-format decimal-separator="," grouping-separator="."/>-->
  
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
        </title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  
  <xsl:template match="p">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  
  <xsl:template match="opener">
    <div><xsl:apply-templates/></div>
  </xsl:template>
  
  
  <xsl:template match="closer">
    <div><xsl:apply-templates/></div>
  </xsl:template>
  
</xsl:stylesheet>