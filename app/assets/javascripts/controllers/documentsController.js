$(document).ready(function() {
  function hideSentiment() {
    $('#sentiment_analysis').empty();
    $('#document_form').show();
  }

  $('body').on('click', '#populate_doc_form', hideSentiment);
  $('#analyze').on('click', hideSentiment);
  $('form.new_document').on('submit', app.documents.controllers.create.init)
  $('form.new_document').on('submit', app.documents.controllers.create.init)
  $('body').on('click', '.rm-doc', app.documents.controllers.destroy.init)
})

app.documents.controllers = {
  create: {
    init: function(event) {
      event.preventDefault();
      $('#sentiment_analysis').empty();
      $('#document_form').show();
      var action = $('form#new_document').attr('action');
      var information = $('form#new_document').serializeArray();
      $.ajax({
        url: action,
        method: 'POST',
        data: information
      }).success(function(data) {
        var stuff = `<p>
          <ul>
            <li>Sentiment:` + data.sentiment + `</li>
            <li>Sentiment:` + data.polarity_score + `</li>
            <li>Sentiment:` + data.sentiment_percentage + `%</li>
          </ul>
          <a class="btn btn-primary" href="`+ data.document_path +`" role="button">See Full Analysis</a>
          <div class="btn btn-primary" id="populate_doc_form" role="button">Analyze New Document</div>
        </p>
        `
        $('#document_form').hide();
        $('#sentiment_analysis').append(stuff);
      })
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
