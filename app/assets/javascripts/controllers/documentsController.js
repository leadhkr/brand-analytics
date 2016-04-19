$('.documents.show').ready(function() {
  var documentId = $('#word-cloud').attr('data-document-search')
  $.ajax({
    method: 'GET',
    data: { documentId: documentId },
    url: "/wordcloud"
  }).success(function(data) {
    var frequency_list = data

    var color = d3.scale.linear()
      .domain([0,1,2,3,4,5,6,10,15,20,100])
      .range(["#ddd", "#ccc", "#bbb", "#aaa", "#999", "#888", "#777", "#666", "#555", "#444", "#333", "#222"]);

    d3.layout.cloud().size([500, 300])
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
          var stuff = "<p><ul><li>Sentiment: " + data.sentiment + "</li><li>Polarity: " + data.polarity_score + "</li><li>Sentiment Percentage: " + data.sentiment_percentage + "%</li></ul><a class='btn btn-primary btn-modal' href='"+ data.document_path +"' role='button'>See Full Analysis</a><div class='btn btn-primary btn-modal' id='populate_doc_form' role='button'>Analyze New Document</div></p>"
          
          $('#document_form').hide();
          $('#sentiment_analysis').append(stuff);
        })
      }
    }
  },
  destroy: {
    init: function(event){
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
