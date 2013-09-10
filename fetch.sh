#!/bin/bash
for i in {1..10000}
do
  url=`curl http://www.v2ex.com/api/members/show.json?id=$i | ./JSON.sh | grep '\["website"\]' | cut -f2`
  echo "index: "$i"  |"$url"|"
  if [ x$url != "x\"\"" -a x$url != "x\"None\"" ]; then
    url=${url#\"}
    url=${url%\"}
    echo $url
    if [ ${url:0:4} != "http" ]; then
      url="http://"$url
      echo "after: "$url
    fi
    echo $url >> all.txt
  fi
  #sleep 2s
done
