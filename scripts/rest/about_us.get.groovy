import org.craftercms.sites.editorial.SearchHelper

def userTerm = params.userTerm
// def categories = params["categories[]"]
def years = params["years[]"]
def start = params.start ? params.start as Integer : 0
def rows = params.rows ? params.rows as Integer : 10
def searchHelper = new SearchHelper(elasticsearch, urlTransformationService)
def results = searchHelper.search(userTerm, years, start, rows)

return results;
