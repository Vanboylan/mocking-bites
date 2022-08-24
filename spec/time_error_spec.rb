require "../lib/time_error.rb"
require 'uri'

RSpec.describe TimeError do
  it "returns the server time minus the current time" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
        URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"BST","client_ip":"88.108.200.177","datetime":"2022-08-24T14:42:40.550949+01:00","day_of_week":3,"day_of_year":236,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1661348560,"utc_datetime":"2022-08-24T13:42:40.550949+00:00","utc_offset":"+01:00","week_number":34}')
    time = Time.new(2022, 8, 24, 14, 42, 40)
    time_error = TimeError.new(fake_requester)
  expect(time_error.error(time)).to eq 0.550949
  end
end

