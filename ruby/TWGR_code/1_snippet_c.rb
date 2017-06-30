<% ["hearts", "diamonds", "spades", "clubs"].each do |suit| %>
  <% ["2","3","4","5","6","7","8","9","10","J","Q","K","A"].each do |rank|
%>
<%= rank %> of <%= suit %> <% end %> <% end %>

