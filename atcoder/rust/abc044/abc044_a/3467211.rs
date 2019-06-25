// Contest ID: abc044
// Problem ID: abc044_a ( https://atcoder.jp/contests/abc044/tasks/abc044_a )
// Title: A. 高橋君とホテルイージー / Tak and Hotels (ABC Edit)
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 09:57:14 +0000 UTC ( https://atcoder.jp/contests/abc044/submissions/3467211 ) 

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
    let k = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let x = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let y = line.trim().parse::<i32>().unwrap();
    if n <= k {
        println!("{}", n * x);
    } else {
        println!("{}", k * x + (n - k) * y);
    }
}
