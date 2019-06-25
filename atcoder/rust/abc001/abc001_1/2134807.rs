// Contest ID: abc001
// Problem ID: abc001_1 ( https://atcoder.jp/contests/abc001/tasks/abc001_1 )
// Title: A. 積雪深差
// Language: Rust (1.15.1)
// Submitted: 2018-02-25 06:43:39 +0000 UTC ( https://atcoder.jp/contests/abc001/submissions/2134807 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let a = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let b = line.trim().parse::<i32>().unwrap();
    println!("{}", a - b);
}
