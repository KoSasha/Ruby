load 'calculate.rb'
load 'iocsv.rb'

class Application
  def self.main
    if ARGV.length != 2
      puts "Format of passed arguments:\n [operation] [file_name_csv]\n\n" \
        "Possible values of parameter \'operation\':\n \'max\'\n" \
        " \'min\'\n \'average\'\n \'dispersion\'\n\n"
      exit
    end
    exit if IOCSV.parameter_processing(ARGV[0], ARGV[1]).nil?
    puts Calculate.calculate(ARGV[0], ARGV[1])
  end
end

Application.main
