package main

import "fmt"

func main(){
	monthdays := map[string]int{
		"Jan": 31, "Feb": 28, "Mar": 31,
		"Apr": 30, "May": 31, "Jun": 30,
		"Jul": 31, "Aug": 31, "Sep": 30,
		"Oct": 31, "Nov": 30, "Dec": 31,
	}

	for key, val:= range(monthdays){
		fmt.Printf("%s =>  %d\n", key, val);
	}
	monthdays["Feb"] = 29
	var value int
	var present bool
	value, present = monthdays["Jan"]  #If exists present has value true
	v, ok := monthdays["Jan"]  #Hence, the "comma ok" form
	delete(monthdays, "Mar")  #Delete "Mar", always rainy anyway
}
