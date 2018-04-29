source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.1'

gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false

# View and Form
gem 'simple_form'
gem 'haml-rails'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap'

gem 'uglifier', '>= 1.3.0'

gem 'webpacker'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'

gem 'kaminari'                 # ページャ
gem 'rails_autolink'           # URLの自動リンク化
gem 'cocoon'                   # 1対多子要素の一括更新
gem 'ransack'                  # 検索フォーム生成
gem 'i18n_generators'          # locale ファイル生成
gem 'i18n-tasks'               # locale ファイルの整理整頓
gem 'enum_help'                # enum の i18n

# Authentication
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pundit'

# Uploader
gem 'carrierwave'              # 画像アップローダ
gem 'mini_magick'              # CarrierWaveでリサイズなどができるようになる
gem 'fog'                      # CarrierWaveでAmazon S3に保存できるようになる

group :development, :test do
  gem 'rspec'                  # テストツール
  gem 'rspec-rails'            # RailsでRspecが使える
  gem 'factory_bot_rails'      # テストデータの生成
  gem 'database_cleaner'       # テスト実行後にDBをクリア
  gem 'capybara'               # ブラウザでの操作をシミュレートしてテストができる
  gem 'faker'                  # それらしいランダムデータを生成する
  gem 'gimei'                  # 日本語のランダムデータを生成する

  # debug
  gem 'better_errors'          # エラー画面を見やすくする
  gem 'binding_of_caller'      # better_errorsのエラー画面でREPLが使える
  gem 'tapp'                   # プリントデバッグがしやすくなる
  gem 'pry-rails'              # railsでpryが使える
  gem 'pry-byebug'             # pryでデバックコマンドが使える
  gem 'awesome_print'          # プリントデバッグの出力を整形
  gem 'hirb'                   # SQLの結果を見やすく整形してくれる
  gem 'hirb-unicode'           # hirbの日本語対応
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails_best_practices'   # Railsのベストプラクティスを教えてくれる
end
