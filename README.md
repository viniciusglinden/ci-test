
```sh
docker login registry.gitlab.com
docker build -t registry.gitlab.com/viniciusglinden/ci-test .
# or
docker tag <image id> registry.gitlab.com/viniciusglinden/ci-test
docker push registry.gitlab.com/viniciusglinden/ci-test
```
