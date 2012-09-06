# to avoid locking the terminal when opining emacs, emacsclient, or evince
function emacs() {
    if [[ $@ == *-nw* ]]; then
        command emacs "$@"
    else
        command emacs -mm "$@" &
    fi
}

function emacsclient() {
    if [[ $@ == *-nw* ]]; then
        command emacsclient "$@"
    else
        command emacsclient "$@" &
    fi
}

function evince() {
    command evince "$@" &
}
