// Contest ID: abc070
// Problem ID: abc070_c ( https://atcoder.jp/contests/abc070/tasks/abc070_c )
// Title: C. Multiple Clocks
// Language: Rust (1.15.1)
// Submitted: 2017-08-24 05:37:42 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/1535854 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn gcd(a: i64, b: i64) -> i64 {
  if b == 0 {
    return a;
  } 
  return gcd(b, a % b);
}

fn lcm(a: i64, b: i64) -> i64 {
  let g = gcd(a, b);
  return a / g * b;
}

fn main() {
  let line = gets();
  let n = line.trim().parse::<usize>().unwrap();
  let mut ans = 1;
  for _ in 0..n {
    let line = gets();
    let t = line.trim().parse::<i64>().unwrap();
    ans = lcm(ans, t);
  }
  println!("{}", ans);
}
