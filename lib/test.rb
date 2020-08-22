class Test
  attr_accessor :questions, :score

  REVERSE_SCORE_INDEX = [4, 9, 10]

  def self.from_file(questions_path:, results_path:)
    questions = File.readlines(questions_path, chomp: true, encoding: 'UTF-8')
    results = File.readlines(results_path, chomp: true, encoding: 'UTF-8')

    self.new(questions, results)
  end

  def initialize(questions, results)
    @questions = questions
    @results = results
    @score = 0
  end

  def options
    ['  1) да.', '  2) нет.', '  3) иногда.'].join("\n")
  end

  def add_score(input:, index:)
    @score += calculate_score_increase(input, reverse_score?(index))
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

  def result
    @results[which_result]
  end

  def which_result
    case @score
    when (30..32) then 0
    when (25..29) then 1
    when (19..24) then 2
    when (14..18) then 3
    when (9..13) then 4
    when (4..8) then 5
    else 6
    end
  end
end
