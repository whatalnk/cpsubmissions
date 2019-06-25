// Contest ID: abc071
// Problem ID: abc071_a ( https://atcoder.jp/contests/abc071/tasks/abc071_a )
// Title: A. Meal Delivery
// Language: Rust (1.15.1)
// Submitted: 2017-08-22 03:57:09 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1532847 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let mut it = line.split_whitespace().map(|n| n.parse::<i64>().unwrap());
  let x = it.next().unwrap();
  let a = it.next().unwrap();
  let b = it.next().unwrap();
  if (x - a).abs() < (x - b).abs() {
    println!("A");
  } else {
    println!("B");
  }
}
