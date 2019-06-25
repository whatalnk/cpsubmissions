# Contest ID: abc002
# Problem ID: abc002_2 ( https://atcoder.jp/contests/abc002/tasks/abc002_2 )
# Title: B. 罠
# Language: Ruby (1.9.3)
# Submitted: 2014-09-18 12:51:42 +0000 UTC ( https://atcoder.jp/contests/abc002/submissions/234048 ) 

txt = gets.chomp
chrs = {'a'=>'', 'i'=>'', 'u'=>'', 'e'=>'', 'o'=>''}
print txt.gsub(/[aiueo]/) {|s| chrs[s]}, "\n"