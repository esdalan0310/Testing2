<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>${contentModel.title_t}</title>
		<meta charset="utf-8" />
	    <meta name="keywords" content="${contentModel.meta_keywords_t}">
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
							<@renderComponent component = contentModel.header_o.item />

							<!-- Content -->
							<section>
								<header class="main" <@studio.iceAttr iceGroup="subject"/>>
							    	
									<h1>${contentModel.subject_t!""}</h1>
									<h2>by ${contentModel.author_s!""}</h2>
									<h2>Date: ${contentModel.date_t!""}</h2>
								</header>
								<#if contentModel.image_s??>
									<#assign image = contentModel.image_s/>
								<#else>
									<#assign image = "/static-assets/images/placeholder.png" style="width:50px;height:60px;">
								</#if>
								<span class="image main"><img src="${image}" alt="" /></span>
								${contentModel.content_t!""}
								<div id="app">
								    <button type="button" @click="back()">back</button>
				
								</div>
							</section>
						</div>
					</div>
					<!-- Left Rail -->
					<@renderComponent component = contentModel.left\-rail_o.item additionalModel = additionalModel />
			</div>
		<!-- Scripts -->
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
			<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <script>
            new Vue({
                  el: '#app',
                  data () {
                    return {
                      movies: null
                    }
                  },
                  mounted () {
                    
                      
                      axios({
                          url: 'http://18.163.110.47:8080/api/1/site/graphql',
                          method: 'post',
                          data: {
                              query: `query MyQuery {
                                     page_pagenewsmedia {
                                        items {
                                          title_t
                                          subject_s
                                          author_s
                                          content_t
                                          image_s
                                          date_dt(filter: {gt: "2020-11-15T06:40:33Z", lte: "2020-12-31T06:40:33Z"})
                                        }
                                      }
                                    }`
                              
                          }, 
                            headers: {
                              'Content-Type': 'application/json'
                            },
                
                        }).then((result) => {
                          console.log(result.data)
                          this.movies = result.data.data.page_page__video.items
                          
                        });
                        
                  },
                  methods : {
                      function back() {
                          window.top.location.href = "/studio/preview/#/?page=/filter&site=demo"
                        }
                  }
                })
        </script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>


		<@studio.toolSupport/>
	</body>
</html>
