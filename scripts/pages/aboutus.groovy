def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
// println yearsItem
templateModel.years = yearsItem.items.item
