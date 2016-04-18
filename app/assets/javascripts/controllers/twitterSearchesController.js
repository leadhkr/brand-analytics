$(document).ready(function() {

  function setupTwitterSearch() {
    $('#twitter_sentiment_analysis').empty();
    $('#twitter_form').show();
    $('#twitter_search_search_query').val('');
    $('#twitter_search_description').val('');
    app.twitterSearches.controllers.new.init()
  }
  /*** Form Listeners ***/
  $('body').on('click', '#populate_twitter_form', setupTwitterSearch);
  $('#analyze').on('click', setupTwitterSearch);
  $('form.new_twitter_search').on('submit', app.twitterSearches.controllers.create.init)
  $('body').on('click', '.rm-twitter', app.twitterSearches.controllers.destroy.init)

  /*** Validation Listeners ***/
  $('#twitter_search_search_query').on('blur', app.twitterSearches.controllers.new.validateQuery);

})

app.twitterSearches.controllers = {
  new: {
    init: function(){
      new app.twitterSearches.model.new();
    },
    validateQuery: function() {
      var twitterSearch = _.last(app.twitterSearches.model.all)
      twitterSearch.searchQuery = $('#twitter_search_search_query').val();
      $('.alert-query').empty().hide();
      $(this).removeAttr('style')
      if (!app.twitterSearches.model.validQuery(twitterSearch)) {
        $('.alert-query').append('Search must begin with a twitter handle (@) or hashtag (#)').show();
        $(this).css({"border-color": "#A94442"});
      }
    }
  },
  create: {
    init: function(event) {
      event.preventDefault();
      $('#twitter_sentiment_analysis').empty();
      $('#twitter_form').show();
      var action = $('form#new_twitter_search').attr('action');
      var information = $('form#new_twitter_search').serializeArray();
      if  (!$('.alert').is(':visible')) {
        $.ajax({
          url: action,
          method: 'POST',
          data: information
        }).success(function(data) {
          var stuff = `<p>
            <ul>
            <li>Sentiment Percentage: ` + data.average_sentiment + `%</li>
            <li>Overall Sentiment: ` + data.display_sentiment.charAt(0).toUpperCase() + data.display_sentiment.slice(1) + `</li>        
            </ul>
            <a class="btn btn-primary" href="`+ data.twitter_search_path +`" role="button">See Full Analysis</a>
            <div class="btn btn-primary" id="populate_twitter_form" role="button">Analyze New Twitter Search</div>
          </p>`
          
          $('#twitter_form').hide();
          $('#twitter_sentiment_analysis').append(stuff);
        })
      }
    }
  },

  destroy: {
    init: function(event) {
      event.preventDefault();
      var action = $(this).prev().prev().attr('href');
      $.ajax({
        url: action,
        method: 'DELETE'
      }).success(function(data){
        $(document).find("li[id =" + data.id + "]").remove()
      })
    }
  }
}
