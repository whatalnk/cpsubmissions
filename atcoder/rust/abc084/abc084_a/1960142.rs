// Contest ID: abc084
// Problem ID: abc084_a ( https://atcoder.jp/contests/abc084/tasks/abc084_a )
// Title: A. New Year
// Language: Rust (1.15.1)
// Submitted: 2018-01-10 02:17:55 +0000 UTC ( https://atcoder.jp/contests/abc084/submissions/1960142 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let m = line.trim().parse::<usize>().unwrap();
    println!("{}", 24 - m + 24);
}