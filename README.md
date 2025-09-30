[![Test](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/test.yml/badge.svg)](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/test.yml)
[![Tag and Release](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/tag-and-release.yml/badge.svg)](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/tag-and-release.yml)
[![Publish to my Bazel registry](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/publish.yml/badge.svg)](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/publish.yml)
[![Publish on Bazel Central Registry](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/publish-bcr.yml/badge.svg)](https://github.com/filmil/bazel_graphviz_foreign/actions/workflows/publish-bcr.yml)

# Summary

This project is a [Bazel] module for [Graphviz]. It uses `rules_foreign_cc` to
build Graphviz from source. The module downloads Graphviz version 14.0.0. The
purpose is to provide a hermetic build of Graphviz for Bazel projects.

In some contexts, compiling with `rules_foreign_cc` may be suboptimal. PRs
welcome to fix that.

[Bazel]: https://bazel.build/
[Graphviz]: https://graphviz.org/


# Bill-of-Material notices

You may notice that I have a few similar projects. This is my effort to provide
hermetic libraries for the upcoming Bazel modules world. Refer to
[standardization notes][stdn] for details.

[stdn]: https://hdlfactory.com/post/2025/09/29/getting-ready-for-the-brave-new-bazel-modules-world/

Other modules for the same library may be available. It is not my intention to
check for duplicated effort.

See [LICENSE](./LICENSE) for licensing information.

## Verify the build

```
bazel test //... && cd integration && bazel test //...
```

## Hermeticity

This build is entirely hermetic.


## Release Registry

The project publishes the relevant files to my [personal bazel registry][mcr]
version has not been added to the upstream [BCR][bcr].

This is often the case for pre-release versions.

Add the following to `.bazelrc`:

```
common --registry=https://bcr.bazel.build
common --registry=https://raw.githubusercontent.com/filmil/bazel-registry/main
```


[bcr]: https://registry.bazel.build/
[mcr]: https://github.com/filmil/bazel-registry
