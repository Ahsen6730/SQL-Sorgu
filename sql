DELETE FROM public.tblkapakkapaktip
WHERE id IN (SELECT id FROM public.tblkapakkapaktip where CAST(databasekayitzamani AS DATE) = '2022-11-09');



select* from tblh
inner join tblh on tbl.readerip= tbl.readerip 
where ad='a'


	select  t.databasekayitzamani,  f.ficietiket,  f.kapaketiket,  f.urunformadi,  f.malzemeadi,  f.malzemekodu,  f.siparisno,  f.partino  from tbl13ficibosaltma f  join tbl14ficidolum d on  d.ficietiket = f.ficietiket  join tblhrtreadertag t  on (substring(t.epc,14,11) = d.ficietiket or substring(t.epc,14,11) = d.kapaketiket)      
where f.aktif=1  and t.databasekayitzamani  NOT between CAST ('2022-11-01' AS DATE)  and   CAST ('2022-11-15' AS DATE)
