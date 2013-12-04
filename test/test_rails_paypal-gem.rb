require 'test_helper'

class RailsPaypalGemTest < Test::Unit::TestCase
	def test_call_success
		rp = RailsPaypalGem.call({
			:METHOD => 'SetExpressCheckout', 
            :PAYMENTREQUEST_0_AMT=>'300.0',
            :PAYMENTREQUEST_0_PAYMENTACTION => 'Sale',
            :PAYMENTREQUEST_0_ITEMAMT=>'300.0',
			})
		assert_equal "Success", rp["ACK"]
	end
	def test_call_fail
		rp = RailsPaypalGem.call({
			:METHOD => 'SetExpressCheckout', 
            :PAYMENTREQUEST_0_AMT=>'300.0',
            :PAYMENTREQUEST_0_PAYMENTACTION => 'Sale',
            :PAYMENTREQUEST_0_ITEMAMT=>'400.0',
			})
		assert_equal "Failure", rp["ACK"]
		assert_equal "10413", rp["L_ERRORCODE0"]
	end
end
