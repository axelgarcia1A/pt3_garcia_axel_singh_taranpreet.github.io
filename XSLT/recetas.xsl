<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="receptes/recepta">
            <html>
                <head>
                    <meta charset="UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <title>Delicias Kitchen - <xsl:value-of select="nom_recepta" /></title>
                    <link rel="stylesheet" href="../Style/CSS.css" />
                    <link rel="icon" href="https://i.postimg.cc/fTTYmXGh/logo-delicias.jpg" />
                    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&amp;display=swap" rel="stylesheet" />
                </head>
                <body>
                    <div class="menu">
                        <img src="https://r2.fivemanage.com/pub/rm885j78cjgl.png" />
                        <hr class="lineascabezera" />
                        <ul>
                            <li class="arriba">
                                <a href="../code/Main.html" class="cabezera">INICIO</a>
                            </li>
                            <li class="arriba">
                                <a href="../code/AboutMe.html" class="cabezera">SOBRE MI</a>
                            </li>
                            <li class="arriba">
                                <a href="../code/recipes1.html" class="cabezera">RECETAS</a>
                            </li>
                            <li class="arriba">
                                <a href="../code/contact.html" class="cabezera">CONTACTO</a>
                            </li>
                            <li class="arriba">
                                <a href="../code/anotherthings.html" class="cabezera">OTRAS COSAS</a>
                            </li>
                        </ul>
                        <hr class="lineascabezera" />
                    </div>
                    <br />
                    <div class="divrecetas">
                        <p class="tituloverde">
                            <xsl:value-of select="receptes/recepta/nom_recepta"/>
                        </p>
                        <p>
                        Receta realizada por 
                            <span class="spantexto"> 
                                <xsl:value-of select="autor/nom_persona"/>
                            </span>
                        </p>
                        <div class="flex-container">
                            <!-- Usamos xsl:attribute para establecer el atributo src -->
                            <xsl:element name="img">
                                <xsl:attribute name="class">flex-image</xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="imatge" />
                                </xsl:attribute>
                                <xsl:attribute name="alt">Imagen de la receta</xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="divdescripcion">
                            <p class="descripcion">
                                <xsl:value-of select="descripcio" />
                            </p>
                        </div>
                        <p class="subtitulo">Ingredientes</p>
                        <div class="divingredientes">
                            <ol type="1">
                                <xsl:for-each select="ingredients/ingredient">
                                    <li class="listaingredientes">
                                        <xsl:value-of select="quantitat/valor" /> <xsl:value-of select="quantitat/mesura" /> de <xsl:value-of select="nom" />
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </div>
                        <p class="subtitulo">Pasos</p>
                        <div class="divpasos">
                            <ol type="1">
                                <xsl:for-each select="passos/pas">
                                    <li class="pasos">
                                        <xsl:value-of select="." />
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </div>
                    </div>
                    <div class="divvolver">
                        <a href="../code/recipes1.html" class="avolver">Volver</a>
                    </div>
                    <div class="recuadronegro">
                        <ul>
                            <li class="abajo">
                                <a href="https://www.facebook.com/?locale=ca_ES" class="pie">FACEBOOK</a>
                            </li>
                            <li class="abajo">
                                <a href="https://x.com/?lang=ca" class="pie">TWITTER</a>
                            </li>
                            <li class="abajo">
                                <a href="https://www.instagram.com" class="pie">INSTAGRAM</a>
                            </li>
                            <li class="abajo">
                                <a href="https://es.pinterest.com" class="pie">PINTEREST</a>
                            </li>
                            <li class="abajo">
                                <a href="https://mail.google.com/mail/u/0/#inbox" class="pie">EMAIL</a>
                            </li>
                            <li class="abajo">
                                <a href="../XSLT/recetas.xml" class="pie">RSS</a>
                            </li>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
    