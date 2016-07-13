# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  initImageInput();

$('input').iCheck
  checkboxClass: 'icheckbox_square-blue'
  radioClass: 'iradio_square-blue'
  increaseArea: '20%'

# for remote update
$.fn.clear_form_errors = () ->
  this.find('.form-group').removeClass('has-error')
  this.find('span.help-block').remove()

$.fn.clear_form_fields = () ->
  this.find(':input', '.simple_form.edit_supervisor')
  .not(':button, :submit, :reset, :hidden')
  .val('')
  .removeAttr('checked')
  .removeAttr('selected')

$.fn.render_form_errors = (model_name, errors) ->
  form = this
  this.clear_form_errors()
  $.each(errors, (field, messages) ->
    input = form.find('input, select, textarea').filter(->
      name = $(this).attr('name')
      if name
        name.match(new RegExp(model_name + '\\[' + field + '\\(?'))
    )
    input.closest('.form-group').addClass('has-error')
    input.parent().append('<span class="help-block">' + $.map(messages, (m) -> m.charAt(0).toUpperCase() + m.slice(1)).join('<br />') + '</span>')
  )

$.ajaxSetup({
  dataType: 'json'
});
