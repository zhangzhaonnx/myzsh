bashman() {
	man bash | less -p"^       ${1} "
}

fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

bg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin bg %-
    else
        builtin bg %"$@"
    fi
}

disown() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin disown %-
    else
        builtin disown %"$@"
    fi
}

acp() {
	git add .
	git commit -m 'add gtb comments'
	git push -u origin comments
}

ac() {
    git add .
	git commit -m "${1:-first commit}"
}
