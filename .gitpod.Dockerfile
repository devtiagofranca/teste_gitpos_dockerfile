FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc.
# RUN sudo apt-get update \
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    && sudo apt-get install -y \
        redis-server \
        composer \
        php \
        php-all-dev \
        php-bcmath \
        php-ctype \
        php-curl \
        php-date \
        php-gd \
        php-intl \
        php-json \
        php-mbstring \
        php-mysql \
        php-net-ftp \
        php-pgsql \
        php-sqlite3 \
        php-tokenizer \
        php-xml \
        php-zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* 
    
