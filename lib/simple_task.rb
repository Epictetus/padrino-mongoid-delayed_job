class SimpleTask

  def doit
    puts "just did something simple!"
    $stdout.flush
  end
  handle_asynchronously :doit

end
