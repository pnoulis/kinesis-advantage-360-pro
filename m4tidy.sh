#!/usr/bin/awk -f

{
    # Skip lines that are comments or empty
    if ($0 ~ /^[ \t]*$/) next          # empty line
    if ($0 ~ /^[ \t]*##/) next          # comment line

    # Check if the line ends with a backslash
    if (sub(/\\$/, "")) {
        # Remove the backslash and append to buffer (no newline yet)
        buffer = buffer $0
        next
    } else {
        # Add the line to buffer and print it
        line = buffer $0
        buffer = ""

        # Squash whitespace
        gsub(/[ \t]+/, " ", line)

        # Remove keybinding visual aid ``
        gsub(/[`']/, "", line)

        # Trim leading/trailing spaces if you want:
        sub(/^ /, "", line)
        sub(/ $/, "", line)

        print line
    }
}

END {
    # If buffer has leftover (file ended with backslash line), print it
    if (buffer != "")
        print buffer
}
