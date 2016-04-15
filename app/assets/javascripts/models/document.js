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
  validate: function(document){
    $('.alert').empty().hide();
    if (document.title.length < 3) {
      $('.alert').append('Please enter a longer title').show();
    }
  }
}
