# Web配信用画像

## 使い分け

| 用途 | 参照先 |
| --- | --- |
| 教材サイトの一覧・カード・獲得演出・コレクション表示 | `assets/web/.../*.webp` |
| 編集、再加工、高解像度出力、再変換 | 元の `assets/.../badge.png` |
| Web版がまだない画像 | 対応する元画像へフォールバック |

`assets/web/` は元画像と同じ相対パスを持ち、拡張子だけ `.png` から `.webp` に変わります。

例：

```text
assets/collections/gem/secret/prism-crystal/badge.png
assets/web/collections/gem/secret/prism-crystal/badge.webp
```

公開URLは次の形式です。

```text
https://tt-sensei.github.io/edu-assets/assets/web/<元画像と同じ相対パス>.webp
```

## 変換方針

- 元画像は削除・上書きしない。
- 透明背景を維持する。
- 原則 256×256px、元画像がそれより小さい場合は拡大しない。
- WebP品質は92。細い線、光沢、レアリティ装飾が崩れないことを優先する。
- 画像のデザイン、色、形、文字・数字は変更しない。

変換後に元画像を編集・再加工するときは、必ずマスター素材を使ってください。Web版からの再加工は避けます。
