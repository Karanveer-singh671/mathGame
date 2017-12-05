class Player
    
      # def name
      #   @name
      # end
      #
      # def name=(new_name)
      #   @name = new_name
      # end
    
      attr_accessor :name
    
      # def points
      #   @points
      # end
    
      attr_accessor :lives
    
      def initialize(name)
        @name = name
        @lives = 3
      end
    
      def alive?
        @lives > 0
      end
    
end

