def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
// println yearsItem
templateModel.years = yearsItem.items.item
println "groovy gen"
Date date = new Date()
String datePart = date.format("dd/MM/yyyy")
String timePart = date.format("HH:mm:ss")
println "datePart : " + datePart + "\ttimePart : " + timePart
templateModel.test123 = "alanalan123123213212321"