module ApplicationHelper
  def get_value(word)
    strip_word = word.downcase.gsub(/[#@,.:;?"-]/, '')
    value = @keyword_value_hash[strip_word]
    value ? decorate_text(value, word) : word
  end

  def decorate_text(value, word)
    css_class = get_highlight_color(value)
    content_tag(:span, word, class: ["label", "label-#{css_class}"])
  end

  def get_highlight_color(value)
    if value > 0
      value > 2 ? "success" : "positive"
    else
      value < -2.0 ? "danger" : "negative"
    end
  end
end
