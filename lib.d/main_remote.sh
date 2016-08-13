#
# lib.d/main_remote.sh for dex -*- shell-script -*-
#

main_remote(){

  local runstr="display_help"
  FORCE_FLAG=false

  if [ $# -eq 0 ]; then
    display_help 2
  else
    while [ $# -ne 0 ]; do

      #@TODO migrate to argparsing (getopts?) to supports add --force
      case $1 in
        add|ls|pull|rm)   runstr="dex-remote-$1"
                          if [ $1 = "add" ]; then
                            arg_var "$2" __remote_name && shift
                            arg_var "$2" __remote_url && shift
                          else
                            arg_var "$2" __sourcestr && shift
                          fi
                          ;;
        -f|--force)       FORCE_FLAG=true ;;
        -h|--help)        display_help ;;
        *)                unrecognized_arg "$1" ;;
      esac
      shift
    done
  fi

  dex-init
  $runstr
  exit $?
}
