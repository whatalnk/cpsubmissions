// Contest ID: abc085
// Problem ID: abc085_a ( https://atcoder.jp/contests/abc085/tasks/abc085_a )
// Title: A. Already 2018
// Language: Rust (1.15.1)
// Submitted: 2018-01-11 01:59:43 +0000 UTC ( https://atcoder.jp/contests/abc085/submissions/1962190 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s = line.trim();
    println!("2018{}", &s[4..]);
}