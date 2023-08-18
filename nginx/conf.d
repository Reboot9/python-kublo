server {
    listen 80;
    server_name djangochallenge-django-1;

    location / {
        proxy_pass http://djangochallenge-django-1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Host $host;
    }
}
