# edu-assets — AI向けガイド

## 最優先ルール

**Web教材・GitHub Pagesで画像を表示するときは、`assets/web/` 以下の軽量WebPを最優先で使用してください。**

原本PNG/JPGはマスター素材です。軽量版が存在する場合、通常の教材画面・一覧・プレビュー・バッジ表示で原本を直接参照しないでください。

## AIが守ること

1. 教材サイト表示では、まず `assets/web/` に対応するWebPが実在するか確認する。
2. 軽量WebPが存在する場合は、そのURLを使用する。
3. Web版が存在しない場合のみ、対応する原本PNG/JPGへフォールバックする。
4. 原本は、高解像度ダウンロード、印刷、制作・再編集など、原本が必要な用途に限定する。
5. 原本PNG/JPGを削除・上書き・再生成・再圧縮しない。
6. 画像URLやフォルダ名を推測しない。Badge LabまたはGitHub上の実ファイルで存在を確認する。
7. 教材リポジトリへ画像を複製せず、公開済みのedu-assets URLを参照する。

## パスの考え方

Web版は原本と同じ相対構造を保ち、`assets/web/` 以下に配置されています。

```text
原本: assets/badges/common/clear/badge.png
Web用: assets/web/badges/common/clear/badge.webp
```

教材表示ではWeb用を選びます。

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/web/badges/common/clear/badge.webp"
  alt="クリアバッジ"
>
```

## 使い分け

- 教材画面・バッジ一覧・コレクション一覧・プレビュー → 軽量WebP
- 通常の正誤・達成・報酬表示 → 軽量WebP
- 高解像度ダウンロード → マスターPNG/JPG
- 印刷・制作・再編集 → マスターPNG/JPG
- Web版が未生成 → 原本へフォールバック可

## AIへの短い依頼文

```text
edu-assetsの画像を教材で使用するときは、assets/web/以下の軽量WebPを最優先してください。
軽量版が存在する場合、大容量の原本PNG/JPGを通常のWeb表示に使用しないでください。
画像パスは推測せず、Badge LabまたはGitHubで実在を確認してください。
原本は高解像度ダウンロード、印刷、制作・再編集など必要な用途に限定し、削除・上書きしないでください。
```
