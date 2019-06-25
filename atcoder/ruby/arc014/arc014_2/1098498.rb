# Contest ID: arc014
# Problem ID: arc014_2 ( https://atcoder.jp/contests/arc014/tasks/arc014_2 )
# Title: B. あの日したしりとりの結果を僕達はまだ知らない。
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 06:32:14 +0000 UTC ( https://atcoder.jp/contests/arc014/submissions/1098498 ) 

n = gets.chomp.to_i
words = [gets.chomp]

(1...n).each do |i|
  curr = gets.chomp
  prev = words.last
  if curr[0] != prev[prev.length-1] || words.include?(curr) then
    if i.even? then
      puts "LOSE"
    else
      puts "WIN"
    end
    exit
  end
  words << curr
end
puts "DRAW"