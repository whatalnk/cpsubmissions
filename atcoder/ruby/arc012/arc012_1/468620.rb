# Contest ID: arc012
# Problem ID: arc012_1 ( https://atcoder.jp/contests/arc012/tasks/arc012_1 )
# Title: A. 週末
# Language: Ruby (1.9.3)
# Submitted: 2015-08-11 05:24:30 +0000 UTC ( https://atcoder.jp/contests/arc012/submissions/468620 ) 

d = gets.chomp
case d
  when "Monday"
    puts 5
  when "Tuesday"
    puts 4
  when "Wednesday"
    puts 3
  when "Thursday"
    puts 2
  when "Friday"
    puts 1
  else
    puts 0
end
