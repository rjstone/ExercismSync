module main

fn is_pangram(phrase string) bool {
	mut s := []string{}
	for r in phrase.to_lower().runes_iterator() {
		if r >= `a` && r <= `z` {
			s << r.str()
		}
	}
	s.sort()
	mut uniq := 2
	for i in 1 .. s.len - 1 {
		if s[i] != s[i - 1] { uniq += 1 }
	}
	return uniq == 26
}
