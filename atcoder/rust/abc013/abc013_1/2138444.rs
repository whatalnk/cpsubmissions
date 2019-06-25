// Contest ID: abc013
// Problem ID: abc013_1 ( https://atcoder.jp/contests/abc013/tasks/abc013_1 )
// Title: A. A
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 12:56:50 +0000 UTC ( https://atcoder.jp/contests/abc013/submissions/2138444 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().chars();
    if let Some(c) = it.next() {
        println!("{}", c.to_digit(16).unwrap() - 9);
    }
}
