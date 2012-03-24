# to use no fast-forward by deafult
function git() {
  if [[ $@ == merge* ]]; then

    if [[ $@ == *--no-ff* ]]; then
      command git "$@"
      return
    fi

    if [[ $@ == *--ff* ]]; then
      command git "$@"
    else
      command git "$@" --no-ff
    fi

  else
    command git "$@"
  fi
}
