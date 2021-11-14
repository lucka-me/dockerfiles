#!/bin/sh

queueFile=${QUEUE_FILE:-./queue.txt}
outputPath=${OUTPUT_PATH:-./downloads}

echo Annie Processor

while
    while
        line=$(head -n 1 $queueFile)
        [ ! -z $line ]
    do
        tail -n +2 $queueFile > /tmp/annie-queue && cat /tmp/annie-queue > $queueFile && rm /tmp/annie-queue
        echo "Executing: annie -o $outputPath $line"
        annie -o $outputPath $line
    done
do
    inotifywait -e modify $queueFile
done