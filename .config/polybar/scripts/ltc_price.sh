#!/bin/sh

rate=$(curl -sf curl https://api.coinmarketcap.com/v2/ticker/2/ | grep "price" | grep -oE "[0-9]*\....." | colrm 5 )
rate=$(LANG=C printf "%.2f" "$rate")

echo "$rate "
