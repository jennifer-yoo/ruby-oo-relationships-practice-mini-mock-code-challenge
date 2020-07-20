class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def write_books(book)
        Publication.new(self, book)
    end

    def total_words
        Publication.all.select { |p_instance| p_instance.author == self
        }.sum { |instance| instance.book.word_count }
    end

    def self.most_words
        words = 0
        wordy_author = nil
        self.all.each do |instance|
            if instance.total_words > words
                words = instance.total_words
                wordy_author = instance
            end
        end
        wordy_author
    end


end
