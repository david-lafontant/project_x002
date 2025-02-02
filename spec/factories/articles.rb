FactoryBot.define do
  factory :article do
    title { "Lorem ipsum dolor sim amet consectetur" }
    subtitle { "Lorem ipsum dolor sit amet" }
    content { "<h1>Hello world</h1>
    <img src='https://picsum.photos/200' alt='image' />
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas mauris quis mi dignissim 
    euismod. Nullam commodo elementum odio, vitae pellentesque purus convallis non.</p>" }
  end
end
