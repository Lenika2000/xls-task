<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Задание xsl</title>
                <link rel="stylesheet" href="styles.css"/>
                <link rel="icon" type="image/x-icon" href="favicon.ico"/>
            </head>
            <body>
                <h1 class="title">Маньшина Елена Витальевна, P4108</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="задание-1">
        <h2 class="task-title">Задание 1</h2>
        <math xmlns="http://www.w3.org/1998/Math/MathML" class="task">
            <xsl:apply-templates/>
        </math>
    </xsl:template>

    <xsl:template match="задание-2">
        <h2 class="task-title">Задание 2</h2>
        <div class="task">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <!--    Math ML-->
    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates/>
        </msqrt>
    </xsl:template>

    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates/>
        </mfrac>
    </xsl:template>

    <xsl:template match="низверх">
        <munderover>
            <xsl:apply-templates/>
        </munderover>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates/>
        </msup>
    </xsl:template>

    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates/>
        </msub>
    </xsl:template>

    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates/>
        </mrow>
    </xsl:template>

    <xsl:template match="операнд">
        <mi>
            <xsl:value-of select="."/>
        </mi>
    </xsl:template>

    <xsl:template match="оператор">
        <mo>
            <xsl:value-of select="."/>
        </mo>
    </xsl:template>

    <xsl:template match="число">
        <mn>
            <xsl:value-of select="."/>
        </mn>
    </xsl:template>

    <!--    SVG-->
    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
            <xsl:apply-templates/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}"
                 rx="{@rx}" ry="{@ry}"/>
    </xsl:template>

</xsl:stylesheet>
