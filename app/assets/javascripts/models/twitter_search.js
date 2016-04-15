app.twitterSearches.model = {
  all: [],
  new: (function(){
    var counter = 0
    var twitterSearch = function TwitterSearch(searchQuery, description, group_id){
      this.searchQuery = searchQuery
      this.description = description
      this.group = app.groups.model.findBy({id: group_id})
      var that = this

      function initialize(){
        counter++;
        that.id = counter;
        app.twitterSearches.model.all.push(that);
      };
      initialize();
    }

    twitterSearch.prototype.group = function(group_id){
      return app.group.findBy({id: group_id})
    }

    return document;
  }()),
}
