// Contest ID: abc045
// Problem ID: abc045_a ( https://atcoder.jp/contests/abc045/tasks/abc045_a )
// Title: A. 台形 / Trapezoids
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 09:59:32 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/3467227 ) 

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
    let line = gets();
    let h = line.trim().parse::<i32>().unwrap();
    println!("{}", (a + b) * h / 2);
}
