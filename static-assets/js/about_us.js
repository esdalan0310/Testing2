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

         $('#search-results').html(html);
      });
     }

     $('#years input').click(function() {
      var years = [];

      $('#years input:checked').each(function() {
         years.push($(this).val());
      });

    //   doSearch(queryParam, years);
     });

    //  doSearch(queryParam);
  });

})(jQuery);
//=================

$(document).ready(function() {
var source2 = $("#search-results-template-2").html();
var template2 = Handlebars.compile(source2);
var yearFilterQuery = '{page_article {items {localId image_s subject_t summary_t}}}';

function resetQuery(){
    yearFilterQuery = '{page_article {items {localId image_s subject_t summary_t}}}';
}
     
var doGraphql = function (yearFilterQuery) {
   $("#testDiv").html('loading....');
   $.ajax({url: "http://18.163.110.47:8080/api/1/site/graphql",
      contentType: "application/json",
      type:'POST',
      data: JSON.stringify({
         query: yearFilterQuery
      }),
      success: function(results) {
        console.log(results)
        if(results){
            results = results.data.page_article.items
            console.log(results)
            results.foreach(results.localId = results.localId.replace('/site/website',''));
            var context = { resultss: results };
            var html = template2(context);
            $("#testDiv").html(html);
        }else{
            $("#testDiv").html("<h1> No News & Media Matched </h1>");

        }
        // var context = { resultss: results };
        // console.log(context)
        // var html = template2(context);
        //   var html = template2(result);
        //   console.log(html)
        //   $("#testDiv").html(html);
        //   $('#search-results').html(html);
        //  $("#testDiv").html("<h1>"+result+"</h1>");
      }
   });
}

     $('#btnTest2020').click(function() {
         resetQuery();
      yearFilterQuery = yearFilterQuery.substring(0, yearFilterQuery.length -3).concat(' date_dt(filter: {gte: "2020-01-01T00:00:00Z", lte: "2020-12-31T23:59:59Z"})}}}');
      console.log(yearFilterQuery);
      doGraphql(yearFilterQuery);
 });
      $('#btnTest2017').click(function() {
          resetQuery();
      yearFilterQuery = yearFilterQuery.substring(0, yearFilterQuery.length -3).concat(' date_dt(filter: {gte: "2017-01-01T00:00:00Z", lte: "2017-12-31T23:59:59Z"})}}}');
      console.log(yearFilterQuery);
      doGraphql(yearFilterQuery);
 });
});


// var entry = $('#entry').val()

//   var superQuery = `query q {
//   page_article {
//     items {
//       author_s
//       date_dt
//       disabled
//       featured_b
//       file__name
//       image_s
//       internal__name
//       localId
//       meta_keywords_t
//       navLabel
//       orderDefault_f
//       placeInNav
//       subject_t
//       summary_t
//     }
//   }
// }
// `

// .ajax({
//   method: "POST",
//   url: "http://18.163.110.47:8080/api/1/site/graphql",
//   contentType: "application/json",
//   headers: {
//   },
//   data: JSON.stringify({
//   query: superQuery,
//   variables: { entry: entry }
// })
// })
