<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr component=contentModel ice=true />>
  <div class="content">
    <h3>${contentModel.title_s}</h3>
    <h3>${contentModel.content_s}</h3>
  </div>
</article>
