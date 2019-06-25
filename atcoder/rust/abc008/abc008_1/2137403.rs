// Contest ID: abc008
// Problem ID: abc008_1 ( https://atcoder.jp/contests/abc008/tasks/abc008_1 )
// Title: A. アルバム
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 05:14:15 +0000 UTC ( https://atcoder.jp/contests/abc008/submissions/2137403 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let (s, t) = (it.next().unwrap(), it.next().unwrap());
    println!("{}", t - s + 1);
}
