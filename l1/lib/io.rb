class IO
  REGEX_VALUE = Regexp.new(/\d.\d+/)

  def self.check_scale(scale)
    scale != Converter::CELSIUS && scale != Converter::KELVIN && scale != Converter::FAHRENHEIT
  end

  def self.parameter_processing(value, original_scale, result_scale)
    if value.match(REGEX_VALUE).nil?
      puts "Type of parameter \'degree_value\' does not match float"
      nil
    elsif check_scale(original_scale)
      puts "Parameter \'original_scale\' does not match what is expected"
      nil
    elsif check_scale(result_scale)
      puts "Parameter \'result_scale\' does not match what is expected"
      nil
    else
      value.to_f

    end
  end
end
