$(function(){
  function buildHTML(){
    var html ='hello'
    return html;
  };
  $('#user_image').on('click', function(e){
    e.preventDefault();
    var html = buildHTML();
    $('.user').append(html);
  });
  // $('#user_image').on('click', function(e){
  //   e.preventDefault();
  //   $('.').remove();
  // });
});
