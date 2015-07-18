# znc_bitlbee
ZNC and Bitlbee

## ZNC Help

Before getting started just run:

```bash
$ docker run fxdgear/znc-bitlbee
```

This will output the help for the ZNC process

## Setup ZNC Conf file

To setup the ZNC config file run run: 

```bash
$ docker run -it --rm -v $HOME/.znc:/data/ fxdgear/znc-bitlbee --makeconf
```

This will walk you through an interactive menu creating a configuration file for ZNC. 

## Run ZNC

To run znc:

```bash
$ docker run -d -v $HOME/.znc:/data/ fxdgear/znc-bitlbee -f
```

This will run the znc process in the "forground" of the container, which will allow you to run `docker logs -f <container_id>` to view the output of znc. 

