<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="bib"/>
            </body>
        </html>
    </xsl:template>
<!-- bib  -->
    <xsl:template match="/bib">
        <table border="1">
            <tr>
                <th>Título</th>
                <th>Autor/es</th>
                <th>Editor/es</th>
            </tr>
        <xsl:apply-templates select="libro">
            <xsl:sort select="titulo" order="ascending"/>
        </xsl:apply-templates>
        </table>
    </xsl:template>
<!-- libro  -->
    <xsl:template match="/bib/libro">
        <tr>
            <td>
                <xsl:apply-templates select="titulo"/>
            </td>
            <td>
                <xsl:apply-templates select="autor"/>
            </td>
            <td>
                <xsl:apply-templates select="editor"/>
            </td>
        </tr>
    </xsl:template>
<!-- titulo  -->
    <xsl:template match="/bib/libro/titulo">
        <xsl:choose>
            <xsl:when test="../precio > 100">
                <span style="color: red;">
                    <xsl:value-of select="."/> (Caro)
                </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
<!-- autor  -->
    <xsl:template match="/bib/libro/autor">
        <xsl:apply-templates select="nombre"/>
            <xsl:text> </xsl:text>
        <xsl:apply-templates select="apellido"/>
            <xsl:text> </xsl:text>
        </xsl:template>
<!-- nombre  -->
    <xsl:template match="/bib/libro/autor/nombre">
        <xsl:value-of select="."/>
    </xsl:template>
<!-- apellido  -->
    <xsl:template match="/bib/libro/autor/apellido">
        <xsl:value-of select="."/>
    </xsl:template>
<!-- editor  -->
    <xsl:template match="/bib/libro/editor">
        <xsl:apply-templates select="nombre"/>
            <xsl:text> </xsl:text>
        <xsl:apply-templates select="apellido"/>
            <xsl:text> </xsl:text>
        <xsl:apply-templates select="afiliacion"/>
            <xsl:text> </xsl:text>
    </xsl:template>
<!-- nombre  -->
    <xsl:template match="/bib/libro/editor/nombre">
        <xsl:value-of select="."/>
    </xsl:template>
<!-- apellido  -->
    <xsl:template match="/bib/libro/editor/apellido">
        <xsl:value-of select="."/>
    </xsl:template>
<!-- afiliacion  -->
    <xsl:template match="/bib/libro/editor/afiliacion">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>