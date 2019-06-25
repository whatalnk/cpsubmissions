# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_i ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_i )
# Title: I. 和がNの区間
# Language: Ruby (2.3.3)
# Submitted: 2017-07-29 05:15:22 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1460988 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
cumsum = [0]
n.times do |i|
  cumsum << cumsum[i] + arr[i]
end
ret = 0
n.times do |i|
  ((i+1)..n).each do |j|
    asum = cumsum[j] - cumsum[i]
    if asum > n then
      break
    elsif asum == n then
      ret += 1
    end
  end
end

puts ret
