require 'rails_helper'

describe Cart do
  describe 'instance methods' do
    before :each do
      @cart = Cart.new({
        '1' => 2,
        '2' => 3,
        })
    end
    it '.total_count' do
      expect(@cart.total_count).to eq(5)
    end
    it '.add_song' do
      @cart.add_song(1)
      @cart.add_song(2)

      expect(@cart.contents).to eq({'1' => 3, '2' => 4})
    end
  end
end
