require "../lib/interactive_calculator.rb"

RSpec.describe InteractiveCalculator do
  it "subtracts two numbers" do
    io = double :io
    expect(io).to receive(:puts).with("Hello I will subtract two numbers")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result").and_return("4 - 3 = 1")

    calculator = InteractiveCalculator.new(io)
    calculator.run
  end
end