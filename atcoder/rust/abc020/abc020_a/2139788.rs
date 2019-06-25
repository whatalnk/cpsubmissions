// Contest ID: abc020
// Problem ID: abc020_a ( https://atcoder.jp/contests/abc020/tasks/abc020_a )
// Title: A. クイズ
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 04:38:17 +0000 UTC ( https://atcoder.jp/contests/abc020/submissions/2139788 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let q = line.trim();
    if q == "1" {
        println!("{}", "ABC");
    } else {
        println!("{}", "chokudai");
    }
}
