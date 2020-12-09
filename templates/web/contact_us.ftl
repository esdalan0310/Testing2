<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr component=contentModel ice=true />>
<h2>${contentModel.title_s}</h2>
    <div class="content">
        <ul>
        <#list contentModel.contactGroup_o.item as item>
            <li>
                <h4>${item.title_s}</h4>
                <h5>${item.input_s}</h5>
            </li>
        </#list>
            <li>
                <h4>${contentModel.title_2_s}</h4>
                <#list contentModel.socialMedia_o.item as item2>

                <a href="${item2.media_link_s}"><img alt="${item2.media_link_s}" src="${item2.media_icon_s}" width="30" height="30"/></a>
                </#list>
            </li>
        </ul>
    </div>
</article>
