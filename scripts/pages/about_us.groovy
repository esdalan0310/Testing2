def categoriesItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
println categoriesItem
templateModel.years = categoriesItem.items.item
