#!/usr/bin/env ruby
#
# Sensu Freshdesk Handler
#
# DESCRIPTION:
#  Handler to automatic create new tickets in Freshdesk for alarms.
#
#  subscriptions_to_tags - transforms your subscriptions in tags
#  status_to_use - determine if Critical (2), Warning (1) or Unknown (3) alerts will create tickets
#
# OUTPUT:
#   Create a new Freshdesk ticket
#
# PLATFORMS:
#   all
#
# DEPENDENCIES:
#  gem freshdesk-api
#
# 2015, Jurgen Coetsiers <jurgen.coetsiers@marlin-ops.com> @jcoetsie
#
# Released under the same terms as Sensu (the MIT license); see LICENSE
# for details.
#

require 'sensu-handler'
require 'freshdesk-api'

class Freshdesk < Sensu::Handler
  def ticket_description
    "Sensu Alert\r\n" \
        'Client: ' + @event['client']['name'] + "\r\n" \
        'Address: ' + @event['client']['address'] + "\r\n" \
        'Subscriptions: ' + @event['client']['subscriptions'].join(', ') + "\r\n" \
        'Check: ' + @event['check']['name'] + "\r\n" \
        'Output: ' + @event['check']['output'] + "\r\n"
  end

  def ticket_tags
    tags = []
    unless settings['freshdesk']['tags'].nil?
      tags << settings['freshdesk']['tags']
    end
    if settings['freshdesk']['subscriptions_to_tags']
      tags << @event['client']['subscriptions']
    end
    tags
  end

  def ticket_subject
    'Alert - ' + @event['client']['name'] + ' - ' + @event['check']['name']
  end

  def handle
    client = Freshdesk.new(settings['freshdesk']['url'], settings['freshdesk']['username'], settings['freshdesk']['password'])
    begin
      timeout(60) do
        if settings['freshdesk']['status_to_use'].include?(@event['check']['status'])
          client.post_ticket(
            subject: ticket_subject,
            description: ticket_description,
            email: settings['freshdesk']['username'],
            priority: settings['freshdesk']['priority'] || 1
          )
        end
      end
  rescue Timeout::Error
    puts 'freshdesk -- timed out while attempting to create a ticket for #{ticket_subject} --'
    end
  end
end
