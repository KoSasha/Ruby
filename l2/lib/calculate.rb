require 'csv'

class Calculate
  MAXIMUM = 'max'.freeze
  MINIMUM = 'min'.freeze
  AVERAGE = 'average'.freeze
  DISPERSION = 'dispersion'.freeze

  def self.max(arr)
    arr.max
  end

  def self.min(arr)
    arr.min
  end

  def self.average(arr)
    (arr.inject { |sum, el| sum + el }.to_f / arr.size).round(2)
  end

  def self.dispersion(arr)
    n = arr.length.to_f
    coefficient = n / (n - 1.0)
    average = average(arr)
    result = 0.0
    (0..n - 1).each do |i|
      result += (arr[i].to_f - average)**2
    end
    (result * coefficient).round(2)
  end

  def self.get_values(arr)
    result_array = []
    (0..arr.length - 1).each do |i|
      result_array[i] = arr[i][1].to_f
    end
    result_array
  end

  def self.calculate(operation, file_name)
    arr = CSV.read(file_name)
    values = get_values(arr)
    case operation
    when MAXIMUM
      max(values)
    when MINIMUM
      min(values)
    when AVERAGE
      average(values)
    when DISPERSION
      dispersion(values)
    end
  end
end
