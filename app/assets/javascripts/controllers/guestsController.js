$(document).ready(function() {
  function setupDemo() {
  $('#sentiment_analysis').empty();
  $('#new_guest_document').show();
  $('#document_title').val('');
  $('#document_text').val('');
  $('.alert').hide();
  app.documents.controllers.new.documents.init()
}

  $('.btn-demo').on('click', setupDemo)
  $('form#new_guest_document').on('submit', app.guests.controllers.create.documents.init);
})

app.guests.controllers = {
    new: {
      documents: {
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
      }
  },
  create: {
    documents: {
      init: function(event){
        event.preventDefault();
        $('#sentiment_analysis').empty();
        $('#new_guest_document').show();
        var action = $('form#new_guest_document').attr('action');
        var information = $('form#new_guest_document').serializeArray();
        if  (!$('.alert').is(':visible')) {
          $.ajax({
            url: action,
            method: 'POST',
            data: information
          }).success(function(data) {
            var stuff = "<p><ul><li>Sentiment: " + data.sentiment + "</li><li>Polarity: " + data.polarity_score + "</li><li>Sentiment Percentage: " + data.sentiment_percentage + "%</li></ul><a class='btn btn-primary' href='/register' role='button'>Sign Up for a Full Analysis</a</p>"
            
            $('#new_guest_document').hide();
            $('#sentiment_analysis').append(stuff);
          })
        }
      }
    }
  }
}
