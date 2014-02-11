require 'spec_helper'

describe Vote do
   describe "associations" do
    it { should belong_to :user}
    it { should belong_to :votable}
  end
end
