import org.craftercms.sites.editorial.SearchHelper

def userTerm = params.userTerm

def years = params["years[]"]
// def categories = params["categories[]"]
def start = params.start ? params.start as Integer : 0
def rows = params.rows ? params.rows as Integer : 10
def searchHelper = new SearchHelper(elasticsearch, urlTransformationService)
def results = searchHelper.about_us_search(userTerm, years, start, rows)

return results;



// // GET
// // def get = new URL("http://worldclockapi.com/api/json/est/now").openConnection();
// def get = new URL("http://18.163.105.240/api/v1/admin/login").openConnection();
// def getRC = get.getResponseCode();
// println(getRC);
// if(getRC.equals(200)) {
//     // println(get.getInputStream().getText());
//     return get.getInputStream().getText();
// }else{
//     return 'no data'
// }

// POST
// def post = new URL("http://18.163.105.240/api/v1/admin/login").openConnection();
// def message = "{'username':'superuser1@esdlife.com','password':'Ab123456!','type':'A'}";
// post.setRequestMethod("POST");
// post.setDoOutput(true);
// post.setRequestProperty("Content-Type", "application/json");
// post.getOutputStream().write(message.getBytes("UTF-8"));
// def postRC = post.getResponseCode();
// println(postRC);
// if(postRC.equals(200)) {
//     println(post.getInputStream().getText());
// }