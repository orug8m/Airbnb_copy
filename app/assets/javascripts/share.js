$(function(){
  function buildHTML(){
    var html ='<div class="user_menu"><ul><li><div class="menu_text"><div class="menu_text_content"><a href="/users/1/edit">Edit profile</a></div></div></li><li><div class="menu_text"><div class="menu_text_content"><a rel="nofollow" data-method="delete" href="/users/sign_out">Log out</a></div></div></li></ul></div><svg class="hat"><path class="white" d="M0,10 20,10 10,0z"></path><path class="gray_line" d="M0,10 10,0 20,10"></path></svg>'
    return html;
  };
  $(document).on('click','#user_image', function(e){
    e.preventDefault();
    if($('.user_menu').length){
      $('.user_menu').remove();
      $('.hat').remove();
    }
    else{
      var html = buildHTML();
      $('.user_menu').remove();
      $('.hat').remove();
      $('.menu_list').append(html);
    }
  });

  // $(".text_holizon").mouseover(function(){
  //   $(".text_wrap").css("border-bottom-color","#767676");
  // }).mouseout(function(){
  //   $(".text_wrap").css("border-bottom-color","");
  // });
});
