#!/usr/bin/env ruby
result = `sass ../sass/main.sass triggered.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('triggered.css')
puts "Regular compile worked successfully"

result2 = `slimrb ../bombsite.slim triggered.html`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('triggered.html')
puts "Regular compile worked successfully
