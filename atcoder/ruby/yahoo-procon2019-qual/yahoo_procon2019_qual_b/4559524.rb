# Contest ID: yahoo-procon2019-qual
# Problem ID: yahoo_procon2019_qual_b ( https://atcoder.jp/contests/yahoo-procon2019-qual/tasks/yahoo_procon2019_qual_b )
# Title: B. Path
# Language: Ruby (2.3.3)
# Submitted: 2019-03-12 09:48:03 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2019-qual/submissions/4559524 ) 

m = Array.new(5){Array.new(5, 0)}
3.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  m[a][b] = 1
  m[b][a] = 1
end

[1, 2, 3, 4].permutation do |x|
  flag = true
  x.each_cons(2) do |a, b|
    if m[a][b] == 0
      flag = false
      break
    end
  end
  if flag
    puts "YES"
    exit
  end
end
puts "NO"