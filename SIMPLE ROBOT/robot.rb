class robot
  attr_reader 	:daily

  def initialize(myname, ownercoderhekir, steps)
    @myname, @ownercoderhekir, @steps = myname, ownercoderhekir, steps.to_f
    @step_count = nil
    @daily = "- Başlangıç noktası.\n"
    @place = 0
    @arro = nil
  end


  def helloworld
    puts "Salam dünya, benim adım #{@myname}. Beni dünyanın en hawli kodırı olan #{@ownercoderhekir} yazdı."
  end

  def don(arro)
    if arro == :right || arro == :left
      @arro = arro
    else
      puts "Yön seçiminiz :right veya :left olmalı!"
    end
  end

  def dedimilerleilerle(step_count)
    if @arro == :right
      @place += step_count * @steps
      @daily += "- Sağ "
    elsif @arro == :left
      @place -= step_count * @steps
      @daily += "- Sol "
    end

    @daily += "yönüne #{step_count} adım atıldı.\n" if @arro
  end

  def uglum_nerdesin
    if @place > 0
      "Başlangıçtan #{@place} cm uzaktayım!"
    elsif @place < 0
      "Başlangıçtan tam sola doğru #{@place.abs} cm uzaktayım!"
    else
      "Başlangıç konumundayım, bu yüzden fiziksel olarak iş yapmadım :D Fizik dersini dinledim."
    end
  end
end

sudkostik_bot = robot.new("SudBot", "sudkostik", "31")
sudkostik_bot.helloworld
sudkostik_bot.don :right
sudkostik_bot.dedimilerleilerle 10
puts sudkostik_bot.uglum_nerdesin
sudkostik_bot.don :left
sudkostik_bot.dedimilerleilerle 18
puts sudkostik_bot.uglum_nerdesin
puts "\nGünlük aktivitem"
puts "----------------"
puts "#{sudkostik_bot.daily}"