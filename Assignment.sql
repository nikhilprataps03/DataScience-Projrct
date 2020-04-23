-- Table (Flight/ Train/ Bus/Car/ Bike)
--column Bikename,source_loc_name,destination_loc_name,length_kilometer


select 'Hero Honda' name,'Sec-15' Source_loc,'Sec-18' Destination_loc,1 Root,90 Duration from dual
union
select 'Hero Honda','Sec-15','Sec-18',2,80 from dual
union
select 'Hero Honda','Sec-15','Sec-18',3,60 from dual
union
select 'Apache','Sec-15','Sec-18',1,70 from dual
union
select 'Apache','Sec-15','Sec-18',2,55 from dual
union
select 'Apache','Sec-15','Sec-18',3,40 from dual;

create table shortest_path
(
    bike_name varchar2(15),
    source_loc varchar2(15),
    dest_loc varchar2(15),
    route number(3),
    travel_duration number(3)
    );
insert into shortest_path
select 'Hero Honda','Sec-15','Sec-18',1,90 from dual
union all
select 'Hero Honda','Sec-15','Sec-18',2,80 from dual
union all
select 'Hero Honda','Sec-15','Sec-18',3,60 from dual
union all
select 'Apache','Sec-15','Sec-18',1,70 from dual
union all
select 'Apache','Sec-15','Sec-18',2,55 from dual
union all
select 'Apache','Sec-15','Sec-18',3,40 from dual;

select *from shortest_path;

 select e.*  from shortest_path e 
 where e.travel_duration=(select min(travel_duration) from shortest_path);
 