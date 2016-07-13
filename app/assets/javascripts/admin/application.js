// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery.gridster.js
//= require admin-lte/bootstrap/js/bootstrap
//= require admin-lte/dist/js/app.js
//= require admin-lte/plugins/iCheck/icheck.min.js
//= require admin-lte/plugins/slimScroll/jquery.slimscroll.min.js
//= require admin-lte/plugins/select2/select2.min.js
//= require admin-lte/plugins/select2/i18n/zh-TW.js
//= require admin-lte/plugins/input-mask/jquery.inputmask.js
//= require wice_grid
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.zh-TW.js
//= require moment
//= require moment/zh-tw.js
//= require pnotify
//= require unobtrusive_flash
//= require cocoon
//= require ckeditor/init
//= require sync
//= require_tree .


// global after init google map callback
// callback
function initMap(){
  if ($('#geocode').length > 0)
    autocomplete = new google.maps.places.Autocomplete($('#geocode')[0]);
}

function readURL(input) {
  var reader;
  if (input.files && input.files[0]) {
    reader = new FileReader();
    reader.onload = function(e) {
      $(input).siblings('.preview-img').attr('src', e.target.result);
    };
    reader.readAsDataURL(input.files[0]);
  }
};

function initImageInput() {
  $(".preview-img").each(function() {
    //
    $(this).siblings('.btn-img').unbind();
    $(this).siblings('.btn-img').click(function() {
      $(this).siblings('input[type=file]').click();
    });

    $(this).siblings('input[type=file]').unbind();
    $(this).siblings('input[type=file]').change(function() {
      readURL(this);
    });
  });
};

$(function(){
  if (typeof google === 'object' && typeof google.maps === 'object') {
    initMap();
  } else {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCUSk-5eNj1T5RH1U6tWPuqzA5fVMv37f0&libraries=places&callback=initMap';
    document.body.appendChild(script);
  }
});
