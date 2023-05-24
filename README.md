# yamllint Container Image

Container image containing the latest [yamllint](https://yamllint.readthedocs.io/en/latest/) release

## Usage

```sh
docker run --rm -v "$(pwd):/yaml" ghcr.io/mhutter/yamllint yamllint .
```

### In GitLab CI runner

```yaml
stages:
  - lint
  # ...

yaml_syntax:
  stage: lint
  image: ghcr.io/mhutter/yamllint
  script:
    # remove single-line ERB code upfront to make templates lintable
    - find . -type f -name '*.y*ml.erb' -exec sed -i '/^<%.*%>$/d' {} \;
    - yamllint $(find . -type f -name '*.y*ml.erb')
    - yamllint $(find . -type f -name '*.y*ml')
#...
```

## License

MIT (see `LICENSE`)

---

> [Manuel Hutter](https://mhu.dev/) -
> GitHub [@mhutter](https://github.com/mhutter) -
