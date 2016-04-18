$(document).ready(function() {
  var frequency_list = [{"text":"study","size":40},{"text":"motion","size":15},{"text":"forces","size":10},{"text":"electricity","size":15},{"text":"movement","size":10},{"text":"relation","size":5},{"text":"things","size":10},{"text":"force","size":5},{"text":"ad","size":5},{"text":"energy","size":85},{"text":"living","size":5},{"text":"nonliving","size":5},{"text":"laws","size":15},{"text":"speed","size":45},{"text":"velocity","size":30},{"text":"define","size":5},{"text":"constraints","size":5},{"text":"universe","size":10},{"text":"physics","size":120},{"text":"describing","size":5},{"text":"matter","size":90},{"text":"physics-the","size":5},{"text":"world","size":10},{"text":"works","size":10},{"text":"science","size":70}];

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
});
