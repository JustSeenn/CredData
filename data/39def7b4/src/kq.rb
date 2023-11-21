##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Entity' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .entities.create(identity: 'identity')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Identity' => 'identity', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://verify.twilio.com/v2/Services/VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f",
          "links": {
              "factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
              "new_factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
              "challenges": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Challenges"
          }
      }
      ]
    ))

    actual = @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .entities.create(identity: 'identity')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .entities('identity').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://verify.twilio.com/v2/Services/VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .entities('identity').delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .entities('identity').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://verify.twilio.com/v2/Services/VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities/identity',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "ff483d1ff591898a9942916050d2ca3f",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f",
          "links": {
              "factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
              "new_factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
              "challenges": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Challenges"
          }
      }
      ]
    ))

    actual = @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .entities('identity').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .entities.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://verify.twilio.com/v2/Services/VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Entities',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "entities": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "entities"
          }
      }
      ]
    ))

    actual = @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .entities.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "entities": [
              {
                  "sid": "YEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "identity": "ff483d1ff591898a9942916050d2ca3f",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f",
                  "links": {
                      "factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
                      "new_factors": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Factors",
                      "challenges": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities/ff483d1ff591898a9942916050d2ca3f/Challenges"
                  }
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://verify.twilio.com/v2/Services/VAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Entities?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "entities"
          }
      }
      ]
    ))

    actual = @client.verify.v2.services('VAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .entities.list()

    expect(actual).to_not eq(nil)
  end
end