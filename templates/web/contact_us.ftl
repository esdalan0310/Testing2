<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr component=contentModel ice=true />>
    <div class="content">
        <#list contentModel.contactGroup_o.item as item>
            <h3>${item.title_s}</h3>
            <h3>${item.input_s}</h3>
        </#list>
    </div>
</article>
