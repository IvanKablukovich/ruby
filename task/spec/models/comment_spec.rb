require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:comment) { build(:comment) }
  let(:field) { build(:comment) }
  let(:username) { build(:comment) }

  describe "Model validations" do
    it { expect(field).to validate_presence_of(:field) }
    it { expect(username).to validate_presence_of(:username) }
  end

  describe "Model associations" do
    it { expect(comment).to belong_to(:task) }
  end
end
