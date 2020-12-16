(function($) {

   $(function() {
     var queryParam = $.urlParam('q');
     if (queryParam) {
       queryParam = decodeURI(queryParam).trim();
       $('#query').val(queryParam);
     }

     var source = $("#search-results-template").html();
     var template = Handlebars.compile(source);
     
     
     var query = `query q {
                  page_article {
                    items {
                      author_s
                      date_dt
                      disabled
                      featured_b
                      file__name
                      image_s
                      internal__name
                      localId
                      meta_keywords_t
                      navLabel
                      orderDefault_f
                      placeInNav
                      subject_t
                      summary_t
                    }
                  }
                }
                `
    var body = data: JSON.stringify({
   query: query,
   variables: { entry: entry }
})

     var doSearch = function(userTerm, years) {
       var params = {};

       if (userTerm) {
         params.userTerm = userTerm;
       }
       
       console.log(years)
       
       if (years) {
         params.years = years;
       }
        console.log(params)
    //   $.get("/api/about_us.json", params).done(function(data) {
       $.post("/api/1/site/graphql", body).done(function(data) {
         if (data == null) {
           data = [];
         }
        console.log(data)
         var context = { results: data };
         console.log(context)
         var html = template(context);

         $('#search-results').html(html);
       });
     }

     $('#years input').click(function() {
       var years = [];

       $('#years input:checked').each(function() {
         years.push($(this).val());
       });

       doSearch(queryParam, years);
     });

     doSearch(queryParam);
   });

})(jQuery);
