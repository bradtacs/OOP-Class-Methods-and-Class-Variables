class Book
  # class vars
  attr_reader :on_shelf, :on_loan
  attr_accessor :due_date

  @@on_shelf = []
  @@on_loan = []
  @@due_date = {}

  # This method should initialize the library' attributes
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def self.create(title, author, isbn)
     x = Book.new(title, author, isbn)
     @@on_shelf << x
     return x
   end

  def self.current_due_date
    @@due_date.each do |k,v|
      if k == book
        puts "found book"
        return v
      end
    end
    return Time.now
  end
  def self.overdue_books
    new_book = []
    @@due_date.each do |k,v|
      if v <=> Time.now
        puts "#{k} + #{v}"
        new_book << k
      end
    end
    return new_book
    end
  def self.browse
    @@on_shelf.sample
  end
  def self.available
    @@on_shelf
  end
  def self.borrowed
    @@on_loan
  end

  def borrow
    if self.lent_out?
      return false
    end
    @@on_loan << self
    @@on_shelf.delete(self)
    @@due_date[self] = Time.now + (3)
    return true
  end

  def return_to_library
    if self.lent_out?
         @@on_shelf << self
         @@due_date.delete self
         @@on_loan.delete self
         puts "thank you"
         return true
       else
         return false
       end
     end

  def lent_out?

    if Book.borrowed.include?( self )
    return true
  else
    return false
  end

end
