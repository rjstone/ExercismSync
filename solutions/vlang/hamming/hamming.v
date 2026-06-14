module main
import arrays

fn distance(a string, b string) !int {
    if a.len != b.len { return error('lengths must match!') }
    arr := arrays.group[string](a.split(''), b.split(''))
    cb := fn (acc int, e []string) int { return if e[0]==e[1] { acc } else { acc+1 } }
    return arrays.fold [[]string, int](arr, 0, cb)
}
