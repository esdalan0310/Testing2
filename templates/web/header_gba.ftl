<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header id="header" <@studio.componentAttr component=contentModel ice=true iceGroup="header"/>>
    <a href="/" class="logo"><img border="0" alt="${contentModel.logo_text_t!""}" src="${contentModel.logo_s!""}">
        <#if (authToken.principal)??>
            <#assign name = authToken.principal.attributes.name!"stranger" />            
        <#else>
            <#assign name = "stranger" />
        </#if>
        Howdy, ${name}
    </a>

</header>
