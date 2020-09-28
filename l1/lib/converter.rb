class Converter
  CELSIUS = 'C'.freeze
  KELVIN = 'K'.freeze
  FAHRENHEIT = 'F'.freeze

  K = 273.15

  def self.convert_to_k_from_c(value)
    (value + K).round(2)
  end

  def self.convert_to_f_from_c(value)
    (value * 1.8 + 32).round(2)
  end

  def self.convert_to_c_from_k(value)
    (value - K).round(2)
  end

  def self.convert_to_f_from_k(value)
    ((value - K) * 1.8 + 32).round(2)
  end

  def self.convert_to_c_from_f(value)
    ((value - 32) / 1.8).round(2)
  end

  def self.convert_to_k_from_f(value)
    ((value - 32) / 1.8 + K).round(2)
  end

  def self.convert_from_c(value, result_scale)
    case result_scale
    when KELVIN
      convert_to_k_from_c(value)
    when FAHRENHEIT
      convert_to_f_from_c(value)
    end
  end

  def self.convert_from_k(value, result_scale)
    case result_scale
    when CELSIUS
      convert_to_c_from_k(value)
    when FAHRENHEIT
      convert_to_f_from_k(value)
    end
  end

  def self.convert_from_f(value, result_scale)
    case result_scale
    when CELSIUS
      convert_to_c_from_f(value)
    when KELVIN
      convert_to_k_from_f(value)
    end
  end

  def self.convert(value, original_scale, result_scale)
    return value if original_scale == result_scale

    case original_scale
    when CELSIUS
      convert_from_c(value, result_scale)
    when KELVIN
      convert_from_k(value, result_scale)
    when FAHRENHEIT
      convert_from_f(value, result_scale)
    end
  end
end
