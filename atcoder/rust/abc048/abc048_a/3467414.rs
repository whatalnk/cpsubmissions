// Contest ID: abc048
// Problem ID: abc048_a ( https://atcoder.jp/contests/abc048/tasks/abc048_a )
// Title: A. AtCoder *** Contest
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 10:32:01 +0000 UTC ( https://atcoder.jp/contests/abc048/submissions/3467414 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s: String = line
        .trim()
        .split_whitespace()
        .map(|x| x.chars().nth(0).unwrap())
        .collect();
    println!("{}", s);
}
