module main

fn is_pangram(phrase string) bool {
	mut s := []string{}
	for c in phrase.to_lower().split('') {
		if c >= 'a' && c <= 'z' { s << c }
	}
	s.sort()
	mut uniq := 1
	for i in 1 .. s.len { // ranges are inclusive .. exclusive
		if s[i] != s[i - 1] { uniq += 1 }
	}
	return uniq == 26
}
