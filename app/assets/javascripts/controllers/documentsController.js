$(document).ready(function() {
  $('.forms').hide();
  $('.btn').on('click', function(){
    
  })
  $('form.new_document').on('submit', app.documents.controllers.create.init)
})

app.documents.controllers = {
  create: {
    init: function(event) {
      event.preventDefault();
      var action = $('form#new_document').attr('action');
      var information = $('form#new_document').serializeArray();
      $.ajax({
        url: action,
        method: 'POST',
        data: information
      }).success(function(data) {
        debugger;
        var stuff = `<p>
          <ul>
            <li>Sentiment:` + data.sentiment + `</li>
            <li>Sentiment:` + data.polarity_score + `</li>
            <li>Sentiment:` + data.sentiment_percentage + `%</li>
          </ul>
          <a href="`+ data.document_path +`">See More</a>
        </p>
        `
        $('#group-modal').html(stuff).show();
      })
    }
  }
}
