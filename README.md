![pipeline](https://gitlab.com/viniciusglinden/ci-test/badges/main/pipeline.svg)

[Gitlab badges](https://docs.gitlab.com/ee/user/project/badges.html)

# Workflow

Once the project is builable and ready:

- Choose or create container image
  - When doing a docker image, the working directory will be taken care by
    gitlab
- Create a [`.gitlab-ci.yml`](./.gitlab-ci.yml) file, describing the steps
- Commit and push

# Container image

```sh
podman login registry.gitlab.com
podman build -t registry.gitlab.com/viniciusglinden/ci-test .
# or
podman tag <image id> registry.gitlab.com/viniciusglinden/ci-test
podman push registry.gitlab.com/viniciusglinden/ci-test
```

## GitLab variables

[See all gitlab
variables](https://docs.gitlab.com/ee/ci/variables/predefined_variables.html).
See job to check exported variables.
