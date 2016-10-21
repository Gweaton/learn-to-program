#better program logger

$indent = 0

def log block_description, &block
  space = '  ' *$indent
  puts "#{space} Beginning \"#{block_description}\"..."
  $indent += 1
  output = block.call
  $indent -= 1
  puts "#{space}...\"#{block_description}\" finished, returning: #{output}."
end


log "outer block" do
  log "some little block" do
    log "yet another block" do
      log "final test" do
    2 + 2
  end
    5 * 2
  end
  "Please be indented properly!"
  end
  "hello!"
end
