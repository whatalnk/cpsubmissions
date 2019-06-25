// Contest ID: arc080
// Problem ID: arc080_c ( https://atcoder.jp/contests/arc080/tasks/arc080_c )
// Title: E. Young Maids
// Language: Go (1.6)
// Submitted: 2017-08-08 06:32:14 +0000 UTC ( https://atcoder.jp/contests/arc080/submissions/1496554 ) 

package main

import "fmt"
import "container/heap"

type SegmentTree struct {
	dat []int
	n   int
}

var stEven SegmentTree
var stOdd SegmentTree

var intMax int
var maxN int

func stInit(nn int) SegmentTree {
	n := 1
	for n < nn {
		n *= 2
	}
	dat := make([]int, 2*n-1)
	for i := 0; i < 2*n-1; i++ {
		dat[i] = intMax
	}
	return SegmentTree{dat, n}
}

func (st *SegmentTree) update(k, a int) {
	k += (st.n - 1)
	st.dat[k] = a
	for k > 0 {
		k = (k - 1) / 2
		if st.dat[k*2+1] < st.dat[k*2+2] {
			st.dat[k] = st.dat[k*2+1]
		} else {
			st.dat[k] = st.dat[k*2+2]
		}
	}
}

func (st *SegmentTree) query(a, b, k, l, r int) int {
	if (r <= a) || (b <= l) {
		return intMax
	}
	if (a <= l) && (r <= b) {
		return st.dat[k]
	}
	vl := st.query(a, b, k*2+1, l, (l+r)/2)
	vr := st.query(a, b, k*2+2, (l+r)/2, r)
	if vl < vr {
		return vl
	}
	return vr
}

func wrapQuery(t string, a, b, k, l int) int {
	var ret int
	if t == "even" {
		if a%2 == 0 {
			ret = stEven.query(a, b, k, l, stEven.n)
		} else {
			ret = stOdd.query(a, b, k, l, stOdd.n)
		}
	} else {
		if a%2 == 0 {
			ret = stOdd.query(a, b, k, l, stOdd.n)
		} else {
			ret = stEven.query(a, b, k, l, stEven.n)
		}
	}
	return ret
}

type Item struct {
	min   int
	i     int
	left  int
	right int
}

type PriorityQueue []*Item

func (pq PriorityQueue) Len() int {
	return len(pq)
}
func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].min < pq[j].min
}
func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}
func (pq *PriorityQueue) Push(x interface{}) {
	*pq = append(*pq, x.(*Item))
}
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	x := old[n-1]
	*pq = old[0 : n-1]
	return x
}
func main() {
	intMax = 200001
	maxN = 1 << 17
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&arr[i])
	}
	stEven = stInit(n)
	stOdd = stInit(n)
	h := make(map[int]int)
	for i, v := range arr {
		h[v] = i
		if i%2 == 0 {
			stEven.update(i, v)
		} else {
			stOdd.update(i, v)
		}
	}
	q := make([]int, n)
	pq := &PriorityQueue{}
	heap.Init(pq)
	x := wrapQuery("even", 0, n, 0, 0)
	heap.Push(pq, &Item{x, h[x], 0, n})
	ii := 0
	for pq.Len() != 0 {
		item := heap.Pop(pq).(*Item)
		q[ii] = item.min
		ii++
		q1 := wrapQuery("odd", item.i, item.right, 0, 0)
		j := h[q1]
		q[ii] = q1
		ii++
		if item.i-item.left > 1 {
			x0 := wrapQuery("even", item.left, item.i, 0, 0)
			heap.Push(pq, &Item{x0, h[x0], item.left, item.i})
		}
		if j-(item.i+1) > 1 {
			x1 := wrapQuery("even", item.i+1, j, 0, 0)
			heap.Push(pq, &Item{x1, h[x1], item.i + 1, j})
		}
		if item.right-(j+1) > 1 {
			x2 := wrapQuery("even", j+1, item.right, 0, 0)
			heap.Push(pq, &Item{x2, h[x2], j + 1, item.right})
		}
	}
	for i := 0; i < n-1; i++ {
		fmt.Printf("%d ", q[i])
	}
	fmt.Println(q[n-1])
}
