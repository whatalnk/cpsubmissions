# Contest ID: abc111
# Problem ID: abc111_a ( https://atcoder.jp/contests/abc111/tasks/abc111_a )
# Title: A. AtCoder Beginner Contest 999
# Language: Ruby (2.3.3)
# Submitted: 2018-10-01 06:39:01 +0000 UTC ( https://atcoder.jp/contests/abc111/submissions/3314845 ) 

h = {
  "1" => "9", 
  "9" => "1"
}

puts gets.chomp.split("").map{|x| h[x]}.join("")