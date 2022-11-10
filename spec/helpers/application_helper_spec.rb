require "rails_helper"

RSpec.describe ApplicationHelper, :type => :helper do
  describe "#page_title" do
    it "returns the default title" do
      expect(helper.page_title).to eq("Tom is your friend")
    end
  end
end