require 'amazon/ecs'
require 'active_support'
require 'active_support/core_ext'

Amazon::Ecs.configure do |options|
    options[:AWS_access_key_id] = ''
    options[:AWS_secret_key] = ''
    options[:associate_tag] = ''
    options[:search_index]      = 'Books'                      # 商品種別
    options[:response_group]    = 'Medium'                     # レスポンスに含まれる情報量(ふつう
    options[:country]           = 'jp'                         # 国
end

puts res = Amazon::Ecs.item_search("Ruby")
puts res.get_element('EAN').to_s.gsub!(/<ENN>|<\/ENN>/)
