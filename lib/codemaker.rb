
class CodeMaker 
  
  def initialize()
    @colors = ['purple','red','white','black','yellow','blue','green','brown','pink','orange']
    @code = []
  end

  def create_code
    4.times do
      @code.push(@colors[rand(0..10)])
    end

    @code
  end

end