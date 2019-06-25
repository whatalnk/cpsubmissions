# Contest ID: nikkei2019-ex
# Problem ID: nikkei2019ex_c ( https://atcoder.jp/contests/nikkei2019-ex/tasks/nikkei2019ex_c )
# Title: C. 11で割った余りの計算方法
# Language: Ruby (2.3.3)
# Submitted: 2019-03-12 09:26:26 +0000 UTC ( https://atcoder.jp/contests/nikkei2019-ex/submissions/4559347 ) 

N = gets.chomp

l = N.length

sum = 0

1.upto(l) do |i|
  if i.odd?
    sum += N[l-i].to_i
    sum %= 11
  else
    sum -= N[l-i].to_i
    sum %= 11
  end
end

puts sum % 11