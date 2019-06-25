# Contest ID: code-thanks-festival-2018-open
# Problem ID: code_thanks_festival_2018_b ( https://atcoder.jp/contests/code-thanks-festival-2018-open/tasks/code_thanks_festival_2018_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-03-13 12:59:05 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2018-open/submissions/4569678 ) 

X, Y = gets.chomp.split(" ").map(&:to_i)


if (X + Y) % 4 == 0
  a = (X + Y) / 4
  if (X - a) >= 0 && (Y - a) >= 0 && (X - a).even? && (Y - a).even?
    puts "Yes"
    exit
  end
end
puts "No"
