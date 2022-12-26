#!/bin/bash

#add additional site
read -p "Enter domain name: " domain_name
site_id="$domain_name"-$(uuidgen | cut -b 1-8)
firebase hosting:sites:create $site_id

#setup deploy target for your site
firebase target:apply hosting $domain_name $site_id

#update firebase.json to include new target
sed -i "/\"hosting\": {/a \ \ \ \ \"target\": \"$domain_name\"," firebase.json

#command to deploy: firebase deploy --only hosting
