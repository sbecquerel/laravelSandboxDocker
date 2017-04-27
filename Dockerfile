FROM php:7.1-apache

# Install essentials
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y zsh emacs-nox git tree wget less zip unzip --no-install-recommends \
    && rm -r /var/lib/apt/lists/* 

# Install oh-my-zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh

COPY ./source/.zshrc /root/.zshrc

# Install jq
RUN cd /opt \ 
    && mkdir jq \
    && wget -O ./jq/jq http://stedolan.github.io/jq/download/linux64/jq \
    && chmod +x ./jq/jq \
    && ln -s /opt/jq/jq /usr/local/bin

# Get composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === \
       '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { \
       echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');"

# Configure apache
RUN a2enmod rewrite

# Create laravel's project
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel5 \
    && chown -R www-data:www-data laravel5
