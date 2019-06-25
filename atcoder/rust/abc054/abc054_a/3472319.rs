// Contest ID: abc054
// Problem ID: abc054_a ( https://atcoder.jp/contests/abc054/tasks/abc054_a )
// Title: A. One Card Poker
// Language: Rust (1.15.1)
// Submitted: 2018-10-26 09:34:08 +0000 UTC ( https://atcoder.jp/contests/abc054/submissions/3472319 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let mut a = it.next().unwrap();
    if a == 1 {
        a = 14;
    }
    let mut b = it.next().unwrap();
    if b == 1 {
        b = 14;
    }
    if a > b {
        println!("Alice");
    } else if a == b {
        println!("Draw");
    } else {
        println!("Bob");
    }
}
