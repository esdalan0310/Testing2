<#import "/templates/system/common/cstudio-support.ftl" as studio />
<nav class="navbar navbar-expand-lg navbar-light">

    <div class="container" <@studio.iceAttr iceGroup="header"/>>
            <a class="navbar-brand" href="">
            	<img alt="${contentModel.logo_text_s!""}" src="${contentModel.logo_s!""}" >
        	</a>
        <div class="navbar-right">
    	  	<button class="btn btn-main btn-small">LOGON</button>
        	<img class="icon icon-search" alt="${contentModel.logo_text_s!""}" src="${contentModel.search_s!""}" >
            <img class="icon icon-menu" alt="${contentModel.logo_text_s!""}" src="${contentModel.menu_s!""}" >
    	</div>  	
    </div>
</nav>