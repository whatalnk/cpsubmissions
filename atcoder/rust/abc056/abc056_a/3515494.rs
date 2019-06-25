// Contest ID: abc056
// Problem ID: abc056_a ( https://atcoder.jp/contests/abc056/tasks/abc056_a )
// Title: A. HonestOrDishonest
// Language: Rust (1.15.1)
// Submitted: 2018-11-01 11:28:23 +0000 UTC ( https://atcoder.jp/contests/abc056/submissions/3515494 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    if a == "H" {
        println!("{}", b);
    } else {
        if b == "H" {
            println!("D");
        } else {
            println!("H");
        }
    }
}
