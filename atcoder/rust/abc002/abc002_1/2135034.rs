// Contest ID: abc002
// Problem ID: abc002_1 ( https://atcoder.jp/contests/abc002/tasks/abc002_1 )
// Title: A. 正直者
// Language: Rust (1.15.1)
// Submitted: 2018-02-25 07:57:34 +0000 UTC ( https://atcoder.jp/contests/abc002/submissions/2135034 ) 

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
    let (a, b) = (it.next().unwrap(), it.next().unwrap());
    if a > b {
        println!("{}", a);
    } else {
        println!("{}", b);
    }
}
