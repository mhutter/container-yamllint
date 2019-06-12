# YAMLlint image

Container image containing the latest [yamllint](https://yamllint.readthedocs.io/en/latest/) release


## Usage

```
docker run --rm -v "$(pwd):/yaml" mhutter/yamllint yamllint youryamlfiles.yaml
```

### In gitlab ci runner


```
stages:
  - lint
  # ...

yaml_syntax:
  stage: lint
  image: docker.io/mhutter/yamllint
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
