require "markaby"

module Varvara
  
  class Builder
    def self.generate_report
      mab = Markaby::Builder.new
      mab.html do
        head { title "Varvara Report." }
        body do
          h1 "Url Compressor."
          ul do
            li "Routes"
            li "Controllers"
            li "Models"
          end
        end
      end
      mab.to_s     
    end
  end
  
end