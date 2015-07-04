require './library_manager.rb'

describe LibraryManager do

  it 'should compose reader notification' do
    expect(manager.reader_notification("Ivan Testenko")). to eq <<-TEXT
Hello, Ivan Testenko!

You should return a book "War and Peace" authored by Leo Tolstoy in 36 hours.
Otherwise you will be charged $12.3 code per hour. 
TEXT
  end

  it 'should compose librarian notification' do
    expect(manager.librarian_notification). to eq <<-TEXT
Hello,

There are 5 published books in the library.
There are 6 readers and 3 of them are reading the books.

Ivan Testenko is reading "War and Peace" - should return on 2015-07-04 at 10am
Vasiliy Pupkin is reading "Red and Black" - should return on 2015-07-12 at 7pm
Barak Obama is reading "Well grounded Rubyist" - should return on 2015-07-10 at 12pm
TEXT
  end

  it 'should compose statistics notification' do
    expect(manager.librarian_notification). to eq <<-TEXT
Hello,

The library has:
- 5 books
- 4 authors
- 6 readers
The most popular author is Leo Tolstoy - 2450 pages has been read in 2 books by 4 readers.
The most productive reader is Ivan Testenko - he had read 1040 pages in 3 books authored by 3 authors.

TEXT
  end
  
end
