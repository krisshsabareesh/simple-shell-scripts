if ls -l | grep '^d.*linux-files' > /dev/null
then
  ls | grep linux | while read line; do mv "$line" "linux-files/"; done
else
  mkdir linux-files
  ls | grep linux | while read line; do mv "$line" "linux-files/"; done
fi
