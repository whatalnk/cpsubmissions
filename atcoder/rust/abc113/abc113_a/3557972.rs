// Contest ID: abc113
// Problem ID: abc113_a ( https://atcoder.jp/contests/abc113/tasks/abc113_a )
// Title: A. Discount Fare
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:46:55 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/3557972 ) 

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
    let x = it.next().unwrap();
    let y = it.next().unwrap();
    println!("{}", x + y / 2);
}
