module main

fn count_nucleotides(strand string) !map[string]int {
	mut counts := { 'A': 0, 'C': 0, 'G': 0, 'T': 0 }
	for c in strand {
		s := c.ascii_str()
		_ := counts[s] or { return error("${s} is not a valid nucleotide!") }
		counts[s] += 1
	}
	return counts
}
