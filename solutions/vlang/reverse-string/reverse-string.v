module main

// reverse_string returns a given string in reverse order
fn reverse_string(str string) string {
	mut tmp := []string{}
	for i := str.len - 1 ; i >= 0; i -= 1 {
		tmp << str[i..i+1]
	}
	return tmp.join('')
}
