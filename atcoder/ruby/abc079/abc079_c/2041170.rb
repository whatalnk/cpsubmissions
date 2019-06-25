# Contest ID: abc079
# Problem ID: abc079_c ( https://atcoder.jp/contests/abc079/tasks/abc079_c )
# Title: C. Train Ticket
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 12:23:34 +0000 UTC ( https://atcoder.jp/contests/abc079/submissions/2041170 ) 

a, b, c, d = gets.chomp.split("").map(&:to_i)
ops = ["+", "-"]
ops.each do |i|
  ops.each do |j|
    ops.each do |k|
      expr = "#{a}#{i}#{b}#{j}#{c}#{k}#{d}"
      if eval(expr) == 7 then
        puts expr+"=7"
        exit
      end
    end
  end
end