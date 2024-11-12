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
        sha256 = "ff4ac230b73a15d66770a65a037b07e08ccbce6833fbd03a5b84f06464efea45",
        urls = ["https://get.helm.sh/helm-v3.3.0-linux-amd64.tar.gz"],
        build_file = "@com_github_jmthvt_rules_helm//:helm.BUILD",
    )

    http_archive(
        name = "helm_osx",
        sha256 = "3399430b0fdfa8c840e77ddb4410d762ae64f19924663dbdd93bcd0e22704e0b",
        urls = ["https://get.helm.sh/helm-v3.3.0-darwin-amd64.tar.gz"],
        build_file = "@com_github_jmthvt_rules_helm//:helm.BUILD",
    )
