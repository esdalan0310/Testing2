def categoriesItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
templateModel.categories = categoriesItem.items.item
