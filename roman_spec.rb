require_relative 'roman'

RSpec.configure do |config|
  config.color_enabled = true
end


describe Roman, do
  it "returns I for 1" do
    roman = Roman.new
    roman.parse(1).should eq('I')
  end

  it "returns II for 2" do
    roman = Roman.new
    roman.parse(2).should eq('II')
  end

  it "returns III for 3" do
    roman = Roman.new
    roman.parse(3).should eq('III')
  end

  it "returns IV for 4" do
    roman = Roman.new
    roman.parse(4).should eq('IV')
  end
end
