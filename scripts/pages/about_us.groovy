def categoriesItem = siteItemService.getSiteItem(contentModel.categories_o.item.key.text)
templateModel.categories = categoriesItem.items.item