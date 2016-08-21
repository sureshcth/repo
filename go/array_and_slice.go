package main

import "fmt"

func main(){
	var array[3] int 
	array[0] = 1
	array[1] = 2
	array[2] = 3
	array_1 := [5]int{6, 7, 8, 9, 10}
	slice := array_1[:3]
	array_2 := [...]int{10, 11, 12, 13, 14, 15}
	fmt.Printf("%v : %v : %v : %v\n", array, array_1, slice, array_2);
	fmt.Printf("Length of array_1 %d\n", len(array_1));
	fmt.Printf("length and cap of slice %d, %d\n", len(slice), cap(slice));
}
