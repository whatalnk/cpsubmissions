// Contest ID: abc070
// Problem ID: abc070_a ( https://atcoder.jp/contests/abc070/tasks/abc070_a )
// Title: A. Palindromic Number
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:37:56 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/3557908 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s = line.trim();
    if s.chars().nth(0) == s.chars().last() {
        println!("Yes");
    } else {
        println!("No");
    }
}
