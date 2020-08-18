module ResultGiver
  def self.give_result(score:, path:)
    results = self.from_file(path)
    line_number = self.which_result(score)

    results[line_number]
  end

  def self.from_file(path)
    File.readlines(path, chomp: true, encoding: 'UTF-8')
  end

  def self.which_result(score)
    case score
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
