require_relative 'lib/test'
require_relative 'lib/result_giver'

QUESTIONS_PATH = "#{__dir__}/data/questions.txt".freeze
RESULT_PATH = "#{__dir__}/data/results.txt".freeze

test = Test.from_file(QUESTIONS_PATH)

test.questions.each_with_index do |question, index|
  puts "#{index + 1}. #{question}"
  puts test.options
  print ' Ваш ответ: '

  test.add_score(input: STDIN.gets.to_i, index: index)

  puts
end

puts ResultGiver.give_result(score: test.score, path: RESULT_PATH)
