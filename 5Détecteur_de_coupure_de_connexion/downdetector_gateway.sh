#!/bin/bash
route=$(ip route | grep 'via' | cut -d ' ' -f3)

if [[ ! $route =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Ce PC n'a pas de passerelle par défaut !"
exit 1
fi

echo "L'adresse passerelle est :" $route


if [[ $# -ne 1 ]]; then
while true
do
ping $route -c 1 -w 2 >/dev/null
if [ $? -eq 0 ]
then
echo -n "!"
else
echo -n "."
fi
sleep 3
done

fi

while true
do
ping $1 -c 1 -w 2 >/dev/null
if [ $? -eq 0 ]
then
echo -n "!"
else
echo -n "."
fi
sleep 3
done

