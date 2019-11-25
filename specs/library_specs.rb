require('minitest/autorun')
require('minitest/reporters')
require_relative('../library')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test



def test_get_books
  library = Library.new("Lord of the Rings","Paddy", "01/12/19")
  assert_equal(["Lord of the Rings"],library.get_books)
end

def test_get_book_info_found
    library = Library.new("Lord of the Rings","Paddy", "01/12/19")
    book_info = library.get_book_info("Lord of the Rings")
    expected = {:title=>"Lord of the Rings", :rental_details=>{:renter=>"Paddy", :return_date=>"01/12/19"}}
    assert_equal(expected,book_info)
end

def test_get_book_info_not_found
    library = Library.new("Lord of the Rings","Paddy", "01/12/19")
    book_info = library.get_book_info("Lord of the Flies")
    expected = "Book not found"
    assert_equal(expected,book_info)
end

def test_get_renter_info
    library = Library.new("Lord of the Rings","Paddy", "01/12/19")
    renter_info = library.get_renter_info("Lord of the Rings")
    expected = {:renter=>"Paddy", :return_date=>"01/12/19"}
    assert_equal(expected, renter_info)
end

def test_add_book
    library = Library.new("Lord of the Rings","Paddy", "01/12/19")
    library.add_book("The Hobbit")
    assert_equal(["Lord of the Rings", "The Hobbit"], library.get_books())
end

def test_update_rental_details
  library = Library.new("Lord of the Rings","Paddy", "01/12/19")
  library.update_renter("Lord of the Rings","Stephen", "12/12/19")
  expected = {:title=>"Lord of the Rings", :rental_details=>{:renter=>"Stephen", :return_date=>"12/12/19"}}
  assert_equal(expected, library.get_book_info("Lord of the Rings"))
end


end
