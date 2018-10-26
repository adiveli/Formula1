<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html> 
<body>

<style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>


  <h2>Clasament</h2>
  <table id="t01">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Echipa</th>
      <th style="text-align:left">Pilot</th>
      <th style="text-align:left">Puncte</th>
    </tr>
    <xsl:for-each select="clasament/echipaC">
    <tr>
      <td><xsl:value-of select="numeE"/></td>
      <td><xsl:value-of select="pilot"/></td>
      <td><xsl:value-of select="puncte"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
