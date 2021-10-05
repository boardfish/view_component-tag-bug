# frozen_string_literal: true

class FieldComponent < ViewComponent::Base
  attribute :type, :string, validate: { inclusion: { in: %w[text email password text_area] } }
  attribute :name, :string
  attribute :value, :string, validate: false
  attribute :list, :string, validate: false
  attribute :placeholder, :string, validate: false
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
    return content_tag :textarea, value, tag_params.except(:type) if type == :text_area

    tag :input, tag_params
  end
end
