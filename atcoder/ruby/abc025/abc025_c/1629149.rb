# Contest ID: abc025
# Problem ID: abc025_c ( https://atcoder.jp/contests/abc025/tasks/abc025_c )
# Title: C. 双子と○×ゲーム
# Language: Ruby (2.3.3)
# Submitted: 2017-09-26 09:35:02 +0000 UTC ( https://atcoder.jp/contests/abc025/submissions/1629149 ) 

$matb = []
max_score = 0
2.times do
  row = gets.chomp.split(" ").map(&:to_i)
  $matb << row
  max_score += row.inject(:+)
end
$matc = []
3.times do
  row = gets.chomp.split(" ").map(&:to_i)
  $matc << row
  max_score += row.inject(:+)
end


$field = Array.new(3){Array.new(3, 0)}

def calc_score()  
  score = 0
  (0...2).each do |i|
    (0...3).each do |j|
      score += $matb[i][j] if $field[i][j] == $field[i + 1][j]
    end
  end
  (0...3).each do |i|
    (0...2).each do |j|
      score += $matc[i][j] if $field[i][j] == $field[i][j + 1]
    end
  end
  return score
end

$memo = Hash.new()
def game(turn, state)
  if turn == 9 then
    return calc_score()
  end

  if turn > 0 && $memo.has_key?(state)
    return $memo[state]
  end

  if turn.even? then
    score = 0
    3.times do |i|
      3.times do |j|
        next if $field[i][j] != 0
        $field[i][j] = 1
        state = $field.flatten.pack("c*")
        new_score = game(turn + 1, state)
        score = new_score if new_score > score
        $field[i][j] = 0 
      end
    end
  else
    score = 3000
    3.times do |i|
      3.times do |j|
        next if $field[i][j] != 0
        $field[i][j] = 2
        state = $field.flatten.pack("c*")
        new_score = game(turn + 1, state)
        score = new_score if new_score < score
        $field[i][j] = 0 
      end
    end
  end
  state = $field.flatten.pack("c*")
  $memo[state] = score
  return score
end

ret = game(0, nil)

puts ret
puts max_score - ret