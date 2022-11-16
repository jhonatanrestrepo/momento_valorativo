<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/bib">
        <html>
            <head>
                <!-- CSS only -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
            </head>
            <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

                <!-- No encontre como usarlo en un atributo no funciona-->
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="portada"/>
                    </xsl:attribute>
                </img>

                <xsl:for-each select="libro">
                        <ul>
                            <li style="color:blue"> Libro </li>
                            <li ><xsl:value-of select="titulo"/></li>
                            <li style="color:gray"><xsl:value-of select="autor"/></li>
                            <li style="color:gray"><xsl:value-of select="editorial"/></li>
                            <li style="color:gray"><xsl:value-of select="precio"/></li>
                        </ul>


                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>