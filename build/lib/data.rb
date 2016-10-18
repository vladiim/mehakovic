module Build
  class Data
    def self.skills
      csv_to_data('skills')
    end

    def self.logos
      csv_to_data('logos')
    end

    private

    def self.csv_to_data(file)
      CSV.foreach("build/data/#{file}.csv", encoding: 'ISO-8859-1', headers: true)
        .inject([]) do |data, row|
          data << row.to_h
      end
    end
  end
end
