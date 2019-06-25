// Contest ID: abc069
// Problem ID: abc069_a ( https://atcoder.jp/contests/abc069/tasks/abc069_a )
// Title: A. K-City
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:31:48 +0000 UTC ( https://atcoder.jp/contests/abc069/submissions/3557862 ) 

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
    let (n, m) = (it.next().unwrap(), it.next().unwrap());
    println!("{}", (n - 1) * (m - 1));
}
