// Contest ID: abc012
// Problem ID: abc012_1 ( https://atcoder.jp/contests/abc012/tasks/abc012_1 )
// Title: A. スワップ
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 12:46:14 +0000 UTC ( https://atcoder.jp/contests/abc012/submissions/2138412 ) 

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
        .map(|x| x.parse::<u32>().unwrap());
    let (a, b) = (it.next().unwrap(), it.next().unwrap());
    println!("{} {}", b, a);
}
