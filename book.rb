class Book
    attr_accessor :title, :word_count
    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def authors
        Publication.all.select { |p| p.book == self}.map { |instance| instance.author}
    end

end
