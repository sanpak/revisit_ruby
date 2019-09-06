$indented_space = 0
def better_log descriptionOfBlock,&block
  puts " " * $indented_space + "Beginning \"#{descriptionOfBlock}\"..."
  puts " " * $indented_space + "...\"#{descriptionOfBlock}\" finished, returning: #{block.call}"
end

better_log "outer block" do
  $indented_space += 1
    better_log "some little block" do
      $indented_space += 1
      better_log "teeny-tiny block" do
          $indented_space += 1
          "lots of love"
      end
      42
    end
    $indented_space = 1
    better_log "yet another block" do
      $indented_space += 1
      "I love Indian"
    end
  true
end
