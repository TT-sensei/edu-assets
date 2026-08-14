# edu-assets

小学生向けWeb教材で共通利用する画像アセット集です。

## Badge catalog

GitHub Pagesを有効にすると、[Common Badgesの一覧サイト](./)で30種類のバッジをカテゴリー別に確認できます。検索、画像プレビュー、画像URLのコピーにも対応しています。

## Common Badges

`assets/badges/common/` contains reusable achievement badges that are independent of subject area. Each badge is a transparent 512×512 PNG. Use the stable path below from GitHub Pages:

`https://tt-sensei.github.io/edu-assets/assets/badges/common/<slug>/badge.png`

| File | 日本語名 | 意味・獲得条件の例 | Preview |
|---|---|---|---|
| `first-step/badge.png` | はじめの一歩 | 初めて学習に取り組んだ | ![first-step](assets/badges/common/first-step/badge.png) |
| `challenger/badge.png` | チャレンジャー | 新しい課題に挑戦した | ![challenger](assets/badges/common/challenger/badge.png) |
| `courage/badge.png` | 勇気の一歩 | 苦手な問題にも挑戦した | ![courage](assets/badges/common/courage/badge.png) |
| `explorer/badge.png` | エクスプローラー | 新しい分野を試した | ![explorer](assets/badges/common/explorer/badge.png) |
| `adventurer/badge.png` | 学びの冒険者 | 学習の冒険を始めた | ![adventurer](assets/badges/common/adventurer/badge.png) |
| `great-answer/badge.png` | ナイスアンサー | 問題に正解した | ![great-answer](assets/badges/common/great-answer/badge.png) |
| `perfect/badge.png` | パーフェクト | 1セットを全問正解した | ![perfect](assets/badges/common/perfect/badge.png) |
| `clear/badge.png` | クリア | ステージを最後まで終えた | ![clear](assets/badges/common/clear/badge.png) |
| `mission-complete/badge.png` | ミッション達成 | 指定された課題を達成した | ![mission-complete](assets/badges/common/mission-complete/badge.png) |
| `champion/badge.png` | チャンピオン | すばらしい成績を残した | ![champion](assets/badges/common/champion/badge.png) |
| `keep-going/badge.png` | 継続パワー | 継続して学習した | ![keep-going](assets/badges/common/keep-going/badge.png) |
| `hard-worker/badge.png` | 努力家 | 何度も練習して力を伸ばした | ![hard-worker](assets/badges/common/hard-worker/badge.png) |
| `never-give-up/badge.png` | あきらめない心 | 間違い直しに取り組んだ | ![never-give-up](assets/badges/common/never-give-up/badge.png) |
| `comeback/badge.png` | カムバック | 失敗後に立て直した | ![comeback](assets/badges/common/comeback/badge.png) |
| `steady-progress/badge.png` | 一歩ずつ | 少しずつ記録を伸ばした | ![steady-progress](assets/badges/common/steady-progress/badge.png) |
| `level-up/badge.png` | レベルアップ | スキルレベルが上がった | ![level-up](assets/badges/common/level-up/badge.png) |
| `growth/badge.png` | 成長の芽 | 前よりできることが増えた | ![growth](assets/badges/common/growth/badge.png) |
| `power-up/badge.png` | パワーアップ | 新しい力を身につけた | ![power-up](assets/badges/common/power-up/badge.png) |
| `new-skill/badge.png` | 新スキル | 新しい技能を習得した | ![new-skill](assets/badges/common/new-skill/badge.png) |
| `mastery/badge.png` | マスター | 技能を安定して使えた | ![mastery](assets/badges/common/mastery/badge.png) |
| `focus/badge.png` | 集中モード | 集中して課題に取り組んだ | ![focus](assets/badges/common/focus/badge.png) |
| `speed/badge.png` | スピードスター | すばやく正確に解けた | ![speed](assets/badges/common/speed/badge.png) |
| `combo/badge.png` | コンボ | 連続正解を達成した | ![combo](assets/badges/common/combo/badge.png) |
| `streak/badge.png` | ストリーク | 連続日数・連続達成を更新した | ![streak](assets/badges/common/streak/badge.png) |
| `accuracy/badge.png` | 正確無比 | 正確に問題を解いた | ![accuracy](assets/badges/common/accuracy/badge.png) |
| `discovery/badge.png` | 発見 | 新しいことに気づいた | ![discovery](assets/badges/common/discovery/badge.png) |
| `idea/badge.png` | ひらめき | よい考えや方法を見つけた | ![idea](assets/badges/common/idea/badge.png) |
| `knowledge/badge.png` | 知識の本 | 必要な知識を身につけた | ![knowledge](assets/badges/common/knowledge/badge.png) |
| `treasure/badge.png` | トレジャー | 特別な成果を見つけた | ![treasure](assets/badges/common/treasure/badge.png) |
| `special/badge.png` | スペシャル | レアな特別実績を達成した | ![special](assets/badges/common/special/badge.png) |

## Usage

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/badges/common/great-answer/badge.png"
  alt="ナイスアンサーバッジ"
  width="96"
  height="96"
>
```

各アプリ側では、獲得条件と表示名だけをアプリの学習設計に合わせて設定してください。画像ファイルは教科に依存しないため、理科・算数・国語・社会などで同じバッジを利用できます。

## Design and extension guide

生成ルール、配色、ファイル命名規則、100種類以上へ拡張するときの追加手順は [`docs/BADGE_PROMPTS.md`](docs/BADGE_PROMPTS.md) にまとめています。

追加時は、既存slugを変更せず、`assets/badges/common/<new-slug>/badge.png` を追加してください。文字・数字を画像に入れず、獲得条件や日本語名は利用アプリ側または一覧データ側で管理します。
