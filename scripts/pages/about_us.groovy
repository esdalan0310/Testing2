def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
println yearsItem
templateModel.yearss = yearsItem.items.item