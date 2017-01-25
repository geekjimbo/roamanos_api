require './lib/romanos'

describe "convertir de arabigos a romanos de 0-10" do

 {
   0 => "",
   1 => "I",
   2 => "II",
   3 => "III",
   4 => "IV",
   5 => "V",
   7 => "VII",
   8 => "VIII",
   9 => "IX",
   10 => "X"
 }.each do |arabigo, romano|
   it "el #{arabigo} se representa como un #{romano}" do
     expect(convert(arabigo)).to eq(romano)
   end
 end
end
