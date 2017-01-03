module HumanizeNumber
  def humanize_number(input, separator = ','.freeze, grouping = 'thousands'.freeze)
    grouping_method = ('digit_group_' + grouping)

    if HumanizeNumber.respond_to?(grouping_method)
      return HumanizeNumber.send(grouping_method, input, separator)
    end

    # If no such grouping method, return input as-is.
    input
  end

  ##
  # Group digits "by thousands" (groups of 3 digits)
  def self.digit_group_thousands(number, separator)
    number.to_s.gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{separator}")
  end

  ##
  # Implement other grouping methods here (e.g. cr) end
end

Liquid::Template.register_filter(HumanizeNumber)
