<h1 align="center">HLS Proxy Docker Image</h1>

Image based on the official 64bit version of HLS proxy.
The basic pattern for starting a hls-proxy instance is Docker Compose.
Package version, address, port are set in the .env file.

## Installation

Get this repository
```
git clone https://github.com/john-ea/hls-proxy-docker
```
Create docker-compose environment file
```
cp env-example .env
```
Edit your configuration
```
vim .env
```
Start container
```
docker-compose up
```

The proxy will be available on http://localhost:8080 or http://hls_proxy_ip:8080

Instead of hls_proxy_ip use any local computer address or hostname where hls-proxy runs

HLS-Proxy works with the config-path parameter and saves all settings in a separate config directory

<br />

> More information at official site [HLS-Proxy](https://www.hls-proxy.com)
