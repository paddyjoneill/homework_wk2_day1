class Library

def initialize(title, renter, return_date)
  @library = [
    {
    title: title,
    rental_details: {
      renter: renter,
      return_date: return_date
      }
    }
  ]
end

def get_books
  books = []
  count = 0
  for book in @library
    books << @library[count][:title]
    count +=1
  end
  return books
end

def get_book_info(book_title)
  for book in @library
    if book[:title] == book_title
      return book
    end
  end
  return "Book not found"
end

def get_renter_info(book_title)
  for book in @library
    if book[:title] == book_title
      return book[:rental_details]
    end
  end
  return "Book not found"
end

def add_book(book_title)
  @library << {
  title: book_title,
  rental_details: {
    renter: "",
    return_date: ""
    }
  }
end

def update_renter(book_title, renter, return_date)
  for book in @library
    if book[:title] == book_title
      book[:rental_details] = {
        renter: renter,
        return_date: return_date
        }
    end
  end
  return "Book not found"
end

end
