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
  validateTitle: function(title, text, group_id){
    var allDocuments = app.documents.model.all
    var document = allDocuments[allDocuments.length-1]
    document.title = title
    document.text = text
    document.group = app.documents.model.findBy({id: group_id})
    $('.alert').empty().hide();
    if (document.title.length < 3) {
      $('.alert').append('Please enter a longer title').show();
    }
  },
  validateText: function(title, text, group_id){
    var allDocuments = app.documents.model.all
    var document = allDocuments[allDocuments.length-1]
    document.title = title
    document.text = text
    document.group = app.documents.model.findBy({id: group_id})
    $('.alert').empty().hide();
    if (document.text.length < 5) {
      $('.alert').append('Please enter more text').show();
    }
  },  
  findBy: function findBy(attrHash) {
    var key = Object.keys(attrHash)[0]
    var value = attrHash[key]
    return $.grep(app.documents.model.all, function(document){
      return document[key] == value;
    });
  }  
}

