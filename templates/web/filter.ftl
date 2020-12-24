<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>0 Hello World</title>
    </head>
    <body>

        <div id="app">
            <ul id="example-1">
              <li v-for="movie in movies" :movie="movie.objectId">
                    <div :key="movie.objectId">
                        <h3>{{ movie.objectId }}</h3>
                        <p>{{ movie.title_t }}</p>
                        <p>{{ movie.video_s }}</p>
                        <video poster="{{movie.thumbnail_s}}" preload="auto">
                            <source src="{{movie.video_s}}" type="video/mp4">
                            <p>Your browser does not support H.264/mp4</p>
                        </video>
                        <div>
                            <span>{{movie.duration_s}}</span>
                        </div>
                     </div>
                     
              </li>
            </ul>
        </div>
        
        
        
         
        
            
        
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
    
      document.cookie="crafterSite=demo;";
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
          document.cookie="crafterSite=demo;";
        });
        
  }
})
        </script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        
      
			
		

		<@studio.toolSupport/>
	</body>
</html>
