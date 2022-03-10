require 'diary'
require 'diary_entry'

RSpec.describe Diary do
  it "gets all diary entries" do
  diary_entry = Diary.new
  entry = DiaryEntry.new("my_title1", "my_content1")
  diary_entry.add(entry)
  expect(diary_entry.all).to eq [entry]
  end

  it "returns the number of words in the diary content" do 
    diary_entry = Diary.new
    entry = DiaryEntry.new("my_title1", "This is a test")
    diary_entry.add(entry)
    expect(diary_entry.count_words).to eq 4
  end
end