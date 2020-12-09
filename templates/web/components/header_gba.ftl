<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header id="header" <@studio.componentAttr component=contentModel ice=true iceGroup="header"/>>
    <a href="/" class="logo"><img border="0" alt="${contentModel.logo_text_s!""}" src="${contentModel.logo_s!""}">
       <!-- login logic  -->
    </a>
        <div class="navbar-right">
    	  	<button class="btn btn-main btn-small">LOGON</button>
        	<img class="icon icon-search" alt="${contentModel.logo_text_s!""}" src="${contentModel.search_s!""}" >
            <img class="icon icon-menu" alt="${contentModel.logo_text_s!""}" src="${contentModel.menu_s!""}" >
    	</div>  	
</header>
