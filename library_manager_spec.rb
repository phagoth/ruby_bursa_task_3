require './library_manager.rb'

describe LibraryManager do

  it 'should count penalty' do
    manager.penalty
    binding.pry
  end

  it 'should know if author can meet another author' do
    manager.could_meet_each_other? leo_tolstoy, oscar_wilde
  end

  it 'should count days to buy' do
    manager.days_to_buy
  end

  it 'should transliterate ukrainian names' do
    ukrainan_author = Author.new(1856, 1916, 'Іван Франко')
    manager.transliterate ukrainan_author
  end

  it 'should count penalty to finish' do
    manager.penalty_to_finish
  end

  it 'should compose reader notification' do
    expect(manager.email_notification). to eq <<-TEXT
Hello, some code!

You should return a book "some code" authored by some code in some code hours.
Otherwise you will be charged $some code per hour. 
TEXT
  end

  it 'should compose librarian notification' do
    expect(manager.email_notification). to eq <<-TEXT
Hello, some code!

You should return a book "some code" authored by some code in some code hours.
Otherwise you will be charged $some code per hour. 
TEXT
  end
  
end
