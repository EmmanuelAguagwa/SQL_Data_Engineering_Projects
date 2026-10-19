SELECT 
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name as company_name,
    jpf.job_location
FROM 
    job_postings_fact as jpf
FULL OUTER JOIN company_dim as cd
    ON  jpf.company_id = cd.company_id;
--LIMIT 10;