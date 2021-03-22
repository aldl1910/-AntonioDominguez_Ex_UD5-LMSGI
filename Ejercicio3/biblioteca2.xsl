<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <p>Antonio Luis Domínguez Lebrón</p>
            <ol>
                <xsl:for-each select="bib/libro">
                <xsl:if test="precio &lt; 100.00">
                    <li> <xsl:value-of select="titulo"/></li>
                </xsl:if>
                </xsl:for-each>
            </ol>
    </xsl:template>
</xsl:stylesheet>