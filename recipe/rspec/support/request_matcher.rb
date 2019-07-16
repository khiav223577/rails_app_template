require "rspec/expectations"

RSpec::Matchers.define :be_json do
  match do |actual|
    actual.content_type == "application/json"
  end
end

RSpec::Matchers.define :have_message_code do |expected_key|
  match do |actual|
    actual.parsed_body["message_code"] == expected_key.to_s
  end
end

RSpec::Matchers.define :have_mail do
  match do |actual|
    actual.count > 0
  end
end

RSpec::Matchers.define :have_mail_content do |pattern|
  match do |actual|
    actual.body.raw_source.scan(pattern).empty? ? false : true
  end
end
