// Contest ID: abc031
// Problem ID: abc031_a ( https://atcoder.jp/contests/abc031/tasks/abc031_a )
// Title: A. ゲーム
// Language: Go (1.4.1)
// Submitted: 2016-02-19 03:56:30 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/639883 ) 

package main

import (
	"fmt"
)
func main() {
	var a, d int
	fmt.Scan(&a)
	fmt.Scan(&d)
	if a < d {
		fmt.Println((a + 1) * d)
	} else {
		fmt.Println(a * (d + 1))
	}
}
