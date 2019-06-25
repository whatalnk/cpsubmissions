// Contest ID: abc050
// Problem ID: abc050_a ( https://atcoder.jp/contests/abc050/tasks/abc050_a )
// Title: A. Addition and Subtraction Easy
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 11:00:57 +0000 UTC ( https://atcoder.jp/contests/abc050/submissions/3467567 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace();
    let a = it.next().unwrap().parse::<i32>().unwrap();
    let op = it.next().unwrap();
    let b = it.next().unwrap().parse::<i32>().unwrap();
    if op == "+" {
        println!("{}", a + b);
    } else {
        println!("{}", a - b);
    }
}
