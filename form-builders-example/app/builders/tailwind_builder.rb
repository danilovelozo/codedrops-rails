class TailwindBuilder < ActionView::Helpers::FormBuilder
  # include ActionView::Helpers::TagHelper
  # include ActionView::Context

  def text_field(attribute, _option = {})
    super(attribute,  options.reverse_merge(class: 'input'))
  end

  def text_area(attribute, _option = {})
    super(attribute,  options.reverse_merge(class: 'input'))
  end

  def select(object_name, method_name, template_object, options = {})
    super(object_name, method_name, template_object, options.reverse_merge(class: 'select'))
  end

  def div_radio_button(method, tag_value, options = {})
    @template.content_tag(:div,
                          @template.radio_button(
                            @object_name, method, tag_value, objectify_options(options)
                          ))
  end
end
