def parse_invoices(invoice_data)
  invoice_data.each_line do |line|
    pattern = /(\d{4}-\d{2}-\d{2}) - (INV\d{3}) - ([^-]*) - (\S+)/m
    match = line.match(pattern)
    puts "Date: #{match[1]}, Invoice Number: #{match[2]}, Client: #{match[3]}, Amount: #{match[4]}"
  end
end
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
