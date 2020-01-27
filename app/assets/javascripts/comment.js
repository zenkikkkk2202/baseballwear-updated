

$(function(){
  function buildHTML(comment){
    var html = `<div class ="username">
                <a href=/posts/${comment.user_id}>${comment.nickname}</a>
                <div class="comment-style">
                  ${comment.text}`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comments').append(html);
      $('.textbox').val('');
      $('.form__submit').prop('disabled', false);
    })
    .fail(function(){
      alert("error");
    })
  })
})
