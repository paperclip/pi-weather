#!/bin/bash
mkdir -p /tmp/weather
cd ~
# python -m pywws.Hourly ~/weather/data
pywws-hourly -vvv ~/weather/data

function txt2html()
{
(
        echo "<html><title>$1</title><body>"
        cat webdata/$1.txt
        echo "</body></html>"
) >webdata/$1.html
}

txt2html 24hrs
txt2html 6hrs
txt2html 7days
txt2html allmonths
