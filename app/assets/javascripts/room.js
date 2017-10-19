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
  //calender function start here
  $('#datetimepicker6').datetimepicker();
  $('#datetimepicker7').datetimepicker({
      useCurrent: false
  });
  $("#datetimepicker6").on("dp.change", function (e) {
    $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
  });
  $("#datetimepicker7").on("dp.change", function (e) {
    $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
  });
  //calender function fin
});
