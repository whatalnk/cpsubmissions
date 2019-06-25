// Contest ID: abc055
// Problem ID: abc055_a ( https://atcoder.jp/contests/abc055/tasks/abc055_a )
// Title: A. Restaurant
// Language: Rust (1.15.1)
// Submitted: 2018-11-01 11:23:28 +0000 UTC ( https://atcoder.jp/contests/abc055/submissions/3515457 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    let x = n * 800;
    let y = n / 15 * 200;
    println!("{}", x - y);
}
