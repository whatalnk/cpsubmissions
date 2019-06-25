// Contest ID: abc072
// Problem ID: abc072_a ( https://atcoder.jp/contests/abc072/tasks/abc072_a )
// Title: A. Sandglass2
// Language: Rust (1.15.1)
// Submitted: 2017-09-04 06:59:22 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1568398 ) 

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
  let (x, t) = (it.next().unwrap(), it.next().unwrap());
  let ans = cmp::max(0, x - t);
  println!("{}", ans);
}
