// Contest ID: abc080
// Problem ID: abc080_a ( https://atcoder.jp/contests/abc080/tasks/abc080_a )
// Title: A. Parking
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 09:54:58 +0000 UTC ( https://atcoder.jp/contests/abc080/submissions/3577027 ) 

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
    let t = it.next().unwrap();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    if t * a < b {
        println!("{}", t * a);
    } else {
        println!("{}", b);
    }
}
