// Contest ID: abc051
// Problem ID: abc051_a ( https://atcoder.jp/contests/abc051/tasks/abc051_a )
// Title: A. Haiku
// Language: Rust (1.15.1)
// Submitted: 2018-10-26 05:41:32 +0000 UTC ( https://atcoder.jp/contests/abc051/submissions/3471066 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s: Vec<&str> = line.trim().split(",").collect();
    println!("{} {} {}", s[0], s[1], s[2]);
}
