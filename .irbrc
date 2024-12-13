require 'amazing_print'
AmazingPrint.irb!
include FactoryGirl::Syntax::Methods if Object.const_defined?('FactoryGirl')
include FactoryBot::Syntax::Methods if Object.const_defined?('FactoryBot')
