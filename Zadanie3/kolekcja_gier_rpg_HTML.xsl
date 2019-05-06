<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
                doctype-System_gry="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
			<head>
                <title>Kolekcja gier rpg</title>
				<style>
                    th, td {
                        border:             1px solid #777;
                        background-color:   #3C2F2F;
                        box-shadow:         0 0 0.5em 0 #6C5F5F inset;
                    }
                    table {
                        padding:            0 7em 0 7em;
                        text-align:         center;
                        width:              100%;
                    }
                    table + table {
                        margin-top:         2em;
                    }
                    body {
                        margin:             2em;
                        background-color:   #150A03;
                        color:              #D9DED0;
                    }
                    caption {
                        letter-spacing:     0.5vw;
                        font-weight:        bold;
                        font-size:          large;
                    }
                </style>
            </head>
		
		<body>
			<table>
			<caption>System_gry</caption>
			<tr>
				<th>Nazwa</th>
			</tr>
			<xsl:for-each select="Posortowane_System_gry_według_popularności/System_gry">
                        <tr>
                            <td><xsl:value-of select="@nazwa"/></td>
                        </tr>
                    </xsl:for-each>
			</table>
		</body>
		
		</html>
    </xsl:template>
</xsl:stylesheet>