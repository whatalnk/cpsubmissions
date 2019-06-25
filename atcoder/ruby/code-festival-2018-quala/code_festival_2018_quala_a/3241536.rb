# Contest ID: code-festival-2018-quala
# Problem ID: code_festival_2018_quala_a ( https://atcoder.jp/contests/code-festival-2018-quala/tasks/code_festival_2018_quala_a )
# Title: A. 配点
# Language: Ruby (2.3.3)
# Submitted: 2018-09-22 12:03:24 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-quala/submissions/3241536 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
s = gets.chomp.to_i

[a, a+1].each do |i|
  [b, b+1].each do |j|
    [c, c+1].each do |k|
      if i + j + k == s
        puts "Yes"
        exit
      end
    end
  end
end
puts "No"
