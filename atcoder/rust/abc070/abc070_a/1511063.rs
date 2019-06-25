// Contest ID: abc070
// Problem ID: abc070_a ( https://atcoder.jp/contests/abc070/tasks/abc070_a )
// Title: A. Palindromic Number
// Language: Rust (1.15.1)
// Submitted: 2017-08-13 03:14:21 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/1511063 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
    let line = gets();
    let mut flag = true;
    for (a, b) in line.trim().chars().zip(line.trim().chars().rev()) {
        if a != b {
            flag = false;
            break;
        }
    }
    if flag {
        println!("Yes");
    } else {
        println!("No");
    }
}
