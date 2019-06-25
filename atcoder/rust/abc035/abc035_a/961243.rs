// Contest ID: abc035
// Problem ID: abc035_a ( https://atcoder.jp/contests/abc035/tasks/abc035_a )
// Title: A. テレビ
// Language: Rust (1.15.1)
// Submitted: 2016-11-03 04:03:41 +0000 UTC ( https://atcoder.jp/contests/abc035/submissions/961243 ) 

use std::io;

fn gets() -> String {
  let mut input = String::new();
  io::stdin().read_line(&mut input).ok();
  return input;
}

fn main() {
  let line = gets();
  let mut iter = line.trim().split_whitespace().map(|x| x.parse::<i64>().unwrap());
  let w = iter.next().unwrap();
  let h = iter.next().unwrap();
  if w * 3 == h * 4 {
    println!("4:3");
  } else {
      println!("16:9");
  }
}