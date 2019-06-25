// Contest ID: abc026
// Problem ID: abc026_b ( https://atcoder.jp/contests/abc026/tasks/abc026_b )
// Title: B. N重丸
// Language: Go (1.4.1)
// Submitted: 2016-03-11 17:31:59 +0000 UTC ( https://atcoder.jp/contests/abc026/submissions/656978 ) 

package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	rs := []int{}
	// fmt.Println(a[0:3])
	var n, r int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&r)
		rs = append(rs, r)
	}
	sort.Sort(sort.IntSlice(rs))
	r2 := 0
	if n%2 == 0 {
		for i := 0; i < n/2; i++ {
			r2 -= rs[2*i] * rs[2*i]
			r2 += rs[2*i+1] * rs[2*i+1]
		}
	} else {
		for i := 0; i < n/2; i++ {
			r2 += rs[2*i] * rs[2*i]
			r2 -= rs[2*i+1] * rs[2*i+1]
		}
		r2 += rs[n-1] * rs[n-1]
	}
	fmt.Println(float64(r2) * math.Pi)
}
