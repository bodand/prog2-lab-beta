git clone %~1 %~2
cd %~2
git apply --reject --ignore-space-change --ignore-whitespace --whitespace=fix ..\%~2.patch
