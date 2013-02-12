
cases do
  begin
    d = {
      '0' => '0',
      '1' => '1',
      '8' => '8',
      '9' => '6',
      '6' => '9'
    }
    puts gets.strip.chars.to_a.reverse.map { |c|
      d[c] || (raise :wtfd)
    } * ''
  rescue
    puts "no"
  end
end
