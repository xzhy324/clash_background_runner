# Clash Background Runner

A script to automatically download and run `clash` in background for either GUI or terminal.

Make the clash client run quietly and will not be interrupted by terminal exits.

## SETUP

### Way1 [recommended]

run 
```bash
./setup_clash.sh https://your.clash.subsribe_links.here/
```

### Way2

1. set the link in `./update_subscribes` to the one your subscribe to.
2. run `./setup_clash.sh` WITHOUT args.

a possible `./update_subscribes` may look like:

```sh
#!/bin/bash
# set variable below to your subscribe link for clashx
subscribe=https://your.clash.subsribe_links.here/
...
```



## USAGE

to download and initialize clashx, run

```bash
chmod +x ./setup_clash
./setup_clash https://your.clash.subsribe_links.here/
```

to update servers from the link you subscribe to,  run

```bash
./update_subscribes.sh
```

to start clash service, run

```bash
./bgrun_clash.sh
```



## REF

https://github.com/Dreamacro/clash