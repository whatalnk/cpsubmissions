// Contest ID: abc066
// Problem ID: abc066_a ( https://atcoder.jp/contests/abc066/tasks/abc066_a )
// Title: A. ringring
// Language: Rust (1.15.1)
// Submitted: 2018-11-06 07:53:36 +0000 UTC ( https://atcoder.jp/contests/abc066/submissions/3552542 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut v: Vec<i32> = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap())
        .collect();
    v.sort();
    println!("{}", v[0] + v[1]);
}
