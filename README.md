# edu-assets

小学校向けWeb教材で共通利用する、バッジ・報酬画像のアセット集です。[Badge Lab](https://tt-sensei.github.io/edu-assets/)で検索、分類・タグ絞り込み、プレビュー、URLコピー、選択画像のダウンロードができます。

## 収録内容と構造

- 共通バッジ：`assets/badges/common/`
- 教科別バッジ：`assets/badges/japanese/`、`math/`、`science/`、`social/`
- エレメント：`assets/elements/<属性>/level-1|level-2|level-3/badge.png`
- コレクション：`assets/collections/<シリーズ>/common|rare|super-rare|secret/<項目>/badge.png`

`assets/collections/`には、現在`animal`、`dinosaur`、`fantasy`、`flower`、`fruit`、`gem`、`insect`、`music`、`sea-animal`、`space`、`treasure`があります。

## 基本的な使い方

教材サイトで表示する場合は、原則として `assets/web/` の WebP を参照します。元画像と同じ相対パスを保った軽量版なので、対応関係を迷いません。

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/web/badges/common/clear/badge.webp"
  alt="クリアバッジ"
>
```

Badge Labの一覧・プレビューは軽量WebPを表示し、「WebP URLをコピー」で教材からそのまま参照できます。各カードの「マスターPNG」から高解像度原本を開くこともできます。選択ダウンロードでは、マスターPNGと軽量WebPを切り替えられます。Web版がまだ用意されていない画像は、元画像へフォールバックできます。

### マスター素材とWeb版

- `assets/badges/`、`assets/elements/`、`assets/collections/`：編集・再加工・高解像度出力に使うマスター素材。削除・上書きしない。
- `assets/web/`：教材サイト表示用の軽量WebP。元画像と同じ構造・ファイル名で対応する。
- 教材サイト：原則 `assets/web/.../*.webp` を使用する。
- Web版が存在しない場合のみ、対応する元画像へフォールバックする。
- 新しい教材を作るAIは、元の大容量PNGを直接読み込まず、まず `assets/web/` に対応ファイルがあるか確認する。

Web版は既存画像を再生成したものではなく、元画像を縮小・Web配信用にエンコードした表示用コピーです。透明背景は維持しています。

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/badges/common/clear/badge.png"
  alt="クリアバッジ"
>
```

フォルダ名や画像URLを推測しないでください。構造や画像は追加・整理されるため、利用時にBadge LabまたはGitHub上の実ファイルを確認します。

## 教材制作共通基盤

| プロジェクト | 担当 | GitHub | Pages |
| --- | --- | --- | --- |
| edu-components | 動作・ロジック | [Repository](https://github.com/TT-sensei/edu-components) | [Catalog](https://tt-sensei.github.io/edu-components/) |
| edu-effects | UI・CSS・視覚演出 | [Repository](https://github.com/TT-sensei/edu-effects) | [Catalog](https://tt-sensei.github.io/edu-effects/) |
| sounds-recipe- | Web Audio APIの教材用サウンドレシピ | [Repository](https://github.com/TT-sensei/sounds-recipe-) | [Catalog](https://tt-sensei.github.io/sounds-recipe-/) |
| edu-assets | バッジ・エレメント・コレクション画像 | [Repository](https://github.com/TT-sensei/edu-assets) | [Catalog](https://tt-sensei.github.io/edu-assets/) |

AIで教材を作成する場合の`BadgeManager`、獲得イベント、CSS演出、サウンドとの連携は、[edu-componentsのAI-GUIDE](https://github.com/TT-sensei/edu-components/blob/main/AI-GUIDE.md)を参照してください。
