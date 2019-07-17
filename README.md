# Dockerfile for Topcoder Java Arena

## Usage

``` console
$ docker build -t topcoderarena .
$ ./run.sh topcoderarena
```

Greed ([zenozen/topcoder-greed](https://github.com/zenozen/topcoder-greed)) も同時に自動で導入されます。

## メモ

-   Applet は unix socket (`/tmp/.X11-unix`) 経由で X11 forwarding している。
-   X11 forwarding のために Docker の中と外で `$USER` と UID を一致させる必要がある。これは `/etc/passwd` と `/etc/group` を用いて解決した。
-   Docker Compose は使いたかったが user の指定が面倒だったので諦めた。
