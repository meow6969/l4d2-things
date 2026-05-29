#!/bin/bash

#https://developer.valvesoftware.com/wiki/Looping_a_sound#With_a_hex_editor_or_script

# Wave file cue chunk according to https://www.recordingblogs.com/wiki/cue-chunk-of-a-wave-file
# Original script by SavageX; permission is granted to modify as needed.

ECHO="echo -en"
OUT="cue.bin"

function append_bytes() {
    $ECHO $1 >> $OUT
}

function append_cue() {
    OUT=$1

    # chunk ID, "cue "
    append_bytes "cue\x20"

    # size of the chunk: (12 + 24) - 8 = 28
    # Why -8? ID and size don't count.
    append_bytes "\x1C\x00\x00\x00"

    # number of data points: 1
    append_bytes "\x01\x00\x00\x00"

    # ID of data point: 1
    append_bytes "\x01\x00\x00\x00"

    # position: If there is no playlist chunk, this is zero
    append_bytes "\x00\x00\x00\x00"

    # data chunk ID
    append_bytes "data"

    # chunk start: 0
    append_bytes "\x00\x00\x00\x00"

    # block start: 0
    append_bytes "\x00\x00\x00\x00"

    # sample start: 0
    append_bytes "\x00\x00\x00\x00"
}

rm -f cue.bin
append_cue cue.bin

