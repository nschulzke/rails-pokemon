module ApplicationHelper
  def color_swatch color
    content_tag :span, '', class: 'color-swatch', style: "background-color: #{color}"
  end
end
