<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<meta charset="utf-8" />
	
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


		

		

			
			<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
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
                          console.log(result.data)
                          this.items = result.data.data.page_pagenewsmedia
                        });
                        
                  }
                })
        </script>
        
       
			
			

	</body>
</html>
