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
					
					<h1>${contentModel.pageTitle_s}</h1>

					<!--About Our Organization-->
					<section id="aboutOurOrganization" <@studio.iceAttr iceGroup="hero1"/>>
						<div class="aboutOurOrganization">
							<h2>${contentModel.hero_title_1_html}</h2>
							${contentModel.hero_text_1_html}
						</div>
						<span class="image object">
							<img src="${contentModel.heroImage_1_s !""}" alt="" />
						</span>
					</section>
								
					<!--Our Services-->
					<section id="ourServices" <@studio.iceAttr iceGroup="hero2"/>>
    					<div class="ourServices">
    						<h2>${contentModel.hero_title_2_html}</h2>
    						${contentModel.hero_text_2_html}
    					</div>
					</section>
					
					<!-- News and Media -->
					<div class="newsAndMedia" <@studio.componentContainerAttr target="search_o" component=contentModel/>>
					<h1>yes/no</h1>
                        <#if contentModel.search_o?? && contentModel.search_o.item??>
                            <#list contentModel.search_o.item as feature>
                            <h1>yes</h1>
                                <@renderComponent component=feature />
                            </#list>
						</#if>
					</div>
					
					
					<!-- Section -->
					<section>
						<header class="main">
							<h1>Search Results</h1>
							<h3>Refine by</h3>
						</header>
						
                        <form id="categories">
							<div class="row uniform">
								<#list categories as category>
									<div class="3u 6u(medium) 12u$(small)">
										<input type="checkbox" id="${category.key}" name="${category.key}" value="${category.key}">
										<label for="${category.key}">${category.value}</label>
							        </div>
								</#list>
							</div>
						</form>
						<hr class="major"/>
						<div id="search-results">
						</div>
					</section>
					
					<!-- Contact Us -->
					<section <@studio.iceAttr iceGroup="contactus"/>>
						<div class="contactus" <@studio.componentContainerAttr target="contact_us_o" component=contentModel/>>
                            <#if contentModel.contact_us_o?? && contentModel.contact_us_o.item??>
                                <#list contentModel.contact_us_o.item as feature>
                                    <@renderComponent component=feature />
                                </#list>
							</#if>
						</div>
					</section>
					
			    </div>
		    </div>
				<!-- Left Rail -->
				<@renderComponent component=contentModel.left\-rail_o.item />

			</div>
			
			
		<!-- Search Templates -->
		<script id="search-results-template" type="text/x-handlebars-template">
			{{#each results}}
			<div>
				<h4><a href="{{url}}">{{title}}</a></h4>
				{{#if highlight}}
				<p>{{{highlight}}}</p>
				{{/if}}
			</div>
			{{else}}
			<p>No results found</p>
			{{/each}}
		</script>	

		<!-- Scripts -->
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
						<script src="/static-assets/js/search.js"></script>

		<@studio.toolSupport/>
	</body>
</html>