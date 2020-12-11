/*
 * Copyright (C) 2007-2020 Crafter Software Corporation. All Rights Reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

(function($) {

   $(function() {
     var queryParam = $.urlParam('q');
     if (queryParam) {
       queryParam = decodeURI(queryParam).trim();
       $('#query').val(queryParam);
     }

     var source = $("#search-results-template").html();
     var template = Handlebars.compile(source);

     var doSearch = function(userTerm, categories) {
       var params = {};

       if (userTerm) {
         params.userTerm = userTerm;
       }
       
       console.log(categories)
       
       if (categories) {
         params.categories = categories;
       }
        console.log(params)
       $.get("/api/search.json", params).done(function(data) {
         if (data == null) {
           data = [];
         }
        console.log(data)
         var context = { results: data };
         console.log(context)
         var html = template(context);
         console.log(html)

         $('#search-results').html(html);
       });
     }

     $('#categories input').click(function() {
       var categories = [];

       $('#categories input:checked').each(function() {
         categories.push($(this).val());
       });

       doSearch(queryParam, categories);
     });

     doSearch(queryParam);
   });

})(jQuery);
