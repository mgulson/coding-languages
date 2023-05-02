class MySubClass < MySuperClass

  def print_hello_world
    puts @params
  end

  def print_votes
    super
    puts 'yolololol'
  end
end