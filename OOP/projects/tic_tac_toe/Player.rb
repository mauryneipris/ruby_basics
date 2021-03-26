class Player
  CHOICES = ['a1', 'a2', 'a3', 'b1', 'b2', 'b3', 'c1', 'c2', 'c3']

  attr_accessor :coord, :token

  def initialize(coord="",token="")
    @token = token
    @coord = coord
  end

  def choose_token
    # case @token
    #   when ""
    #   puts "Please choose X's or O's"
    #   @token = gets.chomp.upcase
    #   when "X"
    #   puts "You will be O's"
    #   @token = "O"
    #   when "O"
    #   puts "You will be X's"
    #   @token = "X"
    #
  end

  def choose_coord(token)
    # 
    # loop do
    #  coord = gets.chomp
    #  if coord.includes?(CHOICES)
    #   update_board_coord(coord, token)
    #   break
    #  else
    #   puts 'Unrecognized coordinate entered. Please enter a recognized coordinate.'
    #  end
    # end
  end

  def update_board_coord(coord, token)
    # loop do
    #  If board[coord] is empty('')
    #   board[coord] => token - Change hash value of coordinate to player's respective token
    #   break
    #  else
    #   puts 'Please choose an empty coordinate.'
    #   choose_coord()
    #  end
    # end
  end
end