# Contest ID: abc088
# Problem ID: abc088_c ( https://atcoder.jp/contests/abc088/tasks/abc088_c )
# Title: C. Takahashi's Information
# Language: Ruby (2.3.3)
# Submitted: 2018-02-19 01:39:57 +0000 UTC ( https://atcoder.jp/contests/abc088/submissions/2114462 ) 

c = []
csum0 = 0
3.times do
  row = gets.chomp.split(" ").map(&:to_i)
  csum0 += row.inject(:+)
  c << row
end

csum1 = c[0][0] + c[1][1] + c[2][2]
csum2 = c[0][2] + c[1][1] + c[2][0]

if csum0 == csum1 * 3 && csum0 == csum2 * 3 then
  puts "Yes"
else
  puts "No"
end