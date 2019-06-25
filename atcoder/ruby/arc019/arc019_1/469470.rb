# Contest ID: arc019
# Problem ID: arc019_1 ( https://atcoder.jp/contests/arc019/tasks/arc019_1 )
# Title: A. お買い物クライシス
# Language: Ruby (1.9.3)
# Submitted: 2015-08-14 04:34:46 +0000 UTC ( https://atcoder.jp/contests/arc019/submissions/469470 ) 

s = gets.chomp
re_h = {"O" => 0, "D" => 0, "I" => 1, "Z" => 2, "S" => 5, "B" => 8}
puts s.gsub(/[ODIZSB]/, re_h)