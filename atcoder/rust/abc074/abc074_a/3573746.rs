// Contest ID: abc074
// Problem ID: abc074_a ( https://atcoder.jp/contests/abc074/tasks/abc074_a )
// Title: A. Bichrome Cells
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 06:26:47 +0000 UTC ( https://atcoder.jp/contests/abc074/submissions/3573746 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let a = line.trim().parse::<i32>().unwrap();
    println!("{}", n * n - a);
}
