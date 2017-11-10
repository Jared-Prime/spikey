# spikey

spikey is for spiking or experimenting with code. it uses docker containers to isolate your runtime; just write code in the appropriate directories and use the prebuilt commands to interact with what you made.

Contributions are welcome under the contribution guidelines (forthcoming)

## Full Setup:
1. clone the repository at https://github.com/Jared-Prime/spikey
2. `cd spikey`
3. `make build`
4. start writing code!

## `Dockerfile` locations:
- [postgres (services/postgres/Dockerfile)](https://github.com/Jared-Prime/spikey/blob/master/services/postgres/Dockerfile)
- [ruby (services/ruby/Dockerfile)](https://github.com/Jared-Prime/spikey/blob/master/services/ruby/Dockerfile)
- [go (services/go/Dockerfile)](https://github.com/Jared-Prime/spikey/blob/master/services/go/Dockerfile)
