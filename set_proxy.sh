if [ $# -eq 1 ]; then
  git config --global http.proxy $1
  git config --global https.proxy $1
  npm -g config set proxy $1
  npm -g config set https-proxy $1
else
  git config --global --unset http.proxy
  git config --global --unset https.proxy
  npm -g config delete proxy
  npm -g config delete https-proxy
fi
npm -g config list
