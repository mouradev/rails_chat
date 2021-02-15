let scroll_bottom = function() {
  if ($('#messages').length > 0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight);
  }
}

let submit_message = function() {
  $('#message_body').on('keydown', function(e) {
    if (e.keyCode == 13) {
      $('button').click();
      e.target.value = "";
    };
  });
}

export {scroll_bottom, submit_message}