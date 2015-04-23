module BooksHelper
  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %p")
  end

  def format_average_stars(book)
    average = book.average_stars
    if average # anything not nil or false is true
      pluralize(number_with_precision(average, precision: 1), 'star')
    else
      'No reviews'
    end
  end
end
