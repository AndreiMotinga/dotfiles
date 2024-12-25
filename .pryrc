# this is for pry-byebug, so it has to be installed in project
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'e', 'edit -mr'
end

Pry::Commands.command(/^$/, 'repeat last command') do
  pry_instance.run_command Pry.history.to_a.last
end

require 'amazing_print'
AmazingPrint.pry!
include FactoryGirl::Syntax::Methods if Object.const_defined?('FactoryGirl')


# causes issue on
# binding.pry and continue
# include FactoryBot::Syntax::Methods if Object.const_defined?('FactoryBot')
