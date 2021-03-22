<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <th>Antonio Luis Domínguez Lebrón</th>
        <table border="1">
        <xsl:for-each select="bib/libro" >
        <xsl:sort select="precio" order="ascending" data-type="number"/>
            <tr>  
                <td><xsl:value-of select="precio"/></td>
                <xsl:choose>
                    <xsl:when test="precio &gt; 100">
                        <td bgcolor="#FF0000">
                            <xsl:value-of select="titulo"/>
                        </td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td >
                            <xsl:value-of select="titulo"/>
                        </td>
                    </xsl:otherwise>
                </xsl:choose>
                <td><i><xsl:value-of select="@año"/></i></td>
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>