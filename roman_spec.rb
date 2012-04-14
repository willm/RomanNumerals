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
  
  it "returns V for 5" do
    roman = Roman.new
    roman.parse(5).should eq('V')
  end
  
  it "returns VI for 6" do
    roman = Roman.new
    roman.parse(6).should eq('VI')
  end
  
  it "returns VII for 7" do
    roman = Roman.new
    roman.parse(7).should eq('VII')
  end
  
  it "returns VIII for 8" do
    roman = Roman.new
    roman.parse(8).should eq('VIII')
  end
  
  it "returns IX for 9" do
    roman = Roman.new
    roman.parse(9).should eq('IX')
  end
  
  it "returns X for 10" do
    roman = Roman.new
    roman.parse(10).should eq('X')
  end
  
  it "returns XI for 11" do
    roman = Roman.new
    roman.parse(11).should eq('XI')
  end
end
