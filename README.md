# Homebrew tap

Packages for crb2nu projects.

## edilint

Install the prebuilt CLI on macOS or Linux (ARM64 or x86-64):

```sh
brew install --cask crb2nu/tap/edilint
edilint --version
```

Upgrade after a new release:

```sh
brew update
brew upgrade --cask crb2nu/tap/edilint
```

Uninstall with `brew uninstall --cask edilint`.

The cask downloads the matching archive from
[edilint releases](https://github.com/crb2nu/edilint/releases) and verifies its
SHA-256 checksum. The unsigned CLI has its macOS quarantine attribute removed
by the installation hook. Linux casks require Homebrew 6 or newer.

## Publication

edilint's GoReleaser configuration publishes `Casks/edilint.rb` directly after a
successful release. The `TAP_GITHUB_TOKEN` Actions secret in `crb2nu/edilint`
must be a fine-grained token restricted to `crb2nu/homebrew-tap`, with repository
Contents permission set to read and write. Metadata read access is implicit.
No account permissions or access to other repositories are needed.

Renew the token before its expiration and replace the Actions secret. The tap
workflow audits the cask and verifies installation on Apple Silicon and Intel
when a release updates it. GitLab remains canonical for edilint source changes;
this GitHub repository contains only the Homebrew distribution metadata.
