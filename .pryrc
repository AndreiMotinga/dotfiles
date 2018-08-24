require "awesome_print"
AwesomePrint.pry!
include FactoryGirl::Syntax::Methods if Object.const_defined?("FactoryGirl")
include FactoryBot::Syntax::Methods if Object.const_defined?("FactoryBot")

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end
