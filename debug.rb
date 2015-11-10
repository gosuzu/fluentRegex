require 'fluent/config'
require 'fluent/parser'
require 'fluent/engine'

#log_sample
log = '12.345.67.89	-	-	[07/Mar/2015:06:59:59 +0900]	"GET /test/test HTTP/1.1"	200	58215	"-	->	/test/test/"	"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"	"-"	"SESSIONID=123456; Path=/"	"123456"	text/html'

#log_format
regexp = /^(?<host>.+?)\t(?<logname>.+?)\t(?<user>.+?)\t(?<time_stamp>.+?)\t(?<request>.+?)\t(?<http_status>.+?)\t(?<content_length>.+?)\t(?<http_refere>.+?)\t(?<allow>.+?)\t(?<path_info>.+?)\t(?<user_agent>.+?)\t(?<cookie>.+?)\t(?<set_cookie>.+?)\t(?<custom>.+?)\t(?<content_type>.+?)$/

#parser
parser = Fluent::TextParser::RegexpParser.new(regexp)
parser.call(log)


p parser.call(log)


