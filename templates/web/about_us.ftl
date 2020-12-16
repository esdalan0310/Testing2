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
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
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
					<section>
						<header class="main">
							<h2>News & Media</h2>
							<!--<h3>Refine By Year</h3>-->
						</header>
						
                        <form id="years">
                            <div class="row uniform">
                                <div class="3u 6u(medium) 12u$(small)">
                                    <input type="checkbox" id="2019" name="2019" value="2019">
                                    <label for="2019">2019</label>
                                </div>
                                <div class="3u 6u(medium) 12u$(small)">
                                    <input type="checkbox" id="2020" name="2020" value="2020">
                                    <label for="2020">2020</label>
                                </div>
                                <div class="3u 6u(medium) 12u$(small)">
                                    <input type="checkbox" id="2021" name="2021" value="2021">
                                    <label for="2021">2021</label>
                                </div>
                            </div>
                        </form>
						<hr class="major"/>
						<div id="search-results">
						</div>
					</section>
					
                    <section>
                     <button id = "btnTest">test</button>
                     <br/> <br/>
                     <div id = "testDiv"> </div>
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
				{{#if image}}
					<image src="{{{image}}}" style="width: 30%; height: auto;" />
				{{/if}}
				{{#if category}}
					<h3>{{{category}}}</h3>
				{{/if}}
				{{#if date}}
					<h3>{{{date}}}</h3>
				{{/if}}
				{{#if highlight}}
				    <p>{{{highlight}}}</p>

				{{/if}}
			</div>
			{{else}}
			<p>No News & Media Matched</p>
			{{/each}}
		</script>	
		
		
		<script id="search-results-template-2" type="text/x-handlebars-template">
			{{#each result}}
			<div>
			<h3>graphql</h4>
				<h4><a href="{{localId}}">{{subject_t}}</a></h4>
				{{#if image_s}}
					<image src="{{{image_s}}}" style="width: 30%; height: auto;" />
				{{/if}}

				{{#if date_dt}}
					<h3>{{{date_dt}}}</h3>
				{{/if}}
				{{#if summary_t}}
				    <p>{{{summary_t}}}</p>

				{{/if}}
			</div>
			{{else}}
			<p>No News & Media Matched</p>
			result
			{{/each}}
		</script>	

		<!-- Scripts -->

			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
			
			<!--search related-->
		    <script src="/static-assets/js/handlebars.min-latest.js"></script>
			<!--<script src="/static-assets/js/search.js"></script>-->
			<script src="/static-assets/js/about_us.js"></script>
            <!--end search related-->
		<@studio.toolSupport/>
	</body>
</html>