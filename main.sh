#!/bin/bash - 
#===============================================================================
#
#          FILE:  main.sh
# 
#         USAGE:  ./main.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: JIN SHANG (), 
#  ORGANIZATION: 
#       CREATED: 2013年09月10日 22时09分34秒 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
#抓取10000个id，将url存储在all.txt中
sh fetch.sh

#去除空行
sed -i '/^$/d' all.txt

#过滤
sed -i '/weibo/d;/twitter/d;/google/d;/douban/d;/renren/d;/facebook/d;/ppweek/d' all.txt

#替换
sed -i 's/\\u002D/-/g' all.txt
