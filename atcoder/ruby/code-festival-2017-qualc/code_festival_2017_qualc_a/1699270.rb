# Contest ID: code-festival-2017-qualc
# Problem ID: code_festival_2017_qualc_a ( https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_a )
# Title: A. Can you get AC?
# Language: Ruby (2.3.3)
# Submitted: 2017-10-22 12:02:18 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-qualc/submissions/1699270 ) 

s = gets.chomp.split("")
s.each_cons(2) do |x, y|
  if x == "A" && y == "C"
    puts "Yes"
    exit
  end
end
puts "No"