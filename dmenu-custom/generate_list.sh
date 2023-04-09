#!/bin/sh

find /usr/share/applications ~/.local/share/applications -name '*.desktop' | sed 's|.*/||;s|\.desktop||' | sort > apps
