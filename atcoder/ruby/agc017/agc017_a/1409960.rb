# Contest ID: agc017
# Problem ID: agc017_a ( https://atcoder.jp/contests/agc017/tasks/agc017_a )
# Title: A. Biscuits
# Language: Ruby (2.3.3)
# Submitted: 2017-07-09 12:37:10 +0000 UTC ( https://atcoder.jp/contests/agc017/submissions/1409960 ) 

n, p_ = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

ne = 0
no = 0
a.each do |i|
  if i.even? then
    ne += 1
  else
    no += 1
  end
end

@fac = Array.new(n)
def fact(n)
  @fac[0] = 1
  (1..n).each do |i|
    @fac[i] = @fac[i-1] * i
  end
end
fact(50)

def comb(n, k)
  return 1 if k == 0
  return @fac[n] / (@fac[n-k] * @fac[k])
end

ans = 0
if p_ == 0 then
  anse = (0..ne).map{|k| comb(ne, k)}.inject(:+)
  anso = 0
  0.step(no, 2){|k| anso += comb(no, k)}
  ans = anse * anso
else
  anse = (0..ne).map{|k| comb(ne, k)}.inject(:+)
  anso = 0
  1.step(no, 2){|k| anso += comb(no, k)}

  ans = anse * anso
end
puts ans