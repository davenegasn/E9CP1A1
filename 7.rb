class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end

  def price_average(array)
	total = 0
	puts @total = array.inject(0){|sum,x| (total += x.to_i) / 4}  	
  end 

  def nuevo_catalogo()
  	new_file = File.open('nuevo_catalogo.txt', 'a')
  	new_file.puts "#{@name}, #{@large}, #{@medium}, #{@small} "
  	new_file.close
  end 
end

data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  product = Product.new(*ls)
  puts product.nuevo_catalogo
end
