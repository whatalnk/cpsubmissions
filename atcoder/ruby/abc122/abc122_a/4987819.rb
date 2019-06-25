# Contest ID: abc122
# Problem ID: abc122_a ( https://atcoder.jp/contests/abc122/tasks/abc122_a )
# Title: A. Double Helix
# Language: Ruby (2.3.3)
# Submitted: 2019-04-15 09:38:56 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/4987819 ) 

b = gets.chomp
base = {
  "A" => "T", 
  "T" => "A", 
  "G" => "C", 
  "C" => "G"
  }
puts base[b]