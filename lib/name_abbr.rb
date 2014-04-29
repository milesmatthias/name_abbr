class NameAbbr
  def self.abbr_name(first_name, last_name)
    if present?(last_name) && first_name.is_a?(String) && last_name.is_a?(String)
      [first_name, last_name[0]].join(' ') + "."
    else
      first_name
    end
  end

  def self.abbr_full_name(fullname)
    if present?(fullname) && fullname.is_a?(String) && present?(fullname.match(/ /))
      parts = fullname.split(' ')
      [parts[0], parts[1][0]].join(' ') + "."
    else
      fullname
    end
  end

  private
  def self.present?(str)
    !str.nil? && str.length > 0
  end
end
