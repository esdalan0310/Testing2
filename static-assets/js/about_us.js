(function($) {

   $(function() {
     var queryParam = $.urlParam('q');
     if (queryParam) {
       queryParam = decodeURI(queryParam).trim();
       $('#query').val(queryParam);
     }

     var source = $("#search-results-template").html();
     var template = Handlebars.compile(source);

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
       $.get("/api/about_us.json", params).done(function(data) {
         if (data == null) {
           data = [];
         }
        console.log(data)
         var context = { results: data };
         console.log(context)
         var html = template(context);
        //  console.log(html)

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
