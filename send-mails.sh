#!/bin/sh
for f in mails/*.html ; do 
  cat $f | mutt -e "set content_type=text/html" -s "HTML email with $f as body" recipient@example.com
done