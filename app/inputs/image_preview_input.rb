# app/inputs/image_preview_input.rb
class ImagePreviewInput < SimpleForm::Inputs::FileInput
  def input(wrapper_options = nil)
    # :preview_version is a custom attribute from :input_html hash, so you can pick custom sizes
    version = input_html_options.delete(:preview_version)
    out = ActiveSupport::SafeBuffer.new # the output buffer we're going to build
    # check if there's an uploaded file (eg: edit mode or form not saved)
    # if object.send("#{attribute_name}?")
    # append preview image to output
    out << "<a class='fa fa-picture-o btn-img' data-toggle='tooltip' title='上傳'></a>".html_safe
    out << template.image_tag(object.send(attribute_name).tap {|o| break o.send(version) if version}.send('url'),
                              :class => "preview-img", :style => "width:100%; min-height: 100px;")
    # end
    # allow multiple submissions without losing the tmp version
    out << @builder.hidden_field("#{attribute_name}_cache").html_safe
    # append file input. it will work accordingly with your simple_form wrappers
    # out << "<p>點我上傳圖片</p>".html_safe
    out << @builder.file_field(attribute_name, input_html_options)
  end
end