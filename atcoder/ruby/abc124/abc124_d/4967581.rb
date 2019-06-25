# Contest ID: abc124
# Problem ID: abc124_d ( https://atcoder.jp/contests/abc124/tasks/abc124_d )
# Title: D. Handstand
# Language: Ruby (2.3.3)
# Submitted: 2019-04-14 03:00:19 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/4967581 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
nums = []
now = 1
cnt = 0
n.times do |i|
  if s[i] == now
    cnt += 1
  else
    nums << cnt
    now = 1 - now
    cnt = 1
  end
end
if cnt != 0
  nums << cnt
end
if nums.size.even?
  nums << 0
end

sums = Array.new(nums.size + 1, 0)
nums.size.times do |i|
  sums[i+1] = sums[i] + nums[i]
end

add = 2 * k + 1

ans = 0

(0..(nums.size)).step(2) do |i|
  left = i
  right = [i + add, nums.size].min
  tmp = sums[right] - sums[left]
  if tmp > ans
    ans = tmp
  end
end
puts ans