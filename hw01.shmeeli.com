server {
	listen 80;

	root /home/shmeeli/www/hw01;

	# Add index.php to the list if you are using PHP
	index index.html;

	server_name hw01.shmeeli.com;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}

