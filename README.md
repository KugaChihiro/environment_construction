# README

## 作成したリソース一覧
- マネージド ID
- Log Analytics ワークスペース
- コンテナー アプリ
- Container Apps 環境
- コンテナー レジストリ
- Azure OpenAI
- 音声サービス
- 静的 Web アプリ
- ストレージ アカウント
- （キー コンテナー）

## ディレクトリ構造
```
├── README.md
└── by_terraform
    ├── main.tf
    ├── modules
    │   ├── cognitive_account
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── container_analyze_workspace
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── container_app
    │   │   ├── main.tf
    │   │   ├── main_copy.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── container_app_environment
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── container_registry
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── key_vault
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── staticwebapp
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── storage_account
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   ├── storage_container
    │   │   ├── main.tf
    │   │   ├── output.tf
    │   │   ├── variables.tf
    │   └── user_assigned_identity
    │       ├── main.tf
    │       ├── output.tf
    │       ├── variables.tf
    └── output.tf
```

## Terraform モジュールの構成
- `main.tf` と `output.tf` をはじめとする親モジュールで、変数へ代入する具体的な値を決定し、リソースの作成をスタートさせる。
- 基本的には、リソースごとに作成されている子モジュールで、リソース定義のフォーマットを集約している。

### 例外
- OpenAI と Speech Service については `cognitive_account` モジュールに集約。
- Storage Account と Storage Container は別のモジュールで作成。

## 新しいリソース作成の手順
1. 作成時に、各モジュールの変数に代入する固有の値を含むファイルのみ変更する。
   - `by_terraform/main.tf`
   - `by_terraform/modules/container_app/main.tf`
2. ただし、上記のファイルは機密情報を含むため、Git から除外している。
3. `main_copy.tf` を参考にして適宜値を入力すること。

