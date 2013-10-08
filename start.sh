# meteorjs - meteorjs job file

description "MeteorJS"
author "Alex Babichev"

# When to start the service
start on runlevel [2345]

# When to stop the service
stop on runlevel [016]

# Automatically restart process if crashed
respawn

# Essentially lets upstart know the process will detach itself to the background
expect fork

chdir /home/dev/www/test

script

	export MONGO_URL=mongodb://localhost:27017/meteor
	export MAIL=/var/mail/sputnik
	export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
	export PWD=/home/sputnik
	export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript
	export HOME=/home/sputnik

	echo "---- start ----"
  cd /home/dev/www/test
	exec mrt

end script