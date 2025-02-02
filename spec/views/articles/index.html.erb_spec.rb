require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "Title",
        subtitle: "Subtitle",
        content: nil
      ),
      Article.create!(
        title: "Title",
        subtitle: "Subtitle",
        content: nil
      )
    ])
  end

  it "renders a list of articles" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Subtitle".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
