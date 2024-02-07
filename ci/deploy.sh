if [ "x${DEPLOY}" = "xyes" ]
then
    sh ci/make_release.sh
    find . -maxdepth 1 -type d -not -name '.' -exec zip -r {}.zip {} \;
    find . -maxdepth 1 -type f -name '*.zip' -exec sh ci/upload-artefact.sh {} \;
fi

