# Contest ID: abc073
# Problem ID: abc073_a ( https://atcoder.jp/contests/abc073/tasks/abc073_a )
# Title: A. September 9
# Language: Ruby (2.3.3)
# Submitted: 2017-09-09 12:02:43 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1576904 ) 

n = gets.chomp.split("")
n.each do |i|
  if i == "9"
    puts "Yes"
    exit
  end
end
puts "No"