# frozen_string_literal: true

class FieldComponent < ViewComponent::Base
  def initialize(type:, name:, value: nil, list: nil, placeholder: nil)
    @type = type
    @name = name
    @value = value
    @list = list
    @placeholder = placeholder
  end

  def tag_params
    {
      type: @type,
      name: @name,
      value: @value,
      list: @list,
      placeholder: @placeholder
    }
  end

  def call
    return tag :textarea, @value, tag_params.except(:type) if @type == :text_area

    tag :input, tag_params
  end
end
