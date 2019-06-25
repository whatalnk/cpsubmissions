// Contest ID: abc083
// Problem ID: abc083_a ( https://atcoder.jp/contests/abc083/tasks/abc083_a )
// Title: A. Libra
// Language: Rust (1.15.1)
// Submitted: 2018-01-09 01:53:09 +0000 UTC ( https://atcoder.jp/contests/abc083/submissions/1957682 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace().map(|n| n.parse::<usize>().unwrap());
    let (a, b, c, d) = (it.next().unwrap(), it.next().unwrap(), it.next().unwrap(), it.next().unwrap());
    let ans: &str;
    if (a + b) > (c + d) {
      ans = "Left";
    } else if (a + b) == (c + d) {
      ans = "Balanced";
    } else {
      ans = "Right";
    }
    println!("{}", ans);
}