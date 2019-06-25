// Contest ID: abc021
// Problem ID: abc021_a ( https://atcoder.jp/contests/abc021/tasks/abc021_a )
// Title: A. 足し算
// Language: Go (1.4.1)
// Submitted: 2016-02-25 23:29:42 +0000 UTC ( https://atcoder.jp/contests/abc021/submissions/644540 ) 

package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := n / 2
	b := n % 2
	fmt.Println(a + b)
	for i := 0; i < a; i++ {
		fmt.Println(2)
	}
	if b != 0 {
		fmt.Println(1)
	}
}
