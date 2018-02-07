require 'csv'

class Motor # TODO: move to module
  def initialize(filename)
    @data = CSV.read(File.dirname(File.expand_path(__FILE__))+"/../data/#{filename}.csv")
    p @data
  end

  def find(speed: nil, torque: nil, current: nil, input_power: nil, output_power: nil, efficiency: nil, lost_power: nil)

  end

  def search(colname, value)

  end
end

module Motors
  CIM = Motor.new("cim")
end
