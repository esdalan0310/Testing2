def yearsItem = siteItemService.getSiteItem(contentModel.years_o.item.key.text)
// println yearsItem
templateModel.years = yearsItem.items.item
println "groovy gen"
Date date = new Date()
String datePart = date.format("dd/MM/yyyy")
String timePart = date.format("HH:mm:ss")
println "datePart : " + datePart + "\ttimePart : " + timePart
// templateModel.test123 = "alanalan123123213212321"

// GET
// def get = new URL("http://worldclockapi.com/api/json/est/now").openConnection();
def get = new URL("http://18.163.105.240/api/v1/admin/login").openConnection();
def getRC = get.getResponseCode();
println(getRC);
if(getRC.equals(200)) {
    println(get.getInputStream().getText());
}

// // POST
// def post = new URL("http://18.163.105.240/api/v1/admin/login").openConnection();
// def message = "";
// post.setRequestMethod("POST");
// post.setDoOutput(true);
// post.setRequestProperty("Content-Type", "application/json");
// post.getOutputStream().write(message.getBytes("UTF-8"));
// def postRC = post.getResponseCode();
// println(postRC);
// if(postRC.equals(200)) {
//     println(post.getInputStream().getText());
// }