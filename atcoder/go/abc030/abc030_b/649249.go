// Contest ID: abc030
// Problem ID: abc030_b ( https://atcoder.jp/contests/abc030/tasks/abc030_b )
// Title: B. 時計盤
// Language: Go (1.4.1)
// Submitted: 2016-02-29 04:43:33 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/649249 ) 

package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m float64
	fmt.Scan(&n, &m)
	shorter := math.Mod(n, 12)*30 + m*0.5
	longer := m * 6
	ans := math.Abs(longer - shorter)
	fmt.Println(math.Min(ans, 360-ans))
}
