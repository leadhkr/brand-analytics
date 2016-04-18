$('.twitter_searches.show').ready(function() {
  var twitterSearchId = $('#word-cloud').attr('data-twitter-search')
  $.ajax({
    method: 'GET',
    data: { twitterSearchId: twitterSearchId },
    url: "/wordcloud"
  }).success(function(data) {
    var frequency_list = data

    var color = d3.scale.linear()
      .domain([0,1,2,3,4,5,6,10,15,20,100])
      .range(["#1A75FF", "#0066FF", "#0066FF", "#005CE5", "#0052CB", "#0048B1", "#003E97", "#00347D", "#002A63", "#002049", "#00162F", "#000C15"]);

    d3.layout.cloud().size([800, 300])
      .words(frequency_list)
      .rotate(0)
      .fontSize(function(d) { return d.size; })
      .on("end", draw)
      .start();

    function draw(words) {
      d3.select("#word-cloud").append("svg")
        .attr("width", 850)
        .attr("height", 350)
        .attr("class", "wordcloud")
        .append("g")
        .attr("transform", "translate(320,200)")
        .selectAll("text")
        .data(words)
        .enter().append("text")
        .style("font-size", function(d) { return d.size + "px"; })
        .style("fill", function(d, i) { return color(i); })
        .attr("transform", function(d) {
            return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
        })
        .text(function(d) { return d.text; });
    }
  })
})

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
