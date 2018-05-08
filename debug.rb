require 'fluent/config'
require 'fluent/parser'
require 'fluent/engine'

#log_sample
log = '127.0.0.1 	 - 	 [08/May/2018:13:39:38 +0900] 	 "GET /test.html?aaa HTTP/1.1"	304 	 0 	 "-"	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" 	 "-" 	 "-"'

#nginx logformat#
# log_format  main  '$remote_addr \t $remote_user \t [$time_local] \t "$request"' \t '$status \t $body_bytes_sent \t "$http_referer"' \t '"$http_user_agent" \t "$http_x_forwarded_for" \t "$request_body"';

regexp = /^(?<remote_addr>.+?)\t(?<remote_user>.+?)\t(?<time_stamp>.+?)\t(?<request>.+?)\t(?<http_status>.+?)\t(?<content_length>.+?)\t(?<http_refere>.+?)\t(?<user_agent>.+?)\t(?<forwarded>.+?)\t(?<request_body>.+?)$/


#parser
parser = Fluent::TextParser::RegexpParser.new(regexp)
parser.call(log)


p parser.call(log)


