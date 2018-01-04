#!/bin/bash

echo "http://localhost:3000/people/index"

#
# $HOME/Working/RubyOnRails
#               PostgresRailsApp
#               RailsApp
#
# routes.rb
#   get 'cards/index'
#   get 'cards', to: 'cards#index'
#
cd $HOME/Working/RubyOnRails
for var in `ls -1`; do echo $var;grep -e "index" ./$var/config/routes.rb | grep -v "to:" | sed "s/^.*\'\(.*\)\/.*$/  \1/" ;done 

