class Test
  attr_reader :questions, :score

  REVERSE_SCORE_INDEX = [4, 9, 10]

  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'UTF-8')

    self.new(lines)
  end

  def initialize(questions)
    @questions = questions
    @score = 0
  end

  def options
    ['  1) да.', '  2) нет.', '  3) иногда.'].join("\n")
  end

  def add_score(input:, index:)
    @score += calculate_score_increase(input, self.reverse_score?(index))
  end

  def reverse_score?(index)
    REVERSE_SCORE_INDEX.include?(index)
  end

  def calculate_score_increase(input, reverse)
    case input
    when 1 then reverse ? 0 : 2
    when 2 then reverse ? 2 : 0
    else 1
    end
  end
end
