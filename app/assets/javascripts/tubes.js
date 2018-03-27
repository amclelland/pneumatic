$(function() {
  $('.new-capsule-icon').click(function(e) {
    var tube = $(this).data('tube');
    var form = $('form[data-tube=' + tube + ']');
    
    $(this).hide();
    form.show();
    form.find('input[type="text"]:first').focus();
    
    form.find('input[type="text"]:first').focusout(function() {
      var icon = $('a[data-tube=' + tube + ']');
      
      timeout = setTimeout(function() {
        form.hide();
        icon.show();
      }, 200);
    });
  });
  
  $('.new-tube-icon').click(function(e) {
    $(this).hide();
    $('#new-tube-form').show();
    $('#new-tube-form').find('input[type="text"]:first').focus();
    
    $('#new-tube-form').find('input[type="text"]:first').focusout(function() {
      var self = this;
      timeout = setTimeout(function() {
        $('#new-tube-form').hide();
        $('.new-tube-icon').show();
      }, 200);
    });
  });
});
