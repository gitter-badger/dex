#
# lib.d/p/help.sh for dex -*- shell-script -*-
#

p/help_uninstall(){
  cat <<-EOF

Leave not a trace

Uninstalling <image> removes its prefixed and global (non-prefixed) counterpart
as well as removing its image and, if forced, any persisted runs.

Usage: dex uninstall <image> [options]

  # remove sed (/usr/local/bin/dsed) and its global counterpart
  dex uninstall sed

Options:

  -h|--help|help        Display help
  -f|--force            force remove built image and any persisted runs.
  -p|--prefix           Prefix to use when (un)installing dexecutables
                        (defaults to \$DEX_BIN_PREFIX:-'d')
  -t|--target           Target directory for (un)installations
                        (defaults \$DEX_BIN_DIR:-'/usr/local/bin')

EOF
}
