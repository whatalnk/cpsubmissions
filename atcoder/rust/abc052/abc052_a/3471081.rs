// Contest ID: abc052
// Problem ID: abc052_a ( https://atcoder.jp/contests/abc052/tasks/abc052_a )
// Title: A. Two Rectangles
// Language: Rust (1.15.1)
// Submitted: 2018-10-26 05:44:38 +0000 UTC ( https://atcoder.jp/contests/abc052/submissions/3471081 ) 

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
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    let c = it.next().unwrap();
    let d = it.next().unwrap();
    if a * b >= c * d {
        println!("{}", a * b);
    } else {
        println!("{}", c * d);
    }
}
