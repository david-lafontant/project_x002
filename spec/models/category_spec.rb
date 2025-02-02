require 'rails_helper'

RSpec.describe Category, type: :model do
  
  before :all do
   @category = create(:category)
  end

  it "is valid with valid attribute" do
     expect(@category).to be_valid
  end

  it "is invalid if attribute length < 3" do
     category1 = build(:category, category: "io");
     expect(category1).to_not be_valid
  end

  it "is invalid if attribute's length > 30" do
    category2 = build(:category, category: "vive le plan quinquennal vive la plan quinquennal")
    expect(category2).to_not be_valid
  end

  it "is invalid if attribute's length > 30" do
    category3 = Category.create(category: "ultimate")
    expect(category3).to_not be_valid
  end
end
