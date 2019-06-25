// Contest ID: abc053
// Problem ID: abc053_a ( https://atcoder.jp/contests/abc053/tasks/abc053_a )
// Title: A. ABC/ARC
// Language: Rust (1.15.1)
// Submitted: 2018-10-26 05:46:24 +0000 UTC ( https://atcoder.jp/contests/abc053/submissions/3471086 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    if n < 1200 {
        println!("ABC");
    } else {
        println!("ARC");
    }
}
