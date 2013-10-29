class ETL

  def self.transform(old)
    new = {}
    old.each_pair do |key, *values|
      values.flatten.each do |value|
        new[value.downcase] = key
      end
    end
    new
  end

end