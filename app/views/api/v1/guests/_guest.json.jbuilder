json.id guest.id
json.title guest.title
json.firstName guest.first_name
json.lastName guest.last_name
json.address1 guest.address_line_1
json.address2 guest.address_line_2
if guest.address_city
  json.city guest.address_city.capitalize
else
  json.city guest.address_city
end
if guest.address_state
  json.state guest.address_state.upcase
else
  json.state guest.address_state
end
json.zip guest.address_zip
json.email guest.email
json.invited guest.invited
json.replied guest.replied
json.attending guest.attending
json.thanked guest.thank_you_sent
json.number guest.number_of_attendees
json.notes guest.notes