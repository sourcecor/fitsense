# Created by xuanyang on 6/10/16.
$(document).ready ->
  $(window).bind 'rails:flash', (e, params) ->
    PNotify.prototype.options.styling = "jqueryui";
    new PNotify(
      title: params.type,
      text: params.message,
      type: params.type,
      addclass: "stack-modal",
#      delay: 1000
    )
    return
  return