<?xml version="1.0" encoding="UTF-8"?>
<!--<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:svg="http://www.w3.org/2000/svg" xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xi svg xlink xmlns xsl" version="2.0">-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svg="http://www.w3.org/2000/svg" xml:lang="en-gb" xmlns="http://www.w3.org/1999/xhtml"  xmlns:mml="http://www.w3.org/1998/Math/MathML" version="2.0">
<xsl:template match="article">
<html xmlns:mml="http://www.w3.org/1998/Math/MathML">
<head>
 <object ID="MathPlayer" CLASSID="clsid:32F66A20-7614-11D4-BD11-00104BD3F987">
   </object>
    <script src="file:///D:/lib/jquery-1.10.1.min.js"></script>
    <script src="file:///D:/lib/tiff.min.js"></script>
	<script type="text/x-mathjax-config"> MathJax.Hub.Config({ TeX: { equationNumbers: { autoNumber: "all" } } }); </script>
	  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ["$$","$$"] ],
            processEscapes: true
        }
    });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

</head>
<xsl:processing-instruction name="IMPORT">NAMESPACE="mml" IMPLEMENTATION="#MathPlayer"</xsl:processing-instruction>
<body>
<title>CAIRN VIEW</title>
<xsl:apply-templates/>
<hr color="red" width="100%"/>
</body>
</html>
</xsl:template>
<xsl:template match="admin">
<xsl:call-template name="artinfo"/>
<table border="0" width="90%">
<tr><td align="center"><xsl:apply-templates/></td></tr>
</table>
<br/> 
<hr color="red" width="80%"/>
</xsl:template>
<xsl:template name="artinfo">
<table border="0" align="center" width="60%" bgcolor="Gainsboro">
<br/>
<tr>
<td colspan="2" align="center"><h3>Article Info</h3></td>
</tr>
<tr>
<td colspan="2" align="center"></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Article ID</b> </font></td>
<td><xsl:value-of select="ancestor::article/@idproprio"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>TRI</b> </font></td>
<td><xsl:value-of select="descendant::tri"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Article Type</b> </font></td>
<td><xsl:value-of select="ancestor::article/@typeart"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Traitement</b> </font></td>
<td><xsl:value-of select="ancestor::article/@traitement"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Subject</b> </font></td>
<td><xsl:value-of select="descendant::section_sommaire"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>First Page</b> </font></td>
<td><xsl:value-of select="descendant::ppage"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Last Page</b> </font></td>
<td><xsl:value-of select="descendant::dpage"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Page Count</b> </font></td>
<td><xsl:value-of select="descendant::nbpage"/></td>
</tr>
<!--
<tr>
<td><font color="DarkCyan"><b>Para Count</b> </font></td>
<td><xsl:value-of select="descendant::nbpara"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Word Count</b> </font></td>
<td><xsl:value-of select="descendant::nbmot"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Fig Count</b> </font></td>
<td><xsl:value-of select="descendant::nbfig"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Table Count</b> </font></td>
<td><xsl:value-of select="descendant::nbtabl"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Image Count</b> </font></td>
<td><xsl:value-of select="descendant::nbimage"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Audio Count</b> </font></td>
<td><xsl:value-of select="descendant::nbaudio"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Video Count</b> </font></td>
<td><xsl:value-of select="descendant::nbvideo"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Ref Count</b> </font></td>
<td><xsl:value-of select="descendant::nbrefbiblio"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Note Count</b> </font></td>
<td><xsl:value-of select="descendant::nbnote"/></td>
</tr> -->
<tr>
<td><font color="DarkCyan"><b>Book Title</b> </font></td>
<td><xsl:value-of select="descendant::titreouv"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Collection Title</b> </font></td>
<td><xsl:value-of select="descendant::collection"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Publication Year</b> </font></td>
<td><xsl:value-of select="descendant::pub"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>XML Conversion Date</b> </font></td>
<td><xsl:value-of select="descendant::pubnum"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>ISBN</b> </font></td>
<td><xsl:value-of select="descendant::idisbn"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>prodnum</b> </font></td>
<td><xsl:value-of select="descendant::prodnum"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>diffnum</b> </font></td>
<td><xsl:value-of select="descendant::diffnum"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Copyright</b> </font></td>
<td><xsl:value-of select="descendant::droitsauteur"/></td>
</tr>
<tr>
<td><font color="DarkCyan"><b>Publisher</b> </font></td>
<td><xsl:value-of select="descendant::editeur"/></td>
</tr>
</table>
<br/>
</xsl:template>
<!-- Dummy -->
<xsl:template match="infoarticle/tri"></xsl:template>
<xsl:template match="infoarticle/section_sommaire"></xsl:template>
<xsl:template match="pagination/ppage"></xsl:template>
<xsl:template match="pagination/dpage"></xsl:template>
<xsl:template match="infoarticle/nbpage"></xsl:template>
<xsl:template match="infoarticle/nbpara"></xsl:template>
<xsl:template match="infoarticle/nbmot"></xsl:template>
<xsl:template match="infoarticle/nbfig"></xsl:template>
<xsl:template match="infoarticle/nbtabl"></xsl:template>
<xsl:template match="infoarticle/nbimage"></xsl:template>
<xsl:template match="infoarticle/nbaudio"></xsl:template>
<xsl:template match="infoarticle/nbvideo"></xsl:template>
<xsl:template match="infoarticle/nbrefbiblio"></xsl:template>
<xsl:template match="infoarticle/nbnote"></xsl:template>
<xsl:template match="ouvrage/titreouv"></xsl:template>
<xsl:template match="ouvrage/collection"></xsl:template>
<xsl:template match="ouvrage/idisbn"></xsl:template>
<xsl:template match="admin/droitsauteur"></xsl:template>
<xsl:template match="admin/diffnum"></xsl:template>
<xsl:template match="admin/prodnum"></xsl:template>
<xsl:template match="ouvrage/pub"></xsl:template>
<xsl:template match="ouvrage/pubnum"></xsl:template>
<xsl:template match="admin/editeur"></xsl:template>
<!-- Dummy -->
<xsl:template match="grauteur"><div align="center"><xsl:apply-templates/></div></xsl:template>
<xsl:template match="grauteur/auteur"><p align="center"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="grauteur/auteur/affiliation"><p align="center"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="grauteur/auteur/affiliation/alinea"><p align="center"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="auteur/nompers/prenom"><font color="red"><xsl:apply-templates/></font></xsl:template>
<xsl:template match="auteur/nompers/nomfamille"><font color="blue"><xsl:apply-templates/></font></xsl:template>
<xsl:template match="grtitre/titre"><font color="Green"><h1 align="center"><xsl:apply-templates/></h1></font></xsl:template>
<xsl:template match="grtitre/sstitre"><font color="#ff0066" size="1"><h1 align="center"><xsl:apply-templates/></h1></font></xsl:template>
<xsl:template match="section1/no"><font color="red" size="4"><h3 style="display:inline"><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section1/titre"><font color="red" size="4"><h3 style="display:inline"><xsl:text>[H1] </xsl:text><xsl:apply-templates/></h3></font><br/></xsl:template>
<xsl:template match="section2/no"><font color="blue" size="4"><h3><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section2/titre"><font color="blue" size="4"><h3><xsl:text>[H2] </xsl:text><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section3/no"><font color="green" size="4"><h3><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section3/titre"><font color="green" size="4"><h3><xsl:text>[H3] </xsl:text><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section4/no"><font color="800080" size="3"><h3><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="section4/titre"><font color="800080" size="3"><h3><xsl:text>[H4] </xsl:text><xsl:apply-templates/></h3></font></xsl:template>
<xsl:template match="para"><p dir="auto"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="marquage[@typemarq='italique']"><font color="red"><i><xsl:apply-templates/></i></font></xsl:template>
<xsl:template match="marquage[@typemarq='gras']"><b><xsl:apply-templates/></b></xsl:template>
<xsl:template match="marquage[@typemarq='petitecap']"><span style="font-variant:small-caps;background:#ffd699;"><xsl:apply-templates/></span></xsl:template>
<xsl:template match="marquage[@typemarq='souligne']"><span style="text-decoration: underline;"><xsl:apply-templates/></span></xsl:template>
<xsl:template match="exposant"><sup><span style="background:yellow;"><xsl:apply-templates/></span></sup></xsl:template>
<xsl:template match="indice"><font color="red"><sub><span style="background:yellow;"><xsl:apply-templates/></span></sub></font></xsl:template>
<xsl:template match="bloccitation"><blockquote style="background:#b3ffff;padding:0.5em;border:1px solid;color:#3399ff;"><font color="DarkRed"><xsl:apply-templates/></font></blockquote></xsl:template>
<xsl:template match="epigraphe"><blockquote style="background:#b3ffec;padding:0.5em;border:1px solid;color:#3399ff;"><font color="DarkRed"><xsl:apply-templates/></font></blockquote></xsl:template>
<xsl:template match="partiesann"><xsl:apply-templates/></xsl:template>
<xsl:template match="verbatim[@typeverb='programme']"><blockquote style="background:#c4c8cf;padding:0.5em;border:1px solid;color:#3399ff;"><font color="DarkRed" style="font-family:monospace"><xsl:apply-templates/></font></blockquote></xsl:template>
<xsl:template match="verbatim[@typeverb='programme']/bloc"><div><xsl:apply-templates/></div></xsl:template>
<xsl:template match="verbatim[@typeverb='programme']/bloc/ligne"><xsl:apply-templates/><br/></xsl:template>
<xsl:template match="math"><xsl:text>$</xsl:text><xsl:apply-templates/><xsl:text>$</xsl:text></xsl:template>

<!-- Table Start-->

<xsl:template match="tableau">
<div style="margin:auto;width:80%;border:2px solid;padding-left:2em;padding-right:10px;padding-top:10px;padding-bottom:10px;border-radius:15px;">
<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute><xsl:apply-templates/></div></xsl:template>
<xsl:template match="legende/titre"><p><font color="#e68a00" size="4"><xsl:apply-templates/></font></p></xsl:template>
<!--<xsl:template match="table"><table border="1" style='border-collapse: collapse;border-spacing: 0;' width="80%"><xsl:apply-templates/></table></xsl:template>-->
<xsl:template match="table">
<xsl:choose>
<xsl:when test="@frame='all'">
<!--<table border="1" style='border-collapse: collapse;border-spacing: 0;' width="80%"><xsl:apply-templates/></table>-->
<table border="1" cellspacing="0" width="80%"><xsl:apply-templates/></table>
</xsl:when>
<xsl:when test="@frame='topbot'">
<!--<table style='border-collapse: collapse;border-spacing: 0;border-bottom: 1px solid;border-top: 1px solid;' width="80%"><xsl:apply-templates/></table>-->
<table cellspacing="0" style='border-bottom: 1px solid;border-top: 1px solid;' width="80%"><xsl:apply-templates/></table>
</xsl:when>
<xsl:when test="@frame='top'">
<!--<table style='border-collapse: collapse;border-spacing: 0;border-top: 1px solid;' width="80%"><xsl:apply-templates/></table>-->
<table cellspacing="0" style='border-top: 1px solid;' width="80%"><xsl:apply-templates/></table>
</xsl:when>
<xsl:when test="@frame='sides'">
<!--<table style='border-collapse: collapse;border-spacing: 0;border-top: 1px solid;' width="80%"><xsl:apply-templates/></table>-->
<table cellspacing="0" style='border: 1px solid;' width="80%"><xsl:apply-templates/></table>
</xsl:when>
<xsl:when test="@frame='bottom'">
<!--<table style='border-collapse: collapse;border-spacing: 0;border-bottom: 1px solid;' width="80%"><xsl:apply-templates/></table>-->
<table cellspacing="0" style='border-bottom: 1px solid;' width="80%"><xsl:apply-templates/></table>
</xsl:when>
<xsl:otherwise>
<!--<table border="0" style='border-collapse: collapse;color: red;border-spacing: 0;' width="80%"><xsl:apply-templates/></table>-->
<table cellspacing="0" border="0" style='border-bottom: 1px solid;' width="80%"><xsl:apply-templates/></table>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template match="row"><tr><xsl:apply-templates/></tr></xsl:template>
<xsl:template match="thead/row/entry">
<xsl:choose>
<xsl:when test="@colsep='1' and @rowsep='1'" >
<th style='border-bottom: 1px solid;border-right: 1px solid;padding:6px;background:lightblue;mso-highlight:blue'><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><b><xsl:apply-templates/></b></th>
</xsl:when>
<xsl:when test="@colsep='1' and @rowsep='0'" >
<th style='border-right: 1px solid;padding:6px;background:lightblue;mso-highlight:yellow'><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><b><xsl:apply-templates/></b></th>
</xsl:when>
<xsl:when test="@colsep='0' and @rowsep='1'" >
<th style='border-bottom: 1px solid;padding:6px;background:lightblue;mso-highlight:red'><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><b><xsl:apply-templates/></b></th>
</xsl:when>
<xsl:otherwise>
<th style='padding:6px;background:lightblue;mso-highlight:yellow'><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><b><xsl:apply-templates/></b></th>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template match="tbody/row/entry">
<xsl:choose>
<xsl:when test="@colsep='1' and @rowsep='1'" >
<td style='border-bottom: 1px solid;border-right: 1px solid;padding:6px;' bgcolor="yellow"><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colsep='1' and @rowsep='0'" >
<td style='border-right: 1px solid;padding:6px;' bgcolor="yellow"><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colsep='0' and @rowsep='1'" >
<td style='border-bottom: 1px solid;padding:6px;' bgcolor="yellow"><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><xsl:apply-templates/></td></xsl:when>
<xsl:otherwise>
<td style='padding:6px;' bgcolor="yellow"><xsl:attribute name="valign"><xsl:value-of select="@valign" /></xsl:attribute><xsl:attribute name="align"><xsl:value-of select="@align" /></xsl:attribute><xsl:if test="@namest"><xsl:attribute name="colspan"><xsl:value-of select="substring(@nameend, 4)-substring(@namest, 4)+1"/></xsl:attribute></xsl:if><xsl:if test="@morerows"><xsl:attribute name="rowspan"><xsl:value-of select="number(@morerows)+1"/></xsl:attribute></xsl:if><xsl:apply-templates/></td>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="tbody/row/entry/alinea"><xsl:apply-templates/><br/></xsl:template>
<xsl:template match="thead/row/entry/alinea"><xsl:apply-templates/><br/></xsl:template>
<xsl:template match="tableau/objetmedia/image">
<div><p><img style="height: auto;width: auto;max-width:800px;max-height:800px;"><xsl:attribute name="src"><xsl:value-of select="@xlink:href"/></xsl:attribute><xsl:apply-templates/></img></p></div>
</xsl:template>
<xsl:template match="tableau/source"><p><font color="#009900" size="3"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="tableau/legende/alinea"><p><font color="DarkRed" size="3"><xsl:apply-templates/></font></p></xsl:template>

<!-- Table End-->

<xsl:template match="np"><font color="#004d99;" style="background-color:#ccffcc;"><b><xsl:text>[Page :</xsl:text><xsl:value-of select="@pagenum"/><xsl:text>]</xsl:text></b></font><xsl:apply-templates/></xsl:template>
<xsl:template match="refbiblio"><p style="text-align:left"><a><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute></a><xsl:apply-templates/></p>
</xsl:template>
<xsl:template match="refbiblio/no">
<font color="Green" style="font-family:monospace;background:#ffffcc"><xsl:apply-templates/></font><xsl:text> </xsl:text></xsl:template>
<xsl:template match="encadre">
<div style="margin-top:0.5em;margin-bottom:0.5em;border:2px solid orange;padding:0.5em;border-radius:10px;background:#ffe6e6"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute><xsl:apply-templates/></div>
</xsl:template>
<xsl:template match="exemple">
<div style="margin-top:0.5em;margin-bottom:0.5em;border:2px solid orange;padding:0.5em;border-radius:10px;"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute><xsl:apply-templates/></div>
</xsl:template>
<xsl:template match="grnote">
<div style="background:#f2f2f2"><xsl:apply-templates/></div>
</xsl:template>
<xsl:template match="note">
<p style="margin-left: 2em;text-indent: -1.75em;"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute><xsl:apply-templates/></p>
</xsl:template>
<xsl:template match="notetabl">
<p style="margin-left: 2em;text-indent: -1.75em;"><font color="#009999"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute><xsl:apply-templates/></font></p>
</xsl:template>
<xsl:template match="renvoi">
<sup><a style="text-decoration: underline">
<xsl:attribute name="href">#<xsl:value-of select="@idref"/></xsl:attribute>
<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
<span style="background:yellow;"><font size="3"><xsl:apply-templates/></font></span>
</a></sup>
</xsl:template>
<xsl:template match="note/no">
<a style="text-decoration: none">
<xsl:attribute name="id"><xsl:value-of select="../@id"/></xsl:attribute>
<xsl:attribute name="href">#re1<xsl:value-of select="../@id"/></xsl:attribute>
<font color="blue" style="background:yellow"><xsl:apply-templates/></font></a><xsl:text>&#x2003;</xsl:text></xsl:template>
<xsl:template match="notetabl/no">
<a style="text-decoration: none">
<xsl:attribute name="id"><xsl:value-of select="../@id"/></xsl:attribute>
<xsl:attribute name="href">#re1<xsl:value-of select="../@id"/></xsl:attribute>
<font color="blue" style="background:yellow"><xsl:apply-templates/></font></a><xsl:text>&#x2003;</xsl:text></xsl:template>

<!-- Figure Start-->

<xsl:template match="figure/legende/titre">
<p><font color="#e68a00" size="4"><xsl:apply-templates/></font></p>
</xsl:template>

<xsl:template match="figure/legende/titre">
<p><font color="#e68a00" size="4"><xsl:apply-templates/></font></p>
</xsl:template>

<xsl:template match="figure/source">
<p><font color="#009900"><xsl:apply-templates/></font></p>
</xsl:template>

<xsl:template match="figure/legende/alinea">
<p><font color="#009900"><xsl:apply-templates/></font></p>
</xsl:template>

<xsl:template match="objetmedia/image">
<img style="width:80%">
    <xsl:attribute name="src">
        <xsl:value-of select="@xlink:href"/>
    </xsl:attribute>
</img>
</xsl:template>

<xsl:template match="figure">
<div style="margin:auto;width:60%;border:2px solid;padding-left:2em;padding-right:10px;padding-top:10px;padding-bottom:10px;border-radius:15px;">
<xsl:apply-templates/>
</div>
</xsl:template>


<!-- Figure End-->

<!-- List Start-->

<xsl:template match="listenonord">
<xsl:for-each select=".">
<xsl:choose>
<xsl:when test="@signe='disque'">
<div style="background:#f0f0f5;">
<ul type="disc" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ul>
</div>
</xsl:when>
<xsl:when test="@signe='cercle'">
<div style="background:#f0f0f5;">
<ul type="circle" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ul>
</div>
</xsl:when>
<xsl:when test="@signe='carre'">
<div style="background:#f0f0f5;">
<ul type="square" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ul>
</div>
</xsl:when>
<xsl:when test="@signe='tiret'">
<div style="background:#f0f0f5;">
<ul style="list-style-type:none;color:#008000;">
<xsl:for-each select="elemliste">
<li><p><xsl:text>&#x2013; </xsl:text><xsl:apply-templates/></p></li>
</xsl:for-each>
</ul>
</div>
</xsl:when>
<xsl:when test="@signe='nul'">
<div style="background:#f0f0f5;">
<ul style="list-style-type:none;color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ul>
</div>
</xsl:when>
<xsl:otherwise><li><xsl:apply-templates/></li></xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:template>
<xsl:template match="listeord">
<xsl:for-each select=".">
<xsl:choose>
<xsl:when test="@numeration='decimal'">
<div style="background:#f0f0f5;">
<ol type="1" style="color:#008000;">
<xsl:if test="@compteur">
<xsl:attribute name="start">
<xsl:value-of select="@compteur" />
</xsl:attribute>
</xsl:if>
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:when>
<xsl:when test="@numeration='lettremin'">
<div style="background:#f0f0f5;">
<ol type="a" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:when>
<xsl:when test="@numeration='lettremaj'">
<div style="background:#f0f0f5;">
<ol type="A" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:when>
<xsl:when test="@numeration='romainmin'">
<div style="background:#f0f0f5;">
<ol type="i" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:when>
<xsl:when test="@numeration='romainmaj'">
<div style="background:#f0f0f5;">
<ol type="I" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:when>
<xsl:otherwise>
<div style="background:#f0f0f5;">
<ol type="1" style="color:#008000;">
<xsl:for-each select="elemliste">
<li><xsl:apply-templates/></li>
</xsl:for-each>
</ol>
</div>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:template>

<!-- List END-->

<xsl:template match="encadre/alinea"><p><font color="DarkRed"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="exemple/legende"><p><font color="blue"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="exemple/legende/titre"><p><font color="blue"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="exemple/legende/alinea"><p><font color="blue"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="exemple/alinea"><p><font color="DarkRed"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="bloccitation/alinea"><p><font color="DarkRed"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="epigraphe/alinea"><p><font color="DarkRed"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="liensimple"><font color="blue"><a style="text-decoration:underline;"><xsl:apply-templates/></a></font></xsl:template>
<xsl:template match="alinea/objetmedia/image">
<img style="height: auto;width: auto;max-width:800px;max-height:800px;"><xsl:attribute name="src"><xsl:value-of select="@xlink:href"/></xsl:attribute><xsl:apply-templates/></img>
</xsl:template>
<!--<xsl:template match="elemliste/alinea[2]"><p style="text-indent: 0.0em;"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="elemliste/alinea[3]"><p style="text-indent: 0.0em;"><xsl:apply-templates/></p></xsl:template>-->
<xsl:template match="elemliste/alinea[2]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[3]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[4]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[5]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[6]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[7]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[8]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[9]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="elemliste/alinea[10]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="note/alinea[2]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="note/alinea[3]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="note/alinea[4]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="notetabl/alinea[2]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="notetabl/alinea[3]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="notetabl/alinea[4]"><br/><xsl:apply-templates/></xsl:template>
<xsl:template match="resume"><blockquote style="background:#ffe6ff;padding:0.5em;border:1px solid;color:#3399ff;"><xsl:apply-templates/></blockquote></xsl:template>
<xsl:template match="resume/titre"><h4><font color="blue"><xsl:apply-templates/></font></h4></xsl:template>
<xsl:template match="resume/alinea"><xsl:apply-templates/><br/></xsl:template>
<xsl:template match="grmotcle"><blockquote style="background:#d1e0e0;padding:0.5em;border:1px solid;color:#3399ff;"><xsl:apply-templates/></blockquote></xsl:template>
<xsl:template match="grmotcle/titre"><h4 align="center"><font color="blue"><xsl:apply-templates/></font></h4></xsl:template>
<xsl:template match="grmotcle/motcle"><span align="center"><xsl:apply-templates/><br/></span></xsl:template>

<xsl:template match="equation/objetmedia/image"><img style="height: auto;width: auto;max-width:800px;max-height:800px;"><xsl:attribute name="src"><xsl:value-of select="@xlink:href"/></xsl:attribute><xsl:apply-templates/></img></xsl:template>
<xsl:template match="ligne"><p style="margin: 0em 1em 0em 1em;"><xsl:apply-templates/></p></xsl:template>
<xsl:template match="divbiblio/titre"><font color="Green" size="4"><h4><xsl:apply-templates/></h4></font></xsl:template>
<xsl:template match="biblio/titre"><font color="Red" size="4"><h3><xsl:apply-templates/></h3></font></xsl:template>

<xsl:template match="verbatim">
<xsl:choose>
<xsl:when test="@typeverb='poeme'">
<div style="background:#87CEEB;padding:0.5em;border:5px dotted green;border-radius:15px; margin: .5em 3em .5em 3em;"><xsl:apply-templates/></div>
</xsl:when>
<xsl:otherwise>
<div style="background:LightGray;padding:0.5em;border:5px dashed blue; border-radius:15px;margin: .5em 3em .5em 3em;;"><xsl:apply-templates/></div>
</xsl:otherwise>
</xsl:choose>
</xsl:template>


</xsl:stylesheet>

