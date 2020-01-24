# frozen_string_literal: true

require 'heart_of_a_developer/version'

# print out dev proverb anywhere
class HeartOfADeveloper
  PHRASES = [
    "It's not fully shipped until it's fast.",
    'Practicality beats purity.',
    'Avoid administrative distraction.',
    'Mind your words, they are important.',
    'Non-blocking is better than blocking.',
    'Design for failure.',
    'Half measures are as bad as nothing at all.',
    'Favor focus over features.',
    'Approachable is better than simple.',
    'Encourage flow.',
    'Anything added dilutes everything else.',
    'Speak like a human.',
    'Responsive is better than fast.',
    'Keep it logically awesome.',
    "Do it right, or you'll need to do it over.",
    'Collaboration through communication.',
    'Solve the right problem.',
    'Shipping is a feature.',
    'First solve the problem. Then write the code.',
    'Before making it better, stop making it worse.',
    'Thinking is also work.',
    'To go left, turn right.',
    "Bugs and features don't add, they compound.",
    'It be like that sometimes.',
    'Take a break :)',
    'Make the change easy, then make the change.',
    'Have you been told lately that you rock?',
    'Slow is smooth. Smooth is fast.',
    'In software, everything is possible but nothing is free.',
    'There seems no plan because it is all plan.',
    'Work without a vision is toil. Vision without work is a daydream.'
  ].freeze
  LINE_LENGTHS = [25, 23, 19, 15].freeze

  def self.speak(phrase_to_output = sample_phrase)
    puts illustration(partition_phrase(phrase_to_output))
  end

  def self.sample_phrase
    PHRASES.sample
  end

  def self.partition_phrase(phrase = sample_phrase)
    parts = empty_lines
    parts[0] = phrase
    max_lines = LINE_LENGTHS.size - 1
    LINE_LENGTHS.each_index do |idx|
      next unless parts[idx].size > LINE_LENGTHS[idx]
      line = slice_words_to_fit(parts[idx], LINE_LENGTHS[idx])
      parts[idx + 1] = parts[idx].delete_prefix(line).strip if idx < max_lines
      parts[idx] = line
    end
    LINE_LENGTHS.each_index do |idx|
      diff = (LINE_LENGTHS[idx].to_f - parts[idx].size) / 2
      parts[idx] = "#{spaces(diff.floor)}#{parts[idx]}#{spaces(diff.ceil)}"
    end
    parts
  end

  def self.empty_lines
    LINE_LENGTHS.map { |length| spaces(length) }
  end

  def self.illustration(lines = empty_lines)
    <<~HEREDOC
            _____           _____
        ,ad8PPPP88b,     ,d88PPPP8ba,
       d8P"      "Y8b, ,d8P"      "Y8b
      dP'           "8a8"           `Yd
      8(              "              )8
      I8  #{lines.first}  8I
       Yb, #{lines[1]} ,dP
        "8a, #{lines[2]} ,a8"
          "8a, #{lines[3]} ,a8"
            "Yba             adP"
              `Y8a         a8P'
                `88,     ,88'
                  "8b   d8"
                   "8b d8"
                    `888'
    HEREDOC
  end

  def self.spaces(count)
    count.times.inject('') { |acc, _| acc + ' ' }
  end

  def self.slice_words_to_fit(words, count)
    words.split(' ').inject do |acc, word|
      return acc if (acc.size + word.size) >= count

      [acc, word].join(' ')
    end
  end
end
