require 'rails_helper'

RSpec.describe "pages/index.html.erb", type: :view do
  it "renders the HTML template" do
    render
    expect(rendered).to match /Google/
  end
end
