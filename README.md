# docker test

1. <https://docs.github.com/cn/actions/reference/environment-variables>
2. <https://docs.github.com/cn/actions/reference/environment-variables#default-environment-variables>
3. <https://docs.github.com/cn/actions/reference/context-and-expression-syntax-for-github-actions#contexts>

## debian repo 
```
RUN cat /etc/apt/sources.list && \
    sed -i 's|deb.debian.org|mirrors.ustc.edu.cn|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list && \
    apt update -qqy
```