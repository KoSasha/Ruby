load 'converter.rb'
load 'io.rb'

class Application
  def self.main
    if ARGV.length != 3
      puts "Format of passed arguments:\n [degree_value] [original_scale] [result_scale]\n\n" \
        "Possible values of parameter \'original_scale\'/\'result_scale\':\n \'C\' - Celsius\n" \
        " \'K\' - Kelvin\n \'F\' - Fahrenheit\n\n"
      exit
    end
    value = IO.parameter_processing(ARGV[0], ARGV[1], ARGV[2])
    exit if value.nil?
    puts Converter.convert(value, ARGV[1], ARGV[2])
  end
end

Application.main
