def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
templateModel.years = yearsItem.items.item
