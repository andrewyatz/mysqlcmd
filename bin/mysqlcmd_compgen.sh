_mysqlcmd_complete() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts=$(mysqlcmd -compgen ${COMP_WORDS[@]:1})
  COMPREPLY=( $( compgen -W "${opts}" -- ${cur} ) )
  return 0
}

complete -F _mysqlcmd_complete mysqlcmd