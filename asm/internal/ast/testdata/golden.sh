#!/bin/bash

# Parse command line arguments.
if [ $# -ne 1 ]; then
	echo "Usage: llfmt.sh FILE.ll"
	exit 1
fi
ll_file=$1
golden_file=$1.golden

# Create .golden file.
cp ${ll_file} ${golden_file}

# Remove comments.
sar -i '(^|[\n])[ \t]*;[^\n]*[\n]' '${1}' ${golden_file}

# Replace spaces with tabs.
sar -i '[\n]    ' '\n\t\t' ${golden_file}
sar -i '[\n]  ' '\n\t' ${golden_file}

# Remove extra newlines.
sar -i '[\n][\n]' '\n' ${golden_file}

# Remove zero value key-value pairs in specialized metadata nodes.
sar -i ', isLocal: false' '' ${golden_file}
sar -i ', runtimeVersion: 0' '' ${golden_file}
