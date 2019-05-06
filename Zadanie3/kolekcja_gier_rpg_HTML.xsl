<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
                doctype-System_gry="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
			<head>
                <title>Kolekcja gier rpg</title>
            </head>
		
		<body style="background-color:#d1e2ff">
			<table border="2" bgcolor="#6fa3f7" align="center" style="text-align:center">
				<caption><b>Systemy gry</b></caption>
				<tr>
					<th>Nazwa</th>
					<th>Gatunek</th>
					<th>Popularność</th>
					<th>Format</th>
					<th>Podręczniki</th>
				</tr>				
				
				<xsl:for-each select="Zestawienie_gier_rpg/Posortowane_System_gryy_według_popularności/System_gry">
					<tr>
						<td><xsl:value-of select="@nazwa"/></td>
						<td><xsl:value-of select="@Gatunek"/></td>
						<td><xsl:value-of select="@Popularność"/></td>
						<td><xsl:value-of select="@Format"/></td>
						<td><xsl:value-of select="Podręczniki"/>
							<table>
							
								<tr>
									<th>Tytuł</th>
									<th>Tytuł oryginalny</th>
								</tr>
								<xsl:for-each select="Zestawienie_gier_rpg/Posortowane_System_gryy_według_popularności/System_gry">
								<tr>
									<td><xsl:value-of select="@Tytuł"/></td>
									<td><xsl:value-of select="@Tytuł_oryginalny"/></td>
								</tr>
								</xsl:for-each>
							</table>
						</td>
					</tr>
				</xsl:for-each>
				
				
			</table>
			
			<table border="6" style="text-align:center" width="100%">
                    <caption><b>Podsumowanie kolekcji</b></caption>
                    <tr>
                        <th>Liczba systemów gry</th>
                        <th>liczba gier akcji</th>
                        <th>Liczba gier dark fantasy</th>
                        <th>Liczba gier detektywistycznych</th>
                        <th>Liczba gier fantasy</th>
                        <th>Liczba gier z wydawnictwa Kuźnia Gier</th>
                        <th>Liczba gier z wydawnictwa Rebel</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_System_gryów_gry"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_akcji"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_dark_fantasy"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_detektywistycznych"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_fantasy"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_z_wydawnictwa_Kuźnia_Gier"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_z_wydawnictwa_Rebel"/></td>
                    </tr>
						
					<tr>
                        <th>Vat od wszystkich podręczników</th>
                        <th>Średnia cena za podręcznik</th>
                        <th>Średnia cena za podstawkę</th>
                        <th>Średnia cena za bestiariusz</th>
                        <th>Średnia cena za kampanię</th>
                        <th>Średnia cena za przygodę</th>
                        <th>Średnia cena za rozszerzenie</th>
                    </tr>
					
					<tr>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/VAT_od_wszystkich_podręczników"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podręcznik"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podstawkę"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_bestiariusz"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_kampanię"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_przygodę"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_rozszerzenie"/></td>
					</tr>
					
                </table>			
			
		</body>
		
		</html>
    </xsl:template>
</xsl:stylesheet>