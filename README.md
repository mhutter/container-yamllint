# YAMLlint image

[![Docker Repository on Quay](https://quay.io/repository/mhutter/yamllint/status "Docker Repository on Quay")](https://quay.io/repository/mhutter/yamllint)

Container image containing the latest [yamllint](https://yamllint.readthedocs.io/en/latest/) release

## Usage

```sh
docker run --rm -v "$(pwd):/yaml" quay.io/mhutter/yamllint yamllint .
```

### In gitlab ci runner

```yaml
stages:
  - lint
  # ...

yaml_syntax:
  stage: lint
  image: quay.io/mhutter/yamllint
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

> [Manuel Hutter](https://hutter.io/) -
> GitHub [@mhutter](https://github.com/mhutter) -
> Twitter [@dratir](https://twitter.com/dratir)
