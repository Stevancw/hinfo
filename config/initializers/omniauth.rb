Rails.application.config.middleware.use OmniAuth::Builder do
	OmniAuth.config.full_host = "http://localhost:3000/"
  provider :twitter, 'P9ekJ77axIGYKxYaxSYw', '61nvQTuTGpuZgYFlae30L79qo6rf23BPaxBaUZq78Y'
  provider :facebook, '366917943326034', '63bfd81b15dbf4dc8f5518a492cdf742'
end
