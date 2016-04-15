$(document).ready(function() {
  function resetForm() {
    $('#twitter_sentiment_analysis').empty();
    $('#twitter_form').show();
    $('#twitter_search_search_query').val('');
    $('#twitter_search_description').val('');
  }
  $('body').on('click', '#populate_twitter_form', resetForm);
  $('#analyze').on('click', resetForm);
  $('form.new_twitter_search').on('submit', app.twitterSearches.controllers.create.init)
  $('body').on('click', '.rm-twitter', app.twitterSearches.controllers.destroy.init)
})

app.twitterSearches.controllers = {
  create: {
    init: function(event) {
      event.preventDefault();
      $('#twitter_sentiment_analysis').empty();
      $('#twitter_form').show();
      var action = $('form#new_twitter_search').attr('action');
      var information = $('form#new_twitter_search').serializeArray();
      $.ajax({
        url: action,
        method: 'POST',
        data: information
      }).success(function(data) {
        var stuff = `<p>
          <ul>
            <li>Sentiment Percentage: ` + data.average_sentiment + `%</li>
            <li>Sentiment: ` + data.display_sentiment.charAt(0).toUpperCase() + data.display_sentiment.slice(1) + `</li>
          </ul>
          <a class="btn btn-primary" href="`+ data.twitter_search_path +`" role="button">See Full Analysis</a>
          <div class="btn btn-primary" id="populate_twitter_form" role="button">Analyze New Twitter Search</div>
        </p>`

        $('#twitter_form').hide();
        $('#twitter_sentiment_analysis').append(stuff);
      })
    }
  },
  destroy: {
    init: function(event) {
      event.preventDefault();
      var action = $(this).prev().prev().attr('href');
      debugger;
      $.ajax({
        url: action,
        method: 'DELETE'
      }).success(function(data){
        $(document).find("li[id =" + data.id + "]").remove()
      })
    }
  }
}
