set -e

file=$(config file)

if test -z $file; then
  catmandu $(cli_args)
else
  catmandu $(cli_args) < $file
fi

