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
</head>
	<body>
		<!-- Wrapper -->
		<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<div class="inner">
    				<!-- Header -->
                    <@renderComponent component = contentModel.header.item />
                    <!-- Content -->
                      <section>
                        <header class="main" <@studio.iceAttr iceGroup="subject"/>>
                          <h1>${contentModel.subject!""}</h1>
                          <h2>by ${contentModel.author!""}</h2>
                        </header>
                        <#if contentModel.image??>
                          <#assign image = contentModel.image/>
                        <#else>
                          <#assign image = "/static-assets/images/placeholder.png"/>
                        </#if>
                        <span class="image main"><img src="${image}" alt="" /></span>
                        <#list contentModel.entries.item as item>
                          <div <@studio.iceAttr iceGroup="blog"/>>
                            ${item.entry_html}
                          </div>
                          <hr class="major" />
                        </#list>
                      </section>
			    </div>
		    </div>
		</div>
		<h1>CONTENT HERE</h1>
	<@studio.toolSupport/>
	</body>
</html>