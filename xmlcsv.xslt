<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf8"/>

<xsl:strip-space elements="*" />

<xsl:template match="/*/child::*">
<xsl:for-each select="child::*">
<xsl:if test="position() != last()">"<xsl:value-of select="normalize-space(replace(.,'""','""""'))"/>",</xsl:if>
<xsl:if test="position()  = last()">"<xsl:value-of select="normalize-space(replace(.,'""','""""'))"/>"<xsl:text>&#10;</xsl:text>
</xsl:if>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
