<h3>Genre List:</h3>

<%@genres.each do |item|%>
<p><%=item.name%></p>
#<a href="/genres/:slug"><%=item.name%></a>
<%end%>