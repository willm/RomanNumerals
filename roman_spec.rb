#require 'roman.rb'
require_relative 'roman.rb'

RSpec.configure do |config|
  config.color_enabled = true
end


describe Roman, 'Roman' do
  roman = Roman.new

  it "returns I for 1" do
    roman.parse(1).should eq('I')
  end

  it "returns II for 2" do
    roman.parse(2).should eq('II')
  end

  it "returns III for 3" do
    roman.parse(3).should eq('III')
  end

  it "returns IV for 4" do
    roman.parse(4).should eq('IV')
  end
  
  it "returns V for 5" do
    roman.parse(5).should eq('V')
  end
  
  it "returns VI for 6" do
    roman.parse(6).should eq('VI')
  end
  
  it "returns VII for 7" do
    roman.parse(7).should eq('VII')
  end
  
  it "returns VIII for 8" do
    roman.parse(8).should eq('VIII')
  end
  
  it "returns IX for 9" do
    roman.parse(9).should eq('IX')
  end
  
  it "returns X for 10" do
    roman.parse(10).should eq('X')
  end
  
  it "returns XI for 11" do
    roman.parse(11).should eq('XI')
  end
  
  it "returns XIV for 14" do
    roman.parse(14).should eq('XIV')
  end
  
  it "returns XV for 15" do
    roman.parse(15).should eq('XV')
  end
  
  it "returns XVI for 16" do
    roman.parse(16).should eq('XVI')
  end
  
  it "returns XX for 20" do
    roman.parse(20).should eq('XX')
  end
  
  it "returns XXIX for 29" do
   roman.parse(29).should eq('XXIX')
  end
  
  it "returns L for 50" do
    roman.parse(50).should eq('L')
  end

  it "returns XL for 40" do
    roman.parse(40).should eq('XL')
  end

  it "returns XC for 90" do
    roman.parse(90).should eq('XC')
  end
  
  it "returns C for 100" do
    roman.parse(100).should eq('C')
  end
  
end
