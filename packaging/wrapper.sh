### Tutorial 1

# #!/bin/bash
# set -e

# # Figure out where this script is located.
# SELFDIR="`dirname \"$0\"`"
# SELFDIR="`cd \"$SELFDIR\" && pwd`"

# # Run the actual app using the bundled Ruby interpreter.
# exec "$SELFDIR/lib/ruby/bin/ruby" "$SELFDIR/lib/app/hello.rb"


#Tutorial 2

#!/bin/bash
set -e

# Figure out where this script is located.
SELFDIR="`dirname \"$0\"`"
SELFDIR="`cd \"$SELFDIR\" && pwd`"

# Tell Bundler where the Gemfile and gems are.
export BUNDLE_GEMFILE="$SELFDIR/lib/vendor/Gemfile"
unset BUNDLE_IGNORE_CONFIG

# Run the actual app using the bundled Ruby interpreter, with Bundler activated.
exec "$SELFDIR/lib/ruby/bin/ruby" -rbundler/setup "$SELFDIR/lib/app/hello.rb"