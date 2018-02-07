require 'csv'

def get_path(filename)
  File.dirname(File.expand_path(__FILE__))+"/../data/#{filename}.csv"
end

class Motor # TODO: move to module

  attr_reader :data

  def initialize(filename)
    @data = CSV.read(get_path(filename), headers: true)
  end

  def find(colname, value)
    value = value.to_i
    colname = colname.to_s

    best_row = @data[0]

    @data.each do |row|
      if (row[colname].to_i - value).abs < (best_row[colname].to_i - value).abs
        best_row = row
      end
    end

    best_row
  end
end

module Motors
  CIM = Motor.new("cim")
end
