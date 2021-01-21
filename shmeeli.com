##
# You should look at the following URL's in order to grasp a solid understanding
server {
	listen 80 default_server;
	listen [::]:80 default_server;


	root /home/shmeeli/www/main;

	# Add index.php to the list if you are using PHP
	index index.html;

	server_name shmeeli.com www.shmeeli.com;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}

}

