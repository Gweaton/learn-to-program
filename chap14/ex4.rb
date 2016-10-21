#better program logger

$logger_depth = 0

def log block_description, &block
  indent = "   " *$logger_depth
  puts "#{indent} Beginning \"#{block_description}\"..."
  $logger_depth += 1
  output = block.call
  $logger_depth -= 1
  puts "#{indent}...\"#{block_description}\" finished, returning: #{output}."
end


log "outer block" do
  log "some little block" do
    2 + 2
  end
  log "yet another block" do
    5 * 2
  end
  log "final test" do
  "Please be indented properly!"
  end
  "hello!"
end
