require 'main'

Main {

  name :foobar

  db {
    create_table(:foo) do
      primary_key :id
      String :name
      Float :price
    end unless table_exists?(:foo)
  }

  config(
    :email => 'your.addy@gmail.com',
    :password => 'yourPa$$word'
  )

  io


  def run
    #p input.path
    #p output.path
    p params.map{|param| param.name}
    output.puts(:foobar)
  end

  mode :foo do
    params[:input].ignore!
  end
}
