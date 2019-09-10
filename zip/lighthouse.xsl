<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="//title"/>
                </title>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//title"/>
                    </h1>
                    <h2>Chapter <xsl:value-of select="//chapter/head"/>
                    </h2>
                </header>
                <xsl:apply-templates select="//chapter/p"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="//s">
        <br/><xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>



<!--<xsl:template match="/">
        <html>
            <body>
                <h1>
                    <xsl:value-of select="//title"/>
                </h1>
                <h2>Chapter <xsl:value-of select="//head"/>
                </h2>
                <p>
                    <xsl:value-of select="//p"/>

                </p>
            </body>
        </html>
    </xsl:template>-->