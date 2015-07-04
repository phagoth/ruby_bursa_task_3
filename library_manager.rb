require 'active_support/all'
require 'pry'

require './author.rb'
require './book.rb'
require './published_book.rb'
require './reader.rb'
require './reader_with_book.rb'

class LibraryManager

  attr_accessor :reader_with_book, :issue_datetime

  def initialize reader_with_book, issue_datetime
    @reader_with_book = reader_with_book
    binding.pry
    @issue_datetime = issue_datetime

  end

  def penalty
    
    # hours_overdue = (Time.now.to_i - issue_datetime.to_time.to_i) / 3600
    # reader_with_book.penalty hours_overdue
  end

  def could_meet_each_other? first_author, second_author

  end

  def days_to_buy

  end

  def transliterate author

  end

  def penalty_to_finish

  end

  def email_notification_params
      {
        penalty: "some code",
        hours_to_deadline: "some code",
      }
  end

  def email_notification
    #use email_notification_params
  end

end


# puts LibraryManager.new("some_parameter", "another")

