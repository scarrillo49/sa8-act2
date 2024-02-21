class Writer
    def create
      puts "Writing a story"
    end
  end
  
  class Painter
    def create
      puts "Painting a picture"
    end
  end
  
  def showcase_talent(artists)
    artists.each do |artist|
      if artist.respond_to?(:create)
        artist.create
      else
        puts "#{artist.class} doesn't know how to create"
      end
    end
  end
  
  writer = Writer.new
  painter = Painter.new
  
  artists = [writer, painter, "NotAnArtist"]
  showcase_talent(artists)
  