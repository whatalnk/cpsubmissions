// Contest ID: abc027
// Problem ID: abc027_a ( https://atcoder.jp/contests/abc027/tasks/abc027_a )
// Title: A. 長方形
// Language: Go (1.4.1)
// Submitted: 2016-02-20 09:22:53 +0000 UTC ( https://atcoder.jp/contests/abc027/submissions/641557 ) 

package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	if a == b {
		fmt.Println(c)
	} else if b == c {
		fmt.Println(a)
	} else {
		fmt.Println(b)
	}
}
