class Article

    attr_reader :title, :author, :magazine
    @@all=[]

    def initialize (title,author,magazine)
        @title=title
        @author=author
        @magazine=magazine
        save
    end

    # def self.all
    #     @@all
    # end

    # def book_authored
    #     Authored.all.select{|e|e.book==self}
    # end

    # def authors
    #     self.book_authored.map{|e|e.author} #.uniq #if x.length>0
    # end

    private 
    def save
    @@all<<self
    end

end
