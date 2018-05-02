require "sinatra"
require "googlebooks"

get "/" do
    erb :form
end

post "/" do
    books = GoogleBooks.search(params[:query])
    first_book = books.first #returns first result from search

    @image = first_book.image_link
    @title = first_book.title
    @author = first_book.authors
    @isbn = first_book.isbn
    @link = first_book.info_link

    puts books
    erb :form,  :locals => {:title => @title, :author => @author, :image => @image, :link => @link}
end