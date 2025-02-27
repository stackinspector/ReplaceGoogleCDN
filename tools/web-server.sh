#!/bin/bash
set -exu

__DIR__=$(
  cd "$(dirname "$0")"
  pwd
)


__PROJECT__=$(readlink -f ${__DIR__}/../)
echo ${__PROJECT__}



# 用于 解决google 翻译不能用的

# 原理： https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Proxy_servers_and_tunneling/Proxy_Auto-Configuration_PAC_file

cp -f ${__PROJECT__}/tools/web/proxy.js ${__PROJECT__}/tools/web/proxy.pac

python3 -m http.server 8000
