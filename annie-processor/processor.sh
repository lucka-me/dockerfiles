#!/bin/sh

queueFile=${QUEUE_FILE:-./queue.txt}
outputPath=${OUTPUT_PATH:-./downloads}

echo Annie Processor

while
    while
        line=$(head -n 1 $queueFile)
        [ ! -z $line ]
    do
        sed 1d $queueFile
        annie -o $outputPath $line
    done
do
    inotifywait -e modify $queueFile
done