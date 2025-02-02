require 'rails_helper'

RSpec.describe Article, type: :model do
  before :all do
     @article = create(:article)
  end

  it "is valid with valid attributes" do
     expect(@article).to be_valid
  end

  it "is invalid without title attributes" do
    article2 = build(:article, title: nil)
    expect(article2).to_not be_valid
  end

  it "is invalid with same title" do
    article3 = build(:article, subtitle: "sub zero is dead", content: "il est mort comme il a vecu, en salaud")
    expect(article3).to_not be_valid
  end

it "is not valid without a content" do
  article3 = build(:article, title: "les elections toussa toussa ..", content: nil)
  expect(article3).to_not be_valid
end
it "is not valid if title is more than 70 characters" do
  article3 =  build(:article, title: "les chausettes de l'archiduchesse sont seiches, les habits neufs du president Mao aussi, idem pour le blazer de l'ami Kim et le foulard de frere sourire")
end
end
