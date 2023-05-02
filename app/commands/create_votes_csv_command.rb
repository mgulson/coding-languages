require 'csv'
require 'pry'

class CreateVotesCsvCommand
    attr_reader :data

    def initialize(csv)
      @data = read_csv(csv)
    end

    def call
        data.each_with_index do | row , idx|
            next if idx == 0
            language_id = row[0].to_i
            count = row[1].to_i

            for i in 1..count do
                Vote.create(language_id: language_id)
                puts "Vote created with language id - #{language_id}"
            end
        end
    end

    def read_csv(csv)
        CSV.read(csv)
    end
end

