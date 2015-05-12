require "rails_helper"

RSpec.describe "Top" do
  it "renders top page" do
    get "/"
    expect(response.status).to eq 200
  end
end
