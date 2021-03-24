#!/bin/sh

# DC revision number
export DC_REVISION=$(git describe --always --all)

# Update dcrevision.inc
echo "const dcRevision = '$DC_REVISION';" >> $2/units/dcrevision.inc

# Return revision
echo $DC_REVISION
