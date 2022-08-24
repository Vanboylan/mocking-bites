require "../lib/catfacts.rb"
require 'uri'

RSpec.describe CatFacts do
  it "generates a cat fact" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
        URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Cat families usually play best in even numbers. Cats and kittens should be acquired in pairs whenever possible.","length":111}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: Cat families usually play best in even numbers. Cats and kittens should be acquired in pairs whenever possible."
  end
end