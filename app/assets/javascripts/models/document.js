app.documents.model = {
  all: [],
  new: (function(){
    var counter = 0
    var document = function Document(title, text, group_id){
      this.title = title
      this.text = text
      this.group = app.groups.model.findBy({id: group_id})
      var that = this

      function initialize(){
        counter++;
        that.id = counter;
        app.documents.model.all.push(that);
      };
      initialize();
    }

    return document;
  }()),
  validTitle: function(document){
    return document.title.length > 2
  },
  validText: function(document){
    return document.text.length > 5
  },  
  findBy: function findBy(attrHash) {
    var key = Object.keys(attrHash)[0]
    var value = attrHash[key]
    return $.grep(app.documents.model.all, function(document){
      return document[key] == value;
    });
  }  
}

