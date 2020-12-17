def categoriesItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
templateModel.years = categoriesItem.items.item
