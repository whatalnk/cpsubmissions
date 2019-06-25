// Contest ID: abc065
// Problem ID: abc065_a ( https://atcoder.jp/contests/abc065/tasks/abc065_a )
// Title: A. Expired?
// Language: Rust (1.15.1)
// Submitted: 2018-11-05 08:47:02 +0000 UTC ( https://atcoder.jp/contests/abc065/submissions/3547293 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let x = it.next().unwrap();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    if b <= a {
        println!("delicious");
    } else if b - a <= x {
        println!("safe");
    } else {
        println!("dangerous");
    }
}
