$(function(){
  function appendProduct(tag_id, tag_keytag) {
    var html = `<div id="" class="checkbox" ><label for="room_tags_${tag_id}">${tag_keytag}</label><a class="tag-search-add chat-group-tag__btn chat-group-tag__btn--add js-add-btn" data_tag_id="${tag_id}" data_tag_name="${tag_keytag}">[追加]</a></div>`
    return html;
  }
  function appendNoproduct(tag_id, tag_keytag) {
    var html = `<input id="room_tags_" class="checkbox" type="checkbox" value="" name="room[room[tag_ids][]][]"><label for="room_tags_">空欄です</label><a class="tag-search-add chat-group-tag__btn chat-group-tag__btn--add js-add-btn" data_tag_id="" data_tag_name=""></a>`
    return html;
  }
  function buildHTML(tag_id, tag_keytag){
    var html = `<input name="room[tag_ids][]" type="hidden" value="${tag_id}"><input id="room_tags_${tag_id}" class="checkbox" type="checkbox" value="${tag_keytag}" name="room[room[tag_ids][]][]"><label for="room_tags_${tag_id}">${tag_keytag}</label><a class="tag-search-remove chat-group-tag__btn chat-group-tag__btn--remove js-remove-btn" data_tag_id="${tag_id}" data_tag_name="${tag_keytag}">[削除]</a>`
    return html;
  }
  $("#tag-search-field").on("keyup", function() {
    var input = $("#tag-search-field").val();
    $.ajax({
      type: 'GET',
      url: '/tags/',
      data: { keyword: input },
      dataType: 'json'
    })

    .done(function(tags) {
      $(".js-tag-search-result").empty();
      if (tags.length !== 0) {
        tags.forEach(function(tag){
        var tag_id = tag.id
        var tag_keytag = tag.keytag
        var html = appendProduct(tag_id, tag_keytag);
        $('.js-tag-search-result').append(html);
        });
      }
      else {
        appendNoproduct("別のキーワードをご指定ください");
      }
    })
    .fail(function() {
      alert('キーワード検索に失敗しました');
    })
  });
  $(document).on('click','.js-add-btn', function(e){
    e.preventDefault();
    var tag_id = $(this).attr('data_tag_id');
    var tag_name = $(this).attr('data_tag_name');
    var html = buildHTML(tag_id, tag_name);
    $('.js-add-tag').append(html);
    $(this).parent().remove();
  });
    $(document).on('click','.js-remove-btn', function(e){
    e.preventDefault();
    var tag_id = $(this).attr('data_tag_id');
    var tag_name = $(this).attr('data_tag_name');
    var html = appendProduct(tag_id, tag_name);
    $('.js-tag-search-result').append(html);
    $(this).parent().remove();
  });
});
