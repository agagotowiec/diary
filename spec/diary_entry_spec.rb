require 'diary_entry'

RSpec.describe DiaryEntry do 
  it "returns title of the diary" do
    diary_entry = DiaryEntry.new("title", "content")
    expect(diary_entry.title).to eq "title"
  end

  it "returns contents of the diary" do 
    diary_entry = DiaryEntry.new("title", "content")
    expect(diary_entry.contents).to eq "content"
  end

  it "returns number of words in the content" do 
    diary_entry = DiaryEntry.new("title", "This is a test")
    expect(diary_entry.count_words).to eq 4
  end

  it "returns empty string"
end