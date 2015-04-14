module NameAbbr
  def self.abbr_name(first_name, last_name)
    first_name = normalize(first_name)
    last_name = normalize(last_name)

    unless last_name.nil?
      [first_name, last_name[0]].join(' ') + "."
    else
      first_name
    end
  end

  def self.abbr_full_name(fullname)
    fullname = normalize(fullname)

    unless fullname.match(/ /).nil?
      parts = fullname.split(' ')
      [parts[0], parts[1][0]].join(' ') + "."
    else
      fullname
    end
  end

  private
  def self.normalize(input)
    return nil if input.nil?

    ret = input.to_s.strip.split(" ").map(&:capitalize).join(" ")

    ret.gsub!(/\-(.)/) do |match|
      "-#{ match[-1].upcase }"
    end

    ret
  end
end
