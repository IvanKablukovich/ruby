require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe "Model associations" do
    it { expect(user).to have_many(:tasks)}
  end
end
