class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100, message: "Must be 100 or more characters"}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "Must enter 'Fiction' or 'Non-Fiction'"}
end
