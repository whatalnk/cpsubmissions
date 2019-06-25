// Contest ID: abc015
// Problem ID: abc015_1 ( https://atcoder.jp/contests/abc015/tasks/abc015_1 )
// Title: A. 高橋くんの研修
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 13:03:47 +0000 UTC ( https://atcoder.jp/contests/abc015/submissions/2138468 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let a = line.trim();
    let line = gets();
    let b = line.trim();
    if a.len() > b.len() {
        println!("{}", a);
    } else {
        println!("{}", b);
    }
}
