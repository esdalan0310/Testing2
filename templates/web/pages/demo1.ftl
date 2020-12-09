<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/web/navigation2/breadcrumb.ftl" as breadcrumb>
<!DOCTYPE html>
<html lang="zh-Hant-HK">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=no">
	<title>Yo Club</title>
		<!--[if lte IE 8]><script src="/static-assets/js/ie/html5shiv.js"></script><![endif]-->
	<!--	<link rel="stylesheet" href="/static-assets/css/main.css?v=${siteContext.siteName}" />-->
		<link rel="stylesheet" href="/static-assets/css/main.css" />
		<!--[if lte IE 9]>< link rel="stylesheet" href="/static-assets/ css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/static-assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/jquery-ui.min.css" />
	
	<link rel="stylesheet" type="text/css" href="/static-assets/css/demo/bootstrap.css">
	<!--<link rel="stylesheet" type="text/css" href="/static-assets/css/demo/icons.css">-->
  	<link rel="stylesheet" type="text/css" href="/static-assets/css/demo/main.css">
</head>
    <body>
    <header>
		<@renderComponent component=contentModel.header_o.item />
    </header>
    	<div id="">
    		    <!-- Left Rail -->


    <main>

<@breadcrumb.renderBreadcrumb contentModel.storeUrl "/site/website/articles" />


	    <div class="container">
	        <section <@studio.iceAttr iceGroup="features"/>>
    			<div class="features" <@studio.componentContainerAttr target="features_o" component=contentModel/>>
				    <#if contentModel.features_o?? && contentModel.features_o.item??>
    				    <#list contentModel.features_o.item as feature>
				          <@renderComponent component=feature />
			    	    </#list>
		    		</#if>
	    		</div>
    		</section>
    		
    		
        </script>
		</div>
		
	</main>

</div>

<!--</div>-->

	<footer>
		<div class="container">
			<div class="footer-left">
				&copy; Copyright Lorem Ipsum 2020 12312321
			</div>
			<div class="footer-right">
				<ul class="footer-list">
					<li><a href="">Data Privacy Policy</a></li>
					<li><a href="">Disclaimer</a></li>
				</ul>
			</div>
		</div>	
	</footer>
		
	<!--<script src="js/jquery.min.js"></script>	-->
	<!--<script src="/static-assets/js/bootstrap.min.js"></script>-->
		<!-- Scripts -->
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<!--<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>-->
			<script src="/static-assets/js/main.js"></script>


	</body>
</html>

<@studio.toolSupport />