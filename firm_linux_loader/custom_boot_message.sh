#!/bin/bash

echo
read -p "Custom boot message: "  message
echo "Color list: https://gist.github.com/marcotw2/e3cf66bc2a69c499a5b36cf659674a14"
read -p "Color (uppercase) (optional): " color

if [ -z "$color" ]
then
      sed -i "61i\        Debug(\"$message\");" arm9/source/main.c
else
      sed -i "61i\        DebugColor(COLOR_$color,\"$message\");" arm9/source/main.c
fi
