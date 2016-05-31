$(document).on('ready page:load', function() {
  $('.snippet-search')
    .bind("enter",function() {
      $(this).closest('.snippet-search-form').submit()
    })
  })
