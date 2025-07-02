from debian:12-slim as builder-static
run apt-get update -y \
    && apt-get install -y curl git \
    && curl -Lo /tmp/hugo.deb 'https://github.com/gohugoio/hugo/releases/download/v0.125.1/hugo_extended_0.125.1_linux-amd64.deb' \
    && apt-get install -y /tmp/hugo.deb \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
copy . /app
workdir /app
run hugo --enableGitInfo

# from node:22-bookworm-slim as builder-optimizer
# workdir /app
# run npm install -G @divriots/jampack@0.24.0
# copy --from=builder-static /app/public /app/public
# run npx jampack ./public

from nginx:1.26.0 as serve
copy blog_intern.conf /etc/nginx/conf.d/blog_intern.conf
run rm /etc/nginx/conf.d/default.conf
copy --from=builder-static /app/public/ /data/www/
