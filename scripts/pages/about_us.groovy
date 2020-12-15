// def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
// templateModel.years = yearsItem.items.item


import org.craftercms.sites.editorial.SearchHelper
import org.craftercms.sites.editorial.ProfileUtils

def segment = ProfileUtils.getSegment(profile, siteItemService)
def years = contentModel.years_o
def maxArticles = contentModel.max_articles_i
def searchHelper = new SearchHelper(elasticsearch, urlTransformationService)
def articles = searchHelper.searchArticles(false, years, segment, 0, maxArticles)

templateModel.yearss = articles