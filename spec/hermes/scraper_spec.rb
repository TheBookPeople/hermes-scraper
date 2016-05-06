require 'spec_helper'

describe Hermes::Scraper, :vcr do
  it 'has a version number' do
    expect(Hermes::Scraper::VERSION).not_to be nil
  end

  it 'gets public tracking data' do
    scraper = described_class.new('6005277042016680')
    data = scraper.scrape
    expect(data[0][:status]).to eq('Signature From Customer')
    expect(data[1][:datetime].to_s).to eq('2016-04-30T08:48:00+00:00')
  end
end
