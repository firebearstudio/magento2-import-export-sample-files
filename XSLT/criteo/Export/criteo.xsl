<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:g="http://base.google.com/ns/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="Items">
       <xsl:element name="rss" xml:lang="g" namespace="http://www.yoursite.com/us/">
           <xsl:attribute name="version">2.0</xsl:attribute>
        <xsl:element name="channel">
            <xsl:element name="title">Title</xsl:element>
            <xsl:element name="link">http://www.yoursite.com/us/</xsl:element>
            <xsl:for-each select="item">
            <xsl:element name="Item">
                <g:id><xsl:value-of select="sku"/></g:id>
                <g:title><xsl:value-of select="name"/></g:title>
                <g:google_product_category>
                    <xsl:variable name="newtext" select="translate(categories,'\','>')"/>
                    <xsl:value-of select="$newtext"/>
                </g:google_product_category>
                <g:link>
                    <xsl:value-of select="url_key"/>
                </g:link>
                <g:image_link>
                    <xsl:value-of select="image"/>
                </g:image_link>
                <xsl:call-template name="split">
                    <xsl:with-param name="list"      select="additional_images" />
                    <xsl:with-param name="separator" select="','" />
                </xsl:call-template>
                <g:availability>
                    <xsl:choose>
                        <xsl:when test="is_in_stock = 1">
                            <xsl:text>in stock</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>in not stock</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </g:availability>
                <g:price>
                    <xsl:value-of select="price"/>
                    <xsl:text> EUR</xsl:text>
                </g:price>
                <g:brand>
                    <xsl:value-of select="manufacturer"/>
                </g:brand>
                <g:color>
                    <xsl:value-of select="color"/>
                </g:color>
                <g:size>
                    <xsl:value-of select="size"/>
                </g:size>
            </xsl:element>
            </xsl:for-each>
        </xsl:element>
       </xsl:element>
    </xsl:template>

    <xsl:template name="split">
        <xsl:param name="list"      select="''" />
        <xsl:param name="separator" select="','" />

        <xsl:if test="not($list = '' or $separator = '')">
            <xsl:variable name="head" select="substring-before($list, $separator)" />
            <xsl:variable name="tail" select="substring-after($list, $separator)" />
            <xsl:if test="not($head = '')">
             <g:additional_image_link>
                 <xsl:value-of select="$head"/>
             </g:additional_image_link>
            </xsl:if>
        <xsl:if test="not($tail = '')">
            <g:additional_image_link>
                <xsl:value-of select="$tail"/>
            </g:additional_image_link>
        </xsl:if>
            <xsl:call-template name="split">
                <xsl:with-param name="list"      select="$tail" />
                <xsl:with-param name="separator" select="$separator" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>