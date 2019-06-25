// Contest ID: abc010
// Problem ID: abc010_1 ( https://atcoder.jp/contests/abc010/tasks/abc010_1 )
// Title: A. ハンドルネーム
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 05:19:03 +0000 UTC ( https://atcoder.jp/contests/abc010/submissions/2137407 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s = line.trim();
    println!("{}pp", s);
}
