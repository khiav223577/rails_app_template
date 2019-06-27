RSpec.configure do |config|
  config.before(:suite) do
    Timecop.freeze(Time.parse("2017-09-13T17:10:06.445+08:00"))
  end

  config.after(:suite) do
    Timecop.return
  end
end
