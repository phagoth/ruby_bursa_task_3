require 'active_support/all'
require 'pry'

require_relative 'author.rb'
require_relative 'book.rb'
require_relative 'published_book.rb'
require_relative 'reader.rb'
require_relative 'reader_with_book.rb'

class LibraryManager

  attr_accessor :readers, :books, :readers_with_books

  def initialize readers = [], books = [], readers_with_books = []
    @readers_with_books = readers_with_books
    @readers = readers
    @books = books
  end

  def get_reader_by_name reader_name
    readers.find { |reader| reader.name == reader_name }
  end

  def get_reader_with_book_by_name reader_name
    readers_with_books.find { |reader| reader.name == reader_name }
  end

  def get_book_by_title book_title
    books.find { |book| book.title == book_title }
  end

  def new_book author, title, price, pages_quantity, published_at
    books << PublishedBook.new(author, title, price, pages_quantity, published_at)
  end

  def new_reader name, reading_speed
    readers << Reader.new(name, reading_speed)
  end

  def give_book_to_reader reader_name, book_title
    book_object = get_book_by_title(book_title)
    reader_object = get_reader_by_name(reader_name)
    if book_object
      if reader_object
        readers_with_books << ReaderWithBook.new(book_object, reader_object)
        # books.delete(book_object)
      else
        puts "Can't find such reader - " + reader_name
      end
    else
      puts "Can't find such book - " + book_title
    end
  end

  def read_the_book reader_name, duration
    get_reader_with_book_by_name(reader_name).read_the_book!(duration)
  end

  def reader_notification

  end

  def librarian_notification

  end

  def statistics_notification

  end

  private

  def reader_notification_params

  end

  def librarian_notification_params

  end

  def statistics_notification_params

  end

end
