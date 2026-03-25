
class CodeMaker 

  attr_reader :code
  
  def initialize()
    @colors = ['purple','red','white','black','yellow','blue','green','brown','pink','orange']
    @code = []
  end

  def create_code
    @code.clear if !@code.empty?

    4.times do
      @code.push(@colors[rand(0..9)])
    end
  end

end