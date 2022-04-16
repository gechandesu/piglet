# piglet

piglet is a [Porkbun DNS API](https://porkbun.com/api/json/v3/documentation) CLI client.

Currently piglet can:

- Create a DNS record
- Edit record
- Delete DNS record
- Retrieve DNS records

# Installation

Just copy `piglet` to your PATH. For example:

```sh
cp piglet /usr/local/bin/
```

Install [jq](https://stedolan.github.io/jq/) to enable pretty output.

# Getting started

For first step setup the configuration file:

```sh
piglet config
```

piglet creates `~/.config/piglet.conf` file with API credentials.

Retrieve DNS records:

```sh
piglet -d example.org retrieve
```

Create A-record on subdomain `mail`:

```sh
piglet -d example.org create name=mail type=a content=127.0.0.1 ttl=3600
```

Edit A-record for `example.org` (change to 127.0.0.1):

```sh
piglet -d example.org edit id=220755500 type=a content=127.0.0.1
```

Delete DNS record by id:

```sh
piglet -d example.org delete id=220755592
```

See `piglet --help` for more info.
