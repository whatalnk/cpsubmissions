// Contest ID: abc049
// Problem ID: abc049_a ( https://atcoder.jp/contests/abc049/tasks/abc049_a )
// Title: A. 居合を終え、青い絵を覆う / UOIAUAI
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 10:50:10 +0000 UTC ( https://atcoder.jp/contests/abc049/submissions/3467510 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let s = line.trim();
    let vowels = vec!["a", "i", "u", "e", "o"];
    let mut flag = false;
    for x in vowels {
        if s == x {
            flag = true;
        }
    }
    if flag {
        println!("vowel");
    } else {
        println!("consonant");
    }
}
