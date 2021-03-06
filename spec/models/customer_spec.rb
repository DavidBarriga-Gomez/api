require 'rails_helper'

RSpec.describe Customer, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  describe 'relationships' do
    it { should have_many :invoices }
    it { should have_many(:merchants).through(:invoices) }
    it { should have_many(:transactions).through(:invoices) }
    it { should have_many(:invoice_items).through(:invoices) }
  end
end
