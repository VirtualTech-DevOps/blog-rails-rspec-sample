require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Hash password" do
    example "正常系" do
      member = User.new
      member.password = "baukis"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example "純正常系(nil)" do
      member = User.new(hashed_password: "x")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end