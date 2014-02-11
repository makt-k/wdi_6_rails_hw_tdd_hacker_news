require 'spec_helper'

describe Submission do
  describe "validations" do
    it { should validate_presence_of(:link)}
    it { should validate_presence_of(:description)}
  end

  describe "associations" do
    it { should belong_to :user}
    it { should have_many :comments}
  end
end
