// Contest ID: agc019
// Problem ID: agc019_a ( https://atcoder.jp/contests/agc019/tasks/agc019_a )
// Title: A. Ice Tea Store
// Language: Rust (1.15.1)
// Submitted: 2017-08-28 00:29:20 +0000 UTC ( https://atcoder.jp/contests/agc019/submissions/1549467 ) 

use std::io;
use std::cmp;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let mut it = line.split_whitespace().map(|x| x.parse::<i64>().unwrap());
  let (q, h, s, d) = (it.next().unwrap(), it.next().unwrap(), it.next().unwrap(), it.next().unwrap());
  let line = gets();
  let n = line.trim().parse::<i64>().unwrap();
  let p1 = cmp::min(cmp::min(q * 4, h * 2), s);
  let p2 = cmp::min(p1 * 2, d);
  if n == 1 {
    println!("{}", p1);
  } else {
    println!("{}", (n / 2) * p2 + (n % 2) * p1);
  }
}
