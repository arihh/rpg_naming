# RpgNaming

RPGに出てきそうな名前をランダムで返してくれるツールです。
取得する単語の長さを指定できるので、ゲームのサンプルデータ作成などで使う想定。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rpg_naming'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rpg_naming

## Usage

```
# モンスター名
RpgNaming.monster
=> "オーク"

# プレイヤー名
RpgNaming.player
=> "サスケ"

# 男性名
RpgNaming.male
=> "ユウ"

# 女性名
RpgNaming.female
=> "ルキア"

# 男性 or 女性名
RpgNaming.member
=> "サツキ"

# 5文字以上8文字以下の名前取得
RpgNaming.range(5, 8).monster
=> "ガーゴイル"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arihh/rpg_naming.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

