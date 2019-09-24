<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:g="http://base.google.com/ns/1.0"
                xmlns:php="http://php.net/xsl" version="1.0" exclude-result-prefixes="php">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="baseURL">
        <xsl:text>http://magento2.test/</xsl:text>
    </xsl:variable>
    <xsl:variable name="mediabaseURL">
        <xsl:value-of select="concat($baseURL, 'media/catalog/product/')"/>
    </xsl:variable>
    <xsl:variable name="currency">
        <xsl:text>EUR</xsl:text>
    </xsl:variable>
    <xsl:template match="Items">
        <xsl:element name="rss" xml:lang="g" namespace="http://magento2.test/">
            <xsl:attribute name="version">2.0</xsl:attribute>
            <xsl:element name="channel">
                <xsl:element name="title">Title</xsl:element>
                <xsl:element name="link">
                    <xsl:value-of select="$baseURL"/>
                </xsl:element>
                <xsl:for-each select="item">
                    <xsl:element name="Item">
                        <g:id>
                            <xsl:value-of select="sku"/>
                        </g:id>
                        <g:title>
                            <xsl:value-of select="name"/>
                        </g:title>
                        <g:description>
<!--                            <xsl:value-of select="php:function('html_entity_decode',string(description))" />-->
                            <xsl:value-of select="description" />
                        </g:description>
                        <g:google_product_category>
                            <xsl:variable name="newtext" select="translate(categories,'\','>')"/>
                            <xsl:value-of select="$newtext"/>
                        </g:google_product_category>
                        <g:link>
                            <xsl:value-of select="concat($baseURL, url_key)"/>
                        </g:link>
                        <g:image_link>
                            <xsl:value-of select="concat($mediabaseURL,base_image)"/>
                        </g:image_link>
                        <xsl:call-template name="split">
                            <xsl:with-param name="list" select="additional_images"/>
                            <xsl:with-param name="separator" select="','"/>
                        </xsl:call-template>
                        <g:availability>
                            <xsl:choose>
                                <xsl:when test="is_in_stock = 1">
                                    <xsl:text>in stock</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>out of stock</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </g:availability>
                        <g:price>
                            <xsl:value-of select="concat(price, ' ', $currency)"/>
                        </g:price>
                        <xsl:if test="special_price > 0">
                            <xsl:element name="g:sale_price">
                                <xsl:value-of select="concat(special_price, ' ', $currency)"/>
                            </xsl:element>
                        </xsl:if>
                        <g:brand>
                            <xsl:value-of select="manufacturer"/>
                        </g:brand>
                        <xsl:if test="color != ''">
                            <g:color>
                                <xsl:value-of select="color"/>
                            </g:color>
                        </xsl:if>

                        <g:size>
                            <xsl:value-of select="size"/>
                        </g:size>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template name="split">
        <xsl:param name="list" select="''"/>
        <xsl:param name="separator" select="','"/>

        <xsl:if test="not($list = '' or $separator = '')">
            <xsl:variable name="head" select="substring-before($list, $separator)"/>
            <xsl:variable name="tail" select="substring-after($list, $separator)"/>
            <xsl:if test="not($head = '')">
                <g:additional_image_link>
                    <xsl:value-of select="concat($mediabaseURL,$head)"/>
                </g:additional_image_link>
            </xsl:if>
            <xsl:if test="not($tail = '')">
                <g:additional_image_link>
                    <xsl:value-of select="concat($mediabaseURL,$tail)"/>
                </g:additional_image_link>
            </xsl:if>
            <xsl:call-template name="split">
                <xsl:with-param name="list" select="$tail"/>
                <xsl:with-param name="separator" select="$separator"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>