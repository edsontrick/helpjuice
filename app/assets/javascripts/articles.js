$(document).ready(function () {

  var timer = null;
  var search_field = $('#search_field');

  search_field.keydown(function(){
    clearTimeout(timer);
    timer = setTimeout(saveSentence, 2000)
  });

  function saveSentence() {
    $.ajax({
      type: "POST",
      url: '/articles/search',
      data: {"search" : search_field.val()},
      dataType: 'json',
      success: function(data){

      },
      error: function(){
        
      }
    });
  }

});
