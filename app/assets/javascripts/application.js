// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function countChar(val, maxLength) {
    var len = val.value.length;
    if (len >= maxLength) {
        $('#flash_error').show();
        $('#flash_error').text("Tweet limit to 160 characters.");
        val.value = val.value.substring(0, maxLength);
        return false
    }
};
