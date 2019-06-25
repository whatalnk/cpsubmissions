// Contest ID: abc027
// Problem ID: abc027_b ( https://atcoder.jp/contests/abc027/tasks/abc027_b )
// Title: B. 島と橋
// Language: Go (1.4.1)
// Submitted: 2016-03-03 11:16:05 +0000 UTC ( https://atcoder.jp/contests/abc027/submissions/651358 ) 

package main

import "fmt"

func sum(a []int) int {
	ret := 0
	for i := 0; i < len(a); i++ {
		ret += a[i]
	}
	return ret
}

func main() {
	var n int
	fmt.Scan(&n)
	var aa []int
	var a int
	population := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		population += a
		aa = append(aa, a)
	}
	var ret int
	if population%n == 0 {
		people := population / n
		ret = 0
		for i := 0; i <= n-2; i++ {
			left := aa[0 : i+1]
			right := aa[i+1 : n]
			if people*(i+1) != sum(left) || people*(n-(i+1)) != sum(right) {
				ret++
			}

		}
	} else {
		ret = -1
	}
	fmt.Println(ret)
}
