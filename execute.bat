REM ============================================================
REM Batch script to migrate all files into Git LFS
REM ============================================================


REM Initialize Git LFS if not already done
git lfs install

REM Track every file type with LFS
git lfs track "*"

REM Rewrite history so all blobs are moved into LFS
git lfs migrate import --everything

echo ============================================================
echo Migration complete.
echo Please open and inspect your .gitattributes file now.
echo Ensure it contains valid LFS tracking rules (e.g. *.ext filter=lfs diff=lfs merge=lfs -text)
echo and does NOT contain pointer metadata like "version https://git-lfs.github.com/spec/v1".
echo ============================================================
pause

REM Stage and commit the corrected .gitattributes
git add .gitattributes
git commit -m "Update .gitattributes for LFS tracking"

REM Force push rewritten history to origin
git push --force --all
