// Contest ID: abc071
// Problem ID: abc071_a ( https://atcoder.jp/contests/abc071/tasks/abc071_a )
// Title: A. Meal Delivery
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:42:20 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/3557943 ) 

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
    if (x - a).abs() < (x - b).abs() {
        println!("A");
    } else {
        println!("B");
    }
}
