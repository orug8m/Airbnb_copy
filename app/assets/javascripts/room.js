$(function(){
  $(document).on('click','.input_guests', function(e){
    e.preventDefault();
      $('#select_area_contents').toggle()

  });
  $(document).on('click touchend', function(event) {
    if (!$(event.target).closest('#selectarea, .input_guests').length) {
      $('#select_area_contents').hide();
    }
  });
});
