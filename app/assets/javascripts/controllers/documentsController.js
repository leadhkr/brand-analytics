$(document).ready(function() {
  
  function setupDocument() {
    $('#sentiment_analysis').empty();
    $('#document_form').show();    
    $('#document_title').val('');
    $('#document_text').val('');    
    $('.alert').hide();
    app.documents.controllers.new.init()
  }
    /*** Form Listeners ***/
    $('body').on('click', '#populate_doc_form', setupDocument);
    $('#analyze').on('click', setupDocument);
    $('form.new_document').on('submit', app.documents.controllers.create.init);
    $('body').on('click', '.rm-doc', app.documents.controllers.destroy.init);    

    /*** Validation Listeners ***/
    $('#document_title').on('blur', app.documents.controllers.new.validateTitle);
    $('#document_text').on('blur', app.documents.controllers.new.validateText);
    
})

app.documents.controllers = {
  new: {
    init: function() {
      new app.documents.model.new();
    },
    validateTitle: function() {
      var document = _.last(app.documents.model.all)
      document.title = $('#document_title').val();
      $('.alert-title').empty().hide();
      $(this).removeAttr('style')
      if (!app.documents.model.validTitle(document)) {
        $('.alert-title').append('Title must be longer than 3 characters').show();
        $(this).css({"border-color": "#A94442"});
      }
    },
    validateText: function() {
      var document = _.last(app.documents.model.all)
      document.text = $('#document_text').val();
      $('.alert-text').empty().hide();
      $(this).removeAttr('style')
      if (!app.documents.model.validText(document)) {
        $('.alert-text').append('For an accurate analysis, text must be longer than 5 characters').show();
        $(this).css({"border-color": "#A94442"});
      }      
    }
  },
  create: {
    init: function(event) {
      event.preventDefault();
      $('#sentiment_analysis').empty();
      $('#document_form').show();
      var action = $('form#new_document').attr('action');
      var information = $('form#new_document').serializeArray();
      if  (!$('.alert').is(':visible')) {
        $.ajax({
          url: action,
          method: 'POST',
          data: information
        }).success(function(data) {
          var stuff = `<p>
            <ul>
              <li>Sentiment: ` + data.sentiment + `</li>
              <li>Polarity: ` + data.polarity_score + `</li>
              <li>Sentiment Percentage: ` + data.sentiment_percentage + `%</li>
            </ul>
            <a class="btn btn-primary" href="`+ data.document_path +`" role="button">See Full Analysis</a>
            <div class="btn btn-primary" id="populate_doc_form" role="button">Analyze New Document</div>
          </p>`
          $('#document_form').hide();
          $('#sentiment_analysis').append(stuff);
        })
      }
    }
  },
  destroy: {
    init: function(event){
      event.preventDefault();
      var action = $(this).prev().attr('href');
      $.ajax({
        url: action,
        method: 'DELETE'
      }).success(function(data){
        $(document).find("li[id =" + data.id + "]").remove()
      })
    }
  }
}
