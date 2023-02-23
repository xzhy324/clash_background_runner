# Clash Background Runner

A script to automatically download and run `clash` in background for either GUI or terminal.

Make the clash client run quietly and will not be interrupted by terminal exits.

## prerequisite

set the link in `./update_subscribes` to the one your subscribe to.

a possible `./update_subscribes` may look like:

```bash
#!/bin/bash
# set variable below to your subscribe link for clashx
subscribe="https://clash.provider.com/link/abcd123?clash=1"
...
```



## usage

to download and initialize clashx, run

```bash
chmod +x ./setup_clash
./setup_clash
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