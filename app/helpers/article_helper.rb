# frozen_string_literal: true

module ArticleHelper
  def reading_time(content, words_per_minute = 200)
    words = content.to_s.scan(/\w+/).size
    minutes = (words / words_per_minute.to_f).ceil

    return "Menos de 1 min" if minutes.zero?
    "#{minutes} min#{'uto' if minutes == 1}#{'s' if minutes > 1}"
  end
end
