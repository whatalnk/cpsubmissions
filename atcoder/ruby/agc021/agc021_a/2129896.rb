# Contest ID: agc021
# Problem ID: agc021_a ( https://atcoder.jp/contests/agc021/tasks/agc021_a )
# Title: A. Digit Sum 2
# Language: Ruby (2.3.3)
# Submitted: 2018-02-24 12:35:38 +0000 UTC ( https://atcoder.jp/contests/agc021/submissions/2129896 ) 

n = gets.chomp
ndigit = n.length
n = n.to_i
ans = 0
if n < 10000 then
  (1..n).each do |m|
    x = 0
    while m > 0
      x += m%10
      m /= 10
    end
    ans = [ans, x].max
  end
else
  (0..9).each do |i|
    (0..9).each do |j|
      (0..9).each do |k|
        (0..9).each do |l|
          if "#{i}#{j}#{"9"*(ndigit - 4)}#{k}#{l}".to_i <= n
            x = i + j + 9 * (ndigit - 4) + k + l
            ans = [ans, x].max
          end
        end
      end
    end
  end
end
puts ans