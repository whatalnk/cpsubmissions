// Contest ID: abc043
// Problem ID: abc043_a ( https://atcoder.jp/contests/abc043/tasks/abc043_a )
// Title: A. キャンディーとN人の子供イージー / Children and Candies (ABC Edit)
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 08:15:34 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/3466610 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    println!("{}", n * (n + 1) / 2);
}
