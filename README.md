
# Oversized Asset Logger for FiveM


Are you tired of tracking down all the oversized asset that are shown on server console? Well, this could be your lifesaver. This script automatically exports the names of oversized assets and save it into one txt file. You do not have to scroll up and down the entire server console to read through error messages anymore!
## Usage

Simply download the script and put it into resource folder. It will do the rest of the work for you.

However, you need to keep in your mind that this script need to start BEFORE the oversized assets start. You can change the order in server.cfg.

Let's assume you have oversized ytd files and ydr files in [vehicles] and [defaultmaps] categories. Your server.cfg might look like this:

```
ensure [qb]
ensure [standalone]
ensure [voice]
ensure [vehicles]
ensure [defaultmaps]
```

In this case, you need to ensure the script before those...

```
ensure [qb]
ensure [standalone]
ensure [voice]
ensure NB_OversizedAssetLogger
ensure [vehicles]
ensure [defaultmaps]
```
and restart the server. 

After the server restart, you will see the Oversized_assets.txt on root directory, which is:

```D:\txData\QBCoreFramework_XXXXX.base\Oversized_assets.txt``` by default.



## Support

Contact me via Discord: nickyboi7

You can also find me here: https://discord.gg/flecity
## References

#### REGISTER_CONSOLE_LISTENER - FiveM natives
https://docs.fivem.net/natives/?_0x281B5448


## License

You can do whatever you want with this. Credits are always appreciated tho.
