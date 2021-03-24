class Computer
  @@users = {}
  def initialize(username,password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
    puts "#{username} is here, man!"
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}"
  end
  def update_file(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was updated by #{@username} at #{time}"
  end
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Dave", "1s_N0t_Here_M@n")
my_computer.create('Herby.txt')
my_computer.update_file('Herby.txt')


p "Current credentials on computer: #{Computer.get_users}"