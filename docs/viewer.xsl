<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/Viewer">
	<html>
		<head>

			<link rel="stylesheet" href="/static/css/bootstrap.min.css" media="screen" type="text/css" />
			<link rel="stylesheet" href="/static/css/report.css" media="all" type="text/css" />

			<script type="text/javascript" src="/static/js/jquery-1.3.2.min.js"></script>
			<script type="text/javascript" src="/static/js/report-app.js"></script>
			<title>Samal Report  <xsl:value-of select="Report/@reportname" /></title>
		</head>
		<body>
		<div id="dpi"></div>
			<div id="toolbar">
				<nav class="btn-group" style="float:right;">
					<a class="btn right" onclick="ZoomOut();" href="#"><i class="icon-zoom-out"></i></a>
					<a class="btn right" onclick="FitSize(this);" href="#"><i class="icon-fullscreen"></i></a>
					<a class="btn right" onclick="ZoomIn();" href="#"><i class="icon-zoom-in"></i></a>
				</nav>
				<nav class="btn-group" style="float:left">
					<a class="btn left" onclick="window.location.reload()" href="#"><i class="icon-refresh"></i></a>
					<a class="btn left" onclick="window.open(window.location.href);" href="#"><i class="icon-file"></i></a>
					<a class="btn left" onclick="print();" href="#"><i class="icon-print"></i> Print</a>
				</nav>
			</div>


			<xsl:apply-templates select="*"></xsl:apply-templates>
			<div class="space" ></div>

		</body>
	</html>
</xsl:template>
</xsl:stylesheet>