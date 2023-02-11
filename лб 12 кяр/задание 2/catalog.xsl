<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<table border="1">
<tr bgcolor="#9acd32">
<th>Фамилия</th>
<th>Оценка</th>
</tr>
<xsl:for-each select="catalog/cd">
<tr>
<td>
<xsl:value-of select="surname"/>
</td>
<xsl:choose>
<xsl:when test="mark > 4">
<td bgcolor="green">
<xsl:value-of select="mark"/>
</td>
</xsl:when>
<xsl:when test="mark = 3">
<td bgcolor="red">
<xsl:value-of select="mark"/>
</td>
</xsl:when>
<xsl:otherwise>
<td>
<xsl:value-of select="mark"/>
</td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>