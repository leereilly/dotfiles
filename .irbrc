# Auto indenting
IRB.conf[:AUTO_INDENT]=true

# Pretty print
require 'pp'

# Tab completion
require 'irb/completion'

# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE]  = :SIMPLE

# Save History between irb sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Clear the screen
def clear
	system 'clear'
	if ENV['RAILS_ENV']
		return "Rails environment: " + ENV['RAILS_ENV']
	else
		return "No rails environment - happy hacking!";
	end
end

# Shortcuts
alias c clears