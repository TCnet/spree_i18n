Spree.fetch_locales = function () {
  return $.ajax({
    url: Spree.pathFor('locales')
  }).done(function (data) {
    $('#dislu_language').append(data);
  });
};

Spree.fetch_mobile_locales = function () {
  return $.ajax({
    url: Spree.pathFor('mobile_locales')
  }).done(function (data) {
    $('#dislu_mobile_language').append(data);
  });
};



$(function () {
  $('body').on('change', '#locale-select select', function () {
    $(this).parents('form').submit();
  });
});
