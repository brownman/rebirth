
# Prefer local library over installed version.
$:.unshift( File.join( File.dirname(__FILE__), "..", "lib" ) )

require 'rebirth'
include Rebirth


describe "Numeric#nearly_equal?" do
  
  it "should be true if within the threshold" do
    (0.4).should be_nearly_equal(0.41, 0.02)
  end

end
