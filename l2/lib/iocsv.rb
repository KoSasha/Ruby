class IOCSV
  REGEX_VALUE_CSV = Regexp.new(/.(\.csv)$/)

  def self.check_operation(operation)
    operation != Calculate::MAXIMUM && operation != 'min' && operation != 'average' && operation != 'dispersion'
  end

  def self.parameter_processing(operation, file_name)
    if check_operation(operation)
      puts "Parameter \'operation\' is not as expected (max/min/average/dispersion)"
      nil
    elsif file_name.match(REGEX_VALUE_CSV).nil?
      puts 'Expected file in .csv format'
      nil
    else
      1
    end
  end
end
