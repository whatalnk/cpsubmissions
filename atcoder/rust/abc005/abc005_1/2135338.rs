// Contest ID: abc005
// Problem ID: abc005_1 ( https://atcoder.jp/contests/abc005/tasks/abc005_1 )
// Title: A. おいしいたこ焼きの作り方
// Language: Rust (1.15.1)
// Submitted: 2018-02-25 09:38:44 +0000 UTC ( https://atcoder.jp/contests/abc005/submissions/2135338 ) 

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
    let (x, y) = (it.next().unwrap(), it.next().unwrap());
    println!("{}", y / x);
}
