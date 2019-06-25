// Contest ID: abc021
// Problem ID: abc021_a ( https://atcoder.jp/contests/abc021/tasks/abc021_a )
// Title: A. 足し算
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 07:27:42 +0000 UTC ( https://atcoder.jp/contests/abc021/submissions/2140168 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    println!("{}", n);
    for _ in 0..n {
        println!("{}", 1);
    }
}
