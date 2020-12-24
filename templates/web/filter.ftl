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


    <div id="wrapper">
        <!-- Main -->
			<div id="main">
				<div class="inner">

					<!-- Header -->
					<@renderComponent component=contentModel.header_o.item />

					<!-- Section -->
						<section>
							<header class="main">
								<h1>Search Results</h1>
								<h3>Refine by</h3>
							</header>
							<form id="categories">
								<div class="row uniform">
							
								</div>
							</form>
							<hr class="major"/>
							<div id="search-results">
							    
							</div>
							 <div id="app">
							 <button type="button" @click="filter()">All</button>
							 <button type="button" @click="filter('2017')">2017</button>
							 <button type="button" @click="filter('2018')">2018</button>
							 <button type="button" @click="filter('2019')">2019</button>
							 
                                <ul id="example-1">
                                  <li v-for="item in items" :movie="item.title_t">
                                        <div :key="item.title_t">
                                            <h3>{{ item.title_t }}</h3>
                                            <p>{{ item.subject_s }}</p>
                                            <p>{{ item.author_s }}</p>
                                            <p>{{ item.content_t }}</p>
                                            <button style="box-shadow:none" v-on:click="getPath(item.objectId)"><img v-bind:src="item.image_s"  alt=image" width="300" height="150"/> </button>
                                            <div>
                                                <span>{{item.date_dt}}</span>
                                            </div>
                                         </div>
                                         
                                  </li>
                                </ul>
                            </div>
						</section>

				</div>
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
                      items: this.filter(null)
                    }
                  },
                   methods: {
                    getPath(objId) {
                      axios
                          .get('http://18.163.110.47:8080/api/1/site/context/id?token=defaultManagementToken&crafterSite=demo')
                          .then(response => 
                            {
                                console.log(response.data.id)
                                axios
                                  .get('http://18.163.110.47:8080/api/1/content_store/tree.json?contextId='+ response.data.id+'&url=/site/website/newsandmedia&depth=2')
                                  .then(response => 
                                    {
                                        console.log(response.data.children)
                                        var items = response.data.children
                                        var result = ""
                                        var i;
                                            for (i = 0; i < items.length; i++) {
                                            if(items[i].children != null) {
                                                    console.log(items[i].children[0].descriptorDom.page.objectId)

                                                    console.log(objId)
                                                  if(items[i].children[0].descriptorDom.page.objectId == objId) {
                                                      result = items[i].name
                                                  }
                                              }
                                            }
                                            console.log("http://18.163.110.47:8080/studio/preview/#/?page=/newsandmedia/" + result+ "&site=demo")
                                            window.top.location.href = "/studio/preview/#/?page=/newsandmedia/" + result+ "&site=demo"
                                    }
                                  )
                            }
                          )
                          
                      
                    },
                    filter(start) {
                    var s = start + "-01-01T00:00:00Z";
                    var e = start + "-12-31T23:59:59Z"
                    if(start == null) {
                        s = "1997" + "-01-01T00:00:00Z";
                        e = "2047" + "-12-31T23:59:59Z"
                    }
                        axios({
                          document.cookie="crafterSite=demo"
                          url: 'http://18.163.110.47:8080/api/1/site/graphql',
                          method: 'post',
                          data: {
                              query: `query MyQuery {
                                                     page_pagenewsmedia {
                                                        items {
                                                          objectId
                                                          title_t
                                                          subject_s
                                                          author_s
                                                          content_t
                                                          image_s
                                                          date_dt(filter: {gt:"` + s + `", lte:"` + e + `"})
                                                        }
                                                      }
                                                    }`
                              
                          }, 
                            headers: {
                              'Content-Type': 'application/json'
                            },
                
                        }).then((result) => {
                          console.log(result.data.data.page_pagenewsmedia)
                          this.items = result.data.data.page_pagenewsmedia.items
                        });
                    }
                  }
                })
        </script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/handlebars.min-latest.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js?v=${siteContext.siteName}"></script>
			<script src="/static-assets/js/search.js"></script>
			
			

		<@studio.toolSupport/>
      
			
		

		<@studio.toolSupport/>
	</body>
</html>
