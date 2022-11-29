DELETE FROM public.tblkapakkapaktip
WHERE id IN (SELECT id FROM public.tblkapakkapaktip where CAST(databasekayitzamani AS DATE) = '2022-11-09');



select* from tblh
inner join tblh on tbl.readerip= tbl.readerip 
where ad='a'


	select  t.databasekayitzamani,  f.ficietiket,  f.kapaketiket,  f.urunformadi,  f.malzemeadi,  f.malzemekodu,  f.siparisno,  f.partino  from tbl13ficibosaltma f  join tbl14ficidolum d on  d.ficietiket = f.ficietiket  join tblhrtreadertag t  on (substring(t.epc,14,11) = d.ficietiket or substring(t.epc,14,11) = d.kapaketiket)      
where f.aktif=1  and t.databasekayitzamani  NOT between CAST ('2022-11-01' AS DATE)  and   CAST ('2022-11-15' AS DATE)



---------------------------------------------------------15.11.2022---------------------------------
select  
t.databasekayitzamani, 
--(select th.epc, th.databasekayitzamani from tblhrtreadertag th where th.epc=t.epc order by th.databasekayitzamani desc limit 1 ) as
  t.epc ,
f.ficietiket,  
f.kapaketiket,  
f.urunformadi,  
f.malzemeadi,  
f.malzemekodu,  
f.siparisno,  
f.partino  
from tbl13ficibosaltma f  
join tbl14ficidolum d on  d.ficietiket = f.ficietiket 
join tblhrtreadertag t  on (substring(t.epc,14,11) = d.ficietiket or substring(t.epc,14,11) = d.kapaketiket)  
where 
f.aktif=1  
and t.databasekayitzamani  NOT between CAST ('2022-11-15' AS DATE)  and   CAST ('2022-11-15'AS DATE)  
select th.epc, th.databasekayitzamani from tblhrtreadertag th where th.epc=t.epc order by th.databasekayitzamani desc limit 1


-------------------------
	select  t.epc ,t.databasekayitzamani,  f.ficietiket,  f.kapaketiket,  f.urunformadi,  f.malzemeadi,  f.malzemekodu,  f.siparisno,  f.partino   from tbl13ficibosaltma f  join tbl14ficidolum d on  d.ficietiket = f.ficietiket  join tblhrtreadertag t  on ( substring(t.epc,14,11) = d.ficietiket or substring(t.epc,14,11) = d.kapaketiket) 
where f.aktif=1 and t.databasekayitzamani  NOT between CAST ('2022-11-01' AS DATE)  and   CAST ('2022-11-15' AS DATE) group by t.epc




---------------------------------------------------------------
select  count(tf2.id ) as sayi  from tblkapakkapaktip  tf  
join tbl14ficidolum tf2   on  tf2.kapaketiket  = tf.kapaketiketi  
where tf.aktif =1 and tf.kapaktipi = '93631775-C6F8-447B-8AD7-005566165B45' 
