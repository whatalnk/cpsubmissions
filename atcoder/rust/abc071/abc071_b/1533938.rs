// Contest ID: abc071
// Problem ID: abc071_b ( https://atcoder.jp/contests/abc071/tasks/abc071_b )
// Title: B. Not Found
// Language: Rust (1.15.1)
// Submitted: 2017-08-22 14:27:28 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1533938 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let mut s: Vec<&str> = line.trim().split("").collect();
  s.sort();
  s.dedup();
  s.remove(0);
  let mut done = false;
  for (i, x) in (97..123).enumerate() {
    let xx = x as u8;
    let a = xx as char;
    if (i > s.len() - 1) || (a.to_string() != s[i]) {
      println!("{}", a);
      done = true;
      break;
    }
  }
  if !done {
    println!("None");
  }
}
