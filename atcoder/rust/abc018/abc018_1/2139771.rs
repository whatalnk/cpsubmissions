// Contest ID: abc018
// Problem ID: abc018_1 ( https://atcoder.jp/contests/abc018/tasks/abc018_1 )
// Title: A. 豆まき
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 04:29:00 +0000 UTC ( https://atcoder.jp/contests/abc018/submissions/2139771 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let a = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let b = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let c = line.trim().parse::<i32>().unwrap();
    if a > b {
        if b > c {
            println!("{}\n{}\n{}", 1, 2, 3);
        } else {
            if a > c {
                println!("{}\n{}\n{}", 1, 3, 2);
            } else {
                println!("{}\n{}\n{}", 2, 3, 1);
            }
        }
    } else {
        if a > c {
            println!("{}\n{}\n{}", 2, 1, 3);
        } else {
            if b > c {
                println!("{}\n{}\n{}", 3, 1, 2);
            } else {
                println!("{}\n{}\n{}", 3, 2, 1);
            }
        }
    }
}
