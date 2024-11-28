# Pixel Brush Flakes
Just a collection of devshell flakes I use for my projects organised by toolchains.
Makes it easier for me to spin up new projects.

# Usage
Can either just download the relevant flake i.e.

```bash
xh --download 'https://raw.githubusercontent.com/danruto/pb-flakes/refs/heads/main/.envrc' --output .envrc
xh --download 'https://raw.githubusercontent.com/danruto/pb-flakes/refs/heads/main/rust.nix' --output flake.nix
```

or pull it as a git submodule and symlink the files.

Once it's there activate it via direnv `direnv allow`

Add any other packages to the `flake.nix` as required
