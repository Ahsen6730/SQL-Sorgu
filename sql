DELETE FROM public.tblkapakkapaktip
WHERE id IN (SELECT id FROM public.tblkapakkapaktip where CAST(databasekayitzamani AS DATE) = '2022-11-09');
