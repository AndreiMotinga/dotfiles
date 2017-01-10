require "awesome_print"
AwesomePrint.irb!
include FactoryGirl::Syntax::Methods if Object.const_defined?("FactoryGirl")
