# WP Engine SFTP Utility Image

## Credentials
```bash
# .env
WPE_HOSTNAME=install.sftp.wpengine.com
WPE_PORT=2222
WPE_USERNAME=install-username
WPE_PASSWORD=password
```

## Usage
```bash
make install

# Download a single file
ENV_FILE=$(pwd)/.env wpe-sftp readme.html

# Download everything
ENV_FILE=$(pwd)/.env wpe-sftp "*"
```

