

$(document).ready(function () {

  $('.table .mybtn-edit').on('click', function (event) {
    event.preventDefault();           // отменить действие браузера по умолчанию 
    var href = $(this).attr('href');

    $.get(href, function(user, status) {
      $('.myForm #id')        .val(user.id);
      $('.myForm #username') .val(user.username);
      $('.myForm #lastname')  .val(user.lastname);
    });

   

    $('.myForm #exampleModal').modal();
  });
});