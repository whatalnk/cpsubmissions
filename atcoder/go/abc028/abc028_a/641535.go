// Contest ID: abc028
// Problem ID: abc028_a ( https://atcoder.jp/contests/abc028/tasks/abc028_a )
// Title: A. テスト評価
// Language: Go (1.4.1)
// Submitted: 2016-02-20 08:26:50 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/641535 ) 

package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	if n < 60 {
		fmt.Println("Bad")
	} else if n < 90 {
		fmt.Println("Good")
	} else if n < 100 {
		fmt.Println("Great")
	} else {
		fmt.Println("Perfect")
	}
}
