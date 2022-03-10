```ruby
RSpec.describe Integration do
it "gets all diary entries" do
diary_entry1 = DiaryEntry.new("my_title1", "my_content1")
diary_entry2 = DiaryEntry.new("my_title2", "my_content2")

class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm) 
    return (count_words / wpm.to_f).ceil
  end
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end

class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end