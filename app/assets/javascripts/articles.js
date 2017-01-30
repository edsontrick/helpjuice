$(document).ready(function () {

  var timer = null;
  var search_field = $('#search_field');

  search_field.keydown(function(){
    clearTimeout(timer);
    timer = setTimeout(saveSentence, 1000)
  });

  function saveSentence() {
    $.ajax({
      type: "POST",
      url: '/articles/search',
      data: {"search_field" : search_field.val()},
      dataType: 'json',
      success: function(data){

      },
      error: function(){

      }
    });
  }

});
