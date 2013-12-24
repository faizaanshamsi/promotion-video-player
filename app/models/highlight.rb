class Highlight
  attr_accessor :name, :url

  def self.all
    [
      self.new(url: "http://www.youtube.com/watch?v=szyUN5GlQ7c", name: "Chris Harris Drives Porsche 918"),
      self.new(url: "http://www.youtube.com/watch?v=A3BJF7O5ikY", name: "La Bestioni on Jay Leno"),
      self.new(url: "http://www.youtube.com/watch?v=fJQ4hQSusjE", name: "Singer 911 Drive TV"),
      self.new(url: "http://www.youtube.com/watch?v=E9IWiTpWeiM", name: "McLaren P1 on Nurburgring"),
      self.new(url: "http://www.youtube.com/watch?v=UZiHPLGh-Ek", name: "Lamborghini Aventador on Top Gear")
    ]
  end

  def initialize(args={})
    args.each do |k,v|
      send("#{k}=", v) if respond_to?("#{k}=")
    end
  end

end
