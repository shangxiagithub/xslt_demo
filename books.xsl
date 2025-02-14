<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- 定义输出格式为 HTML -->
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- 匹配根节点 -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Bookstore</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Price</th>
                    </tr>
                    <!-- 调用匹配 book 元素的模板 -->
                    <xsl:apply-templates select="bookstore/book"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- 匹配 book 元素 -->
    <xsl:template match="book">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="year"/></td>
            <td><xsl:value-of select="price"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>