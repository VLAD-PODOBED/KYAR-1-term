<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
 <table border="1">
 <tr>
 <th>Имя</th>
 <th>Фамилия</th>
 <th>Дата рождения</th>
 <th>Образование</th>
 </tr>
 <xsl:for-each select="catalog/nc">
 <xsl:sort select="surname"/>
 <tr>
 <td><xsl:value-of select="name"/></td>
 <td><xsl:value-of select="surname"/></td>
 <td><xsl:value-of select="data"/></td>
 <td><xsl:value-of select="education"/></td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
