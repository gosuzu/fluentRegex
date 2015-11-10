fluentd regex test 

## description
fluentdのformatに使う正規表現のテスト


```
mkdir work
cd work
git clone xxxx 
```

## bundle install

```
bundle install
```

## 実行

```
bundle exec ruby debug.rb
```

## 結果

```
[1447051688, {"host"=>"12.345.678.9", "logname"=>"-", "user"=>"-", "time_stamp"=>"[07/Mar/2015:06:59:59 +0900]", "request"=>"\"GET /test/test HTTP/1.1\"", "http_status"=>"200", "content_length"=>"58215", "http_refere"=>"\"-", "allow"=>"->", "path_info"=>"/test/test/\"", "user_agent"=>"\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\"", "cookie"=>"\"-\"", "set_cookie"=>"\"SESSIONID=123456; Path=/\"", "custom"=>"\"123456\"", "content_type"=>"text/html"}]
```



