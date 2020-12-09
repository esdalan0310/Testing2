<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr component=contentModel ice=true />>
<h2>${contentModel.title_s}</h2>
    <div class="content">
        <ul>
        <#list contentModel.contactGroup_o.item as item>
            <li>
                <h3>${item.title_s}</h3>
                <h4>${item.input_s}</h4>
            </li>
        </#list>
        
        
            <li>
                <h3>${item2.mediaTitle_s}</h3>
                <#list contentModel.socialMedia_o.item as item2>
                <h4>${item2.media_link_s}</h4>
            </li>
        </#list>
        </ul>
    </div>
</article>
