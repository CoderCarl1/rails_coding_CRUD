class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: @data
    end

    #Show a single book
    def show
        render json: @data[params[:id].to_i]
    end

    #Create a new book
    def create
        @data << {title: params[:title], author: params[:author]}
        render plain: @data
    end

    #Update a book
    def update
        @data[params[:id].to_i] = {title: params[:title], author: params[:author]}
        render plain: @data
    end

    #Remove a book
    def destroy
        @data.delete_at(params[:id].to_i)
        render plain: @data

    end

    private
    def setup_data
        @data = [
            {title: "Harry Potter", author: "J.K Rowling" },
            {title: "Name of the wind", author: "Patrick Rothfuss" },
            {title: "title3", author: "author3" },
            {title: "title4", author: "author4" }
        ]
    end
end
