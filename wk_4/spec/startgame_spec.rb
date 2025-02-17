require_relative '../day_16.start_up_game'

RSpec.describe GamingConsole do 
let(:ps5){GamingConsole.new("PS5","Jess")}

  describe '#add_game' do
    context 'when storage is available'
      it 'adds games(titles) into console library' do
        expect(ps5.add_game("COD", 64)).to output("Not enough storage in console to add COD.").to_stdout
        expect(ps5.storage).to change.by(64)
        expect(ps5.library).to include("COD")
        
      end
    
  end
end

