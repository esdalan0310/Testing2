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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="/static-assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/main.css?v=${siteContext.siteName}" />
		<!--[if lte IE 9]><link rel="stylesheet" href="/static-assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/static-assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/jquery-ui.min.css" />
	</head>
	<body>
		<!-- Wrapper -->
		

							
									    
                                        
                                        <div id="app">
                                            <ul id="example-1">
                                              <li v-for="movie in items" :movie="movie.title_t">
                                                    <div :key="movie.title_t">
                                                        <h3>{{ movie.title_t }}</h3>
                                                        <p>{{ movie.title_t }}</p>
                                                        <p>{{ movie.title_t }}</p>
                                                        
                                                        <div>
                                                            <span>{{movie.title_t}}</span>
                                                        </div>
                                                     </div>
                                                     
                                              </li>
                                            </ul>
                                        </div>

							

					<!-- Left Rail -->
					<@renderComponent component=contentModel.left\-rail_o.item />

			</div>

			<!-- Handlebar Templates -->
			<script id="search-results-template" type="text/x-handlebars-template">
				{{#each results}}
				<div>
					<h4><a href="{{url}}">{{items}}</a></h4>
					{{#if highlight}}
					<p>{{{highlight}}}</p>
					{{/if}}
				</div>
				{{else}}
				<p>No results found</p>
				{{/each}}
			</script>

		<!-- Scripts -->
			
			
			<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <script>
            new Vue({
                  el: '#app',
                  data () {
                    return {
                      items: null
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
                          console.log(result.data.data.page_pagenewsmedia)
                          this.items = result.data.data.page_pagenewsmedia
                        });
                        
                  }
                })
        </script>
        
        <script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/handlebars.min-latest.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
			<script src="/static-assets/js/search.js"></script>
			
			

		<@studio.toolSupport/>
	</body>
</html>
