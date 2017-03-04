require 'rails_helper'

RSpec.describe Perfomance, type: :model do
  context 'relations' do
  end

  context 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:image) }
  end
end
