# ubuntu-setup

いつも使ってる環境の復旧用シェルスクリプト

## 使い方

パスワードを求められる場合があるので適宜入力して進む

```bash
git clone https://github.com/Cola0912/ubuntu-setup.git
chmod ubuntu-setup/setup.sh +x
./ubuntu-setup/setup.sh
```

## klipper用エイリアス

接続したMCUのパスを'by-id'と'by-path'の両方を表示
setup.sh実行時に.bashrcに追記

```bash
lsdev
```

### 実行例

```bash
$ lsdev
by-id is
//dev/serial/by-id/usb-Klipper_*********
by-path is
//dev/serial/by-path/pci-00*********
```
