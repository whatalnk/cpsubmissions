// Contest ID: abc024
// Problem ID: abc024_a ( https://atcoder.jp/contests/abc024/tasks/abc024_a )
// Title: A. 動物園
// Language: Rust (1.15.1)
// Submitted: 2018-02-28 07:56:41 +0000 UTC ( https://atcoder.jp/contests/abc024/submissions/2142482 ) 

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
    let (a, b, c, k) = (
        it.next().unwrap(),
        it.next().unwrap(),
        it.next().unwrap(),
        it.next().unwrap(),
    );
    let line = gets();
    let mut it = line.trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let (s, t) = (it.next().unwrap(), it.next().unwrap());
    let ans = a * s + b * t;
    if s + t >= k {
        println!("{}", ans - (s + t) * c);
    } else {
        println!("{}", ans);
    }
}
