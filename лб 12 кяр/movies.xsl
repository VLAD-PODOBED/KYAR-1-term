<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/collection">
<html>
<body>
<table border="1">
<tr>
<th>name</th>
<th>surname</th>
<th>date</th>
<th>education</th>
</tr>
<xsl:for-each select="movie"/>
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="surname"/></td>
<td><xsl:value-of select="date"/></td>
<td><xsl:value-of select="education"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet >
