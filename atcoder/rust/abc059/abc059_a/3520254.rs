// Contest ID: abc059
// Problem ID: abc059_a ( https://atcoder.jp/contests/abc059/tasks/abc059_a )
// Title: A. Three-letter acronym
// Language: Rust (1.15.1)
// Submitted: 2018-11-02 10:30:19 +0000 UTC ( https://atcoder.jp/contests/abc059/submissions/3520254 ) 

use std::ascii::AsciiExt;
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
        .map(|x| x.chars().nth(0).unwrap().to_ascii_uppercase())
        .collect();
    println!("{}", s);
}
