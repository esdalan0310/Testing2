def categoriesItem = siteItemService.getSiteItem(contentModel.categories_o.item.key.text)
println categoriesItem
templateModel.categories = categoriesItem.items.item