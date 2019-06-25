// Contest ID: abc073
// Problem ID: abc073_a ( https://atcoder.jp/contests/abc073/tasks/abc073_a )
// Title: A. September 9
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 06:25:14 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/3573721 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    if n % 10 == 9 || n >= 90 {
        println!("Yes");
    } else {
        println!("No");
    }
}
