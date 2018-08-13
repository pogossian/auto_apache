1. Clone rep 

```
git clone https://github.com/pogossian/auto_apache.git
```

2. Go to directory and build

```
docker build -t apache_php
```

3. Run container

```
docker run -d -v $(pwd)/html:/var/www/html -p 80:80 apache_php
```
