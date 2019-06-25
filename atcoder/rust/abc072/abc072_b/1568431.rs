// Contest ID: abc072
// Problem ID: abc072_b ( https://atcoder.jp/contests/abc072/tasks/abc072_b )
// Title: B. OddString
// Language: Rust (1.15.1)
// Submitted: 2017-09-04 07:12:51 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1568431 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let mut ans = String::new();
  for (i, c) in line.chars().enumerate() {
    if (i + 1) % 2 == 1 {
      ans.push_str(&c.to_string());
    }
  }
  println!("{}", ans);
}
