def query_classes(data, criteria)
  data = data.select { |d| passes_filter(d, criteria) }
  sort_key = criteria[:sort_by]
  data = data.sort_by{ |d| d[sort_key] }
  select_keys = criteria[:select]
  data.map do |hash|
    hash.select do |key, value|
      select_keys.include? key
    end
  end
end

def passes_filter(object, filter)
  filter = filter[:filter]
  object.each do |k, v|
    criteria = filter[k] #department, number, name, ...
    if !criteria.nil?
       comparator = criteria.keys.first #gte, gt, comparator type = symbol
       value = criteria[comparator] #101, 82, value type = fixed num
       return compare(v, value, comparator)
    end
  end
end

def compare(num1, num2, comparator)
  if (num1 <=> num2) > 0 && (comparator == :gte || comparator == :gt)
    true
  elsif (num1 <=> num2) < 0 && (comparator == :lte || comparator == :lt)
    true
  elsif (num1 <=> num2) == 0 && (comparator == :eq)
    true
  else
    false
  end
end

 

data = [{
  :department => 'CS',
  :number => 101,
  :name => 'Intro to Computer Science',
  :credits => 1.00
}, {
  :department => 'CS',
  :number => 82,
  :name => 'The Internet Seminar',
  :credits => 0.5
}, {
  :department => 'ECE',
  :number => 52,
  :name => 'Intro to Digital Logic'
  # Note that the :credits key-value pair is missing
}]

criteria = {
  :filter => {
    :number => {
      :gt => 80
    },
    :credits => {
      :gte => 0.5
    }
  },
  :select => [:number, :name],
  :sort_by => :number
}

p query_classes(data, criteria)

