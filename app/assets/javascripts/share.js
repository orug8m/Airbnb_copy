$(function(){
  $(document).on('click','#user_image', function(e){
    e.preventDefault();
      $('.user_menu, .hat').toggle()

  });
  $(document).on('click touchend', function(event) {
    if (!$(event.target).closest('.user').length) {
      $('.user_menu, .hat').hide();
    }
  });
});
