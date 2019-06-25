// Contest ID: abc019
// Problem ID: abc019_1 ( https://atcoder.jp/contests/abc019/tasks/abc019_1 )
// Title: A. 高橋くんと年齢
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 04:35:45 +0000 UTC ( https://atcoder.jp/contests/abc019/submissions/2139779 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut v: Vec<i32> = line.trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap())
        .collect();
    v.sort();
    println!("{}", v[1]);
}
