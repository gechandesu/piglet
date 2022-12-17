# piglet

**piglet** is a [Porkbun DNS API](https://porkbun.com/api/json/v3/documentation)
CLI client.

Currently **piglet** can:

- Create a DNS record
- Edit record
- Delete DNS record
- Retrieve DNS records

# Installation

1. Clone this Git-repository.
2. Install files.

Installation with Makefile:

```sh
# System-wide installation
sudo make install
# Local installation (into user's home dir)
PREFIX=~/.local make install
```

Manual installation:

```sh
# Just copy files into your PATH, for example:
sudo install -Dm755 piglet /usr/local/bin/piglet
sudo install -Dm644 completion.bash /usr/share/bash-completion/completions/piglet
```

Make sure your shell loads files from `/usr/local/share/bash-completion/completions`
or `~/.local/share/bash-completion/completions` for Bash completion.

Add to your **~/.bashrc**:

```sh
for completion in {/usr/local,~/.local}/share/bash-completion/completions/*; do
   [ -f "$completion" ] && . "$completion"
done
```

Create file `~/.config/piglet/domains.list` with your domains list (each domain on
new line) for complete domains names. For example:

```
example.com
another-domain.tld
```

# Getting started

For first step setup the configuration file:

```sh
piglet config
```

piglet creates `~/.config/piglet/piglet.conf` file with API credentials.

Retrieve DNS records:

```sh
piglet retrieve example.com
```

Create A-record on subdomain `mail`:

```sh
piglet create mail.example.com type=a content=127.0.0.1 ttl=3600
```

Edit A-record for `example.org` (change to 127.0.0.1):

```sh
piglet edit example.org id=220755500 type=a content=127.0.0.1
```

Delete DNS record by id:

```sh
piglet delete example.org id=220755592
```

See **piglet --help** for more info.
