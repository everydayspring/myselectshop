select
    *
from product p
where p.user_id = 1;

select
    p.id,
    p.title as product_title,
    pf.product_id as product_id,
    pf.folder_id as folder_id
from
    product p left join product_folder pf
                        on p.id = pf.product_id
where p.user_id = 1
  and
    pf.folder_id = 3
order by p.id desc
    limit 0, 10;