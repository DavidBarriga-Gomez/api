require 'rails_helper'

RSpec.describe Transaction, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    it { should validate_presence_of :credit_card_number }
    it { should validate_presence_of :result }
  end

  describe 'relationships' do
    it { should belong_to :invoice }
  end
end
