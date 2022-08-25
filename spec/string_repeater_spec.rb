require "../lib/string_repeater.rb"

RSpec.describe StringRepeater do
  it "multiplies string by integer value of second gets" do
    io = double :io
    expect(io).to receive(:puts).and_return("Hello. I will repeat a string many times.")
    expect(io).to receive(:puts).and_return("Please enter a string")
    expect(io).to receive(:gets).and_return("TWIX")
    expect(io).to receive(:puts).and_return("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).and_return("Here is your result:")
    expect(io).to receive(:puts).and_return("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")

    string_repeater = StringRepeater.new(io)
    string_repeater.run
  end
end


#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX