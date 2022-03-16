class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    def is_clickbait
        validates :book_name, inclusion: { in: %w("Won't Believe" "Secret" "Top" "Guess") }
    end

end
