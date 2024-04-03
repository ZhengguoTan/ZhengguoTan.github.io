#/bin/bash -l

FILES=$(ls *.png)

for F in ${FILES}; do

    PRE=${F%.png}
    SUF=${PRE#*-}

    THREE=$(printf "%03d" "$SUF")

    RENAME=VidS1-${THREE}.png

    echo "${F} --> ${RENAME}"

    mv ${F} ${RENAME}

done
