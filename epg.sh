#!/bin/sh
. /etc/profile


wget -O $HOME/xmltv.xmltv http://lichphatsong.xyz/schedule/epg.xml
/usr/bin/socat open:$HOME/xmltv.xmltv UNIX-CONNECT:/var/lib/hts/.hts/tvheadend/epggrab/xmltv.sock
/usr/bin/socat open:$HOME/xmltv.xmltv UNIX-CONNECT:/home/hts/.hts/tvheadend/epggrab/xmltv.sock
