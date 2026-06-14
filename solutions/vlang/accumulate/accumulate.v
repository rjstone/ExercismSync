module main

// no special support for tail recusion etc so iterate
fn accumulate_ints(values []int, operation fn (int) int) []int {
	mut tmp := []int{}
	for i in values {
		tmp << operation(i)
	}
	return tmp
}

// Because V functions cannot be overloaded[1], make another function
//  called `accumulate_strs` that does the same thing for strings
// instead of ints
fn accumulate_strs(values []string, operation fn (string) string) []string {
	mut tmp := []string{}
	for s in values {
		tmp << operation(s)
	}
	return tmp
}
