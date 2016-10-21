#program logger

def log block_description, &block
  puts "Beginning \"#{block_description}\"..."
  output = block.call
  puts "...\"#{block_description}\" finished, returning: #{output}."
end


log "outer block" do
  log "some little block" do
    2 + 2
  end
  log "yet another block" do
    5 * 2
  end
  "hello!"
end    
