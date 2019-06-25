# Contest ID: abc039
# Problem ID: abc039_c ( https://atcoder.jp/contests/abc039/tasks/abc039_c )
# Title: C. ピアニスト高橋君
# Language: Ruby (2.3.3)
# Submitted: 2016-12-22 13:03:52 +0000 UTC ( https://atcoder.jp/contests/abc039/submissions/1036086 ) 

keys = "wbwbwwbwbwbw".upcase * 4
s = gets.chomp
oto = {
  1 => "Do", 
  3 => "Re", 
  5 => "Mi", 
  6 => "Fa", 
  8 => "So", 
  10 => "La", 
  12 => "Si"
}
puts oto[keys.index(s) + 1]