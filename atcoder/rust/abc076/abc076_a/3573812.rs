// Contest ID: abc076
// Problem ID: abc076_a ( https://atcoder.jp/contests/abc076/tasks/abc076_a )
// Title: A. Rating Goal
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 06:32:09 +0000 UTC ( https://atcoder.jp/contests/abc076/submissions/3573812 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let r = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let g = line.trim().parse::<i32>().unwrap();
    println!("{}", 2 * g - r);
}
