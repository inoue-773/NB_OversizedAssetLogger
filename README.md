
# Oversized Asset Logger for FiveM


Are you tired of tracking down all the oversized asset that are shown on server console? Well, this could be your lifesaver. This script automatically exports the names of oversized assets and save it into one txt file. You do not have to scroll up and down the entire server console to read through error messages anymore!
[日本語はこちら](https://github.com/inoue-773/NB_OversizedAssetLogger/tree/main?tab=readme-ov-file#%E3%82%B5%E3%82%A4%E3%82%BA%E3%81%8C%E5%A4%A7%E3%81%8D%E3%81%99%E3%81%8E%E3%82%8B%E3%82%A2%E3%82%BB%E3%83%83%E3%83%88%E3%83%AD%E3%82%B0%E5%87%BA%E5%8A%9B%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%97%E3%83%88)

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



# サイズが大きすぎるアセットログ出力スクリプト


FiveMのサーバーに何も考えずに車やMLOを入れると大抵以下のログがコンソールに出てくると思います。
```
Asset ~~~.ytd uses 100.0 MiB of physical memory. 
Oversized assets can and WILL lead to streaming issues (such as models not loading/rendering).
```
このログは直ちにサーバーのパフォーマンスに影響することはないものの、積み重なるととんでもないラグや低VRAMのクライアントでテクスチャ抜けなどを発生させるため、調整が必要です。

しかし、リソース数が多くなるにつれて、コンソールでログを追うのが難しくなります。私たちのサーバーでは500近くのリソースが動いていますが、コンソールはあっという間に流れるので追うのが大変です。

そこでこのツールでサイズが大きすぎるアセットのログのみを出力して、ファイルサイズの調整を行いやすくしましょう。
## 使い方

ダウンロードしてリソースフォルダに入れておくだけで勝手に動いてくれます。ただ、ensureする順番が非常に重要です。サーバーを起動する前にserver.cfgを編集して、リソース開始の順番を変更しましょう。

ここでは [vehicles] と [defaultmaps] カテゴリにオーバーサイズのytdファイルやydrファイルを格納していると仮定します。server.cfgではこんな感じになっていると思います。

```
ensure [qb]
ensure [standalone]
ensure [voice]
ensure [vehicles]
ensure [defaultmaps]
```

この場合、リソース開始の順序を下記のように変更しましょう。

```
ensure [qb]
ensure [standalone]
ensure [voice]
ensure NB_OversizedAssetLogger
ensure [vehicles]
ensure [defaultmaps]
```
サーバー再起動をすれば完了です。

再起動が終わると、rootディレクトリに Oversized_assets.txt が生成されます。デフォルトの場所は

```D:\txData\QBCoreFramework_XXXXX.base\Oversized_assets.txt``` です。

## Support

Contact me via Discord: nickyboi7

You can also find me here: https://discord.gg/flecity
## References

#### REGISTER_CONSOLE_LISTENER - FiveM natives
https://docs.fivem.net/natives/?_0x281B5448


## License

You can do whatever you want with this. Credits are always appreciated tho.
