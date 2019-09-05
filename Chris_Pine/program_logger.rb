# def log descriptionOfBlock,&block
#   puts "#{descriptionOfBlock} is started."
#   block.call
#   puts "#{descriptionOfBlock} is finished."
#   p block.call
# end
#
# log "testing 1" do
#   puts "This is a testing 1 block."
#   log "testing 2" do
#     puts "This is testing 2 block."
#   end
# end
def log descriptionOfBlock,&block
  puts "Beginning \" #{descriptionOfBlock} \"..."
  puts "... \"#{descriptionOfBlock} \" finished, returning: #{block.call}"
end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai Food!"
  end
  false
end
