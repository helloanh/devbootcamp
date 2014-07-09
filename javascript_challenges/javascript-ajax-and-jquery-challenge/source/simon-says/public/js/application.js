$(document).ready(function(){
  clickButton = $("#get_color").on("click", makeRequest);

});

var makeRequest = function(e) {
  e.preventDefault
  var ajaxRequest = $.ajax({
    url: "/color",
    type: "POST",
    dataType: "json"
  })

  ajaxRequest.done(ajaxResponse);
}

var ajaxResponse = function(response) {
  //console.log("report out " + response);

  // grab the cell number and color
  var color = response.color;
  var cell_num = response.cell;
  var selectedCell = $('#color_me').find("li")[cell_num-1];
  $(selectedCell).css("background-color", color);
}

