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

    def write_books(title, word_count)
        Book.new(self, title, word_count)
    end

    def total_words
        Book.all.select { |b_instance| b_instance.author == self
        }.sum { |instance| instance.word_count }
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
