set @mike_open_tickets :=
(
select count(
ost_ticket.ticket_id
) as opened

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_staff.firstname = 'Mike'
and month(ost_ticket.created) = month(now()) -1
);
set @mike_resolved_tickets :=
(
select count(
ost_ticket.ticket_id
) as resolved

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_ticket.status_id = 2
and ost_staff.firstname = 'Mike'
and month(ost_ticket.closed) = month(now()) -1
);
set @morne_open_tickets :=
(
select count(
ost_ticket.ticket_id
) as opened

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_staff.firstname = 'Morne'
and month(ost_ticket.created) = month(now()) -1
);
set @morne_resolved_tickets :=
(
select count(
ost_ticket.ticket_id
) as resolved

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_ticket.status_id = 2
and ost_staff.firstname = 'Morne'
and month(ost_ticket.closed) = month(now()) -1
);

set @armand_open_tickets :=
(
select count(
ost_ticket.ticket_id
) as opened

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_staff.firstname = 'Armand'
and month(ost_ticket.created) = month(now()) -1
);
set @armand_resolved_tickets :=
(
select count(
ost_ticket.ticket_id
) as resolved

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_ticket.status_id = 2
and ost_staff.firstname = 'Armand'
and month(ost_ticket.closed) = month(now()) -1
);

set @jc_open_tickets :=
(
select count(
ost_ticket.ticket_id
) as opened

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_staff.firstname = 'JC'
and month(ost_ticket.created) = month(now()) -1
);
set @jc_resolved_tickets :=
(
select count(
ost_ticket.ticket_id
) as resolved

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_ticket.status_id = 2
and ost_staff.firstname = 'JC'
and month(ost_ticket.closed) = month(now()) -1
);

set @chris_open_tickets :=
(
select count(
ost_ticket.ticket_id
) as opened

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_staff.firstname = 'Chris'
and month(ost_ticket.created) = month(now()) -1
);
set @chris_resolved_tickets :=
(
select count(
ost_ticket.ticket_id
) as resolved

from ost_ticket
join ost_ticket__cdata on ost_ticket.ticket_id=ost_ticket__cdata.ticket_id
join ost_staff on ost_staff.staff_id=ost_ticket.staff_id

where ost_ticket.status_id = 2
and ost_staff.firstname = 'Chris'
and month(ost_ticket.closed) = month(now()) -1
);

select month(now()) -1 as month,'Mike' as name, @mike_open_tickets as opened, @mike_resolved_tickets as resolved, (@mike_resolved_tickets / @mike_open_tickets) * 100 as percentage
UNION
select month(now()) -1 as month,'Morne' as name, @morne_open_tickets as opened, @morne_resolved_tickets as resolved, (@morne_resolved_tickets / @morne_open_tickets) * 100 as percentage
UNION
select month(now()) -1 as month,'Armand' as name, @armand_open_tickets as opened, @armand_resolved_tickets as resolved, (@armand_resolved_tickets / @armand_open_tickets) * 100 as percentage
UNION
select month(now()) -1 as month,'JC' as name, @jc_open_tickets as opened, @jc_resolved_tickets as resolved, (@jc_resolved_tickets / @jc_open_tickets) * 100 as percentage
UNION
select month(now()) -1 as month,'Chris' as name, @chris_open_tickets as opened, @chris_resolved_tickets as resolved, (@chris_resolved_tickets / @chris_open_tickets) * 100 as percentage
