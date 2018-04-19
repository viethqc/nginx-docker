docker run 	-d \
		--name nginx \
		-v "$(pwd)"/web.conf:/etc/nginx/conf.d/web.conf \
		-v "$(pwd)"/nginx.conf:/etc/nginx/nginx.conf \
                -v "$(pwd)"/cert:/etc/nginx/cert \
		-p 8432:8432 \
		-it nginx:1.0.5

