require 'csv'


module Motors
  class Motor
    attr_reader :data

    def initialize(filename)
      @data = CSV.read(get_path(filename), { headers: true, converters: :float , header_converters: :symbol })
    end

    def find(colname, value)
      best_row = @data[0]

      @data.each do |row|
        if (row[colname].to_f - value).abs < (best_row[colname].to_f - value).abs
          best_row = row
        end
      end

      best_row
    end

    def get_path(filename)
      File.dirname(File.expand_path(__FILE__))+"/../data/#{filename}.csv"
    end
  end

  CIM = Motor.new('cim')
  MiniCIM = Motor.new('mini-cim')
  BAG = Motor.new('bag')
  Pro775 = Motor.new('775pro')
end
