load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def helm_repositories():
    skylib_version = "1.7.1"
    http_archive(
        name = "bazel_skylib",
        type = "tar.gz",
        url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format(skylib_version, skylib_version),
        sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
    )

    http_archive(
        name = "helm",
        sha256 = "90c28792a1eb5fb0b50028e39ebf826531ebfcf73f599050dbd79bab2f277241",
        urls = ["https://get.helm.sh/helm-v3.17.2-linux-amd64.tar.gz"],
        build_file = "@com_github_jmthvt_rules_helm//:helm.BUILD",
    )

    http_archive(
        name = "helm_osx",
        sha256 = "3e240238c7a3a10efd37b8e16615b28e94ba5db5957247bb42009ba6d52f76e9",
        urls = ["https://get.helm.sh/helm-v3.17.2-darwin-amd64.tar.gz"],
        build_file = "@com_github_jmthvt_rules_helm//:helm.BUILD",
    )
