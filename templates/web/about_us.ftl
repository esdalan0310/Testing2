<#import "/templates/system/common/cstudio-support.ftl" as studio />
<html lang="zh-Hant-HK">
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=no">
	<title>Yo Club</title>
		<!--[if lte IE 8]><script src="/static-assets/js/ie/html5shiv.js"></script><![endif]-->
		<!--<link rel="stylesheet" href="/static-assets/css/main.css?v=${siteContext.siteName}" />-->
				<link rel="stylesheet" href="/static-assets/css/main.css" />
		<!--[if lte IE 9]>< link rel="stylesheet" href="/static-assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/static-assets/css/ie8.css" /><![endif]-->
	<link rel="stylesheet" href="/static-assets/css/jquery-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="/static-assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/static-assets/css/icons.css">
  	<link rel="stylesheet" type="text/css" href="/static-assets/css/main.css">
  	  	<link rel="stylesheet" type="text/css" href="/static-assets/css/demo/main.css">

</head>
	<body>
		<!-- Wrapper -->
		<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<div class="inner">
					<!-- Header -->
					<@renderComponent component=contentModel.header_o.item />
					
					<h1>${contentModel.}</h1>

					<!--About Our Organization-->
					<section id="aboutOurOrganization" <@studio.iceAttr iceGroup="hero1"/>>
						<div class="content">
							<header>${contentModel.hero_title_1_html}</header>
							${contentModel.hero_text_1_html}
						</div>
						<span class="image object">
							<img src="${contentModel.hero_image_s !""}" alt="" />
						</span>
					</section>
								
					<!--Our Services-->
					<section id="ourServices" <@studio.iceAttr iceGroup="hero2"/>>
    					<div class="content">
    						<header>${contentModel.hero_title_2_html}</header>
    						${contentModel.hero_text_2_html}
    					</div>
					</section>
					
			    </div>
		    </div>
		</div>
	<@studio.toolSupport/>
	</body>
</html>