<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>

		<title>pageDemo1</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="/static-assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/main.css?v=${siteContext.siteName}" />
		<!--[if lte IE 9]><link rel="stylesheet" href="/static-assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/static-assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/jquery-ui.min.css" />
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<@renderComponent component=contentModel.header_o.item />
							<section id="header " <@studio.iceAttr iceGroup="header1"/>>
							    <div class="content">
							        <h1>${contentModel.header_title_s}</h1>
							        <p>${contentModel.header_content_html}</p>
							    </div>
							</section>
							
							

                            <!-- Feature Demo -->
							<section <@studio.iceAttr iceGroup="features"/>>
									<header class="major">
										<h2>${contentModel.featureTitle_s}</h2>
									</header>
									<div class="features" <@studio.componentContainerAttr target="features_o" component=contentModel/>>
										<#if contentModel.features_o?? && contentModel.features_o.item??>
										  <#list contentModel.features_o.item as feature>
										      <@renderComponent component=feature />
										  </#list>
										</#if>
									</div>
							</section>
							
						</div>
					</div>



			</div>

		<!-- Scripts -->
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
			<script name="testAPI">
            $(document).ready(function(){
                $.ajax({url: "https://reqres.in/api/users?page=2", success: function(result){
                  $("#div1").html(result);
                  console.log(result)
                }});
            });
        </script>

		<@studio.toolSupport/>
	</body>
</html>
