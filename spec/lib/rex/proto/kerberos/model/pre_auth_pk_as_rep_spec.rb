# -*- coding:binary -*-
require 'spec_helper'


RSpec.describe Rex::Proto::Kerberos::Model::PreAuthPkAsRep do

  subject(:pa) do
    described_class.new
  end

  let(:sample) do
    Base64.decode64('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')
  end

  context "when parsing a PA-PK-AS-REP" do
    it "parses correctly" do
      result = Rex::Proto::Kerberos::Model::PreAuthPkAsRep.parse(sample)
      # Test an assortment of properties:
      expect(result.dh_rep_info.signed_data[:version].value).to eq(3)
      expect(result.dh_rep_info.signed_data[:encap_content_info].econtent[:nonce].value).to eq(2217799011772)
    end

    it "returns the same value it started with when re-encoding" do
      result = Rex::Proto::Kerberos::Model::PreAuthPkAsRep.parse(sample)
      re_encoded = result.to_der
      expect(re_encoded).to eq(sample)
    end
  end
end
