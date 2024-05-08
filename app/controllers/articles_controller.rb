require 'net/http'
class ArticlesController < ApplicationController
  def index
    print "ArticlesController#index\n\n"
    result = Net::HTTP.get(URI.parse('https://reqres.in/api/users?page=2'))
    print result
  end

  def another
    uri = URI('https://graph.facebook.com/v19.0/321326354386720/messages')
    params = {
      :access_token => 'EAALbFDkqMBQBO1geZBHGthGZBpgR3hURvP2CcDhVGzvkkvOJhLpnmvjwGXjIHFq18ZBrw44qZAgXxb5LNnbr2xly1g37AumIbZAg5yi5wUkkUzAEeqeQlYBFifyWqRqrZCaFZBPqRAgqgWe1uKoKE0iq7lUG3q2kY4VPiWEMnUloTAiS3dQetRMUgyfEFZBmg7M1zMF0QDfZBOrVLZBLw9bctls3DM9xU2TU4ZD',
    }
    uri.query = URI.encode_www_form(params)

    req = Net::HTTP::Post.new(uri)
    req.content_type = 'application/x-www-form-urlencoded'
    req['User-Agent'] = 'Mozilla/5.0 (X11; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0'
    req['Accept'] = '*/*'
    req['Accept-Language'] = 'en-GB'
    # req['Accept-Encoding'] = 'gzip, deflate, br'
    req['Referer'] = 'https://developers.facebook.com/'
    req['Origin'] = 'https://developers.facebook.com'
    req['Connection'] = 'keep-alive'
    req['Sec-Fetch-Dest'] = 'empty'
    req['Sec-Fetch-Mode'] = 'cors'
    req['Sec-Fetch-Site'] = 'same-site'

    req.set_form_data({
      '_reqName' => 'object:phone-number-id/messages',
      '_reqSrc' => 'WhatsAppBusinessSendMessageCAPI',
      'locale' => 'en_US',
      'messaging_product' => 'whatsapp',
      'method' => 'post',
      'pretty' => '0',
      'suppress_http_code' => '1',
      'text' => 'Ahoy',
      'to' => '919809864275',
      'type' => 'text',
      'xref' => 'f13861e21e5ce245f'
    })

    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    res = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(req)
    end
   
    render json: { "sdfgdsgdf": "sgdfgdfgdfg" }
  end
end
