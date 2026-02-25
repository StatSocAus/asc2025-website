#!/usr/bin/env sh

# Download a complete copy of the ASC 2025 website.


# Inspiration from:
#
# https://www.linuxjournal.com/content/downloading-entire-web-site-wget
# https://simpleit.rocks/linux/how-to-download-a-website-with-wget-the-right-way/
# https://superuser.com/questions/1415717/how-to-download-an-entire-site-with-wget-including-its-images

# Note:
# `--mirror` is equivalent to `--recursive --level=inf --timestamping`

wget \
    --continue            \
    --mirror              \
    --page-requisites     \
    --adjust-extension    \
    --convert-links       \
    --no-parent           \
    --output-file=log     \
    --wait=2              \
    --limit-rate=500K     \
    --user-agent=Mozilla  \
    --execute robots=off  \
    --span-hosts          \
    --domains=asc2025.net,assets.squarespace.com,fonts.googleapis.com,fonts.gstatic.com,images.squarespace-cdn.com,static1.squarespace.com \
    https://www.asc2025.net/
