# clear build
rm -rf dist
# make build dir
mkdir dist

# replace version
sed "s/%VERSION%/${npm_package_version}/" src/index.html > dist/index.html