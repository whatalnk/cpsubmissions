// Contest ID: abc078
// Problem ID: abc078_a ( https://atcoder.jp/contests/abc078/tasks/abc078_a )
// Title: A. HEX
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 09:48:07 +0000 UTC ( https://atcoder.jp/contests/abc078/submissions/3576920 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    if a < b {
        println!("<");
    } else if a == b {
        println!("=");
    } else {
        println!(">");
    }
}
