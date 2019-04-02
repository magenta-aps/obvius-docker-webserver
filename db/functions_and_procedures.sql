/*!50003 DROP FUNCTION IF EXISTS `intervals_overlap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE FUNCTION `intervals_overlap`(siv1 datetime, eiv1 datetime, siv2 datetime, eiv2 datetime) RETURNS int(11)
    DETERMINISTIC
begin
	if eiv1 is null or eiv1 = '0000-00-00' then
	   set eiv1 = siv1;
	end if;

	if eiv2 is null or eiv2 = '0000-00-00' then
	   set eiv2 = siv2;
	end if;


	return not ((eiv2 < siv1 and eiv2 < eiv1) or (eiv1 < siv2 and eiv1 < eiv2));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_public_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE FUNCTION `is_public_path`(docid int unsigned) RETURNS int(10) unsigned
    DETERMINISTIC
begin
    
    select versions.docid into docid
    from
        documents
        left join versions on (
            documents.id = versions.docid
            and
            versions.public = 1
        )
    where
        documents.id = docid;

    while docid is not null and docid != 1 do
        select
            versions.docid into docid
        from
            documents
            left join versions on (
                documents.parent = versions.docid
                and
                versions.public = 1
            )
        where
            documents.id = docid;
    end while;

    if docid is null then
        return 0;
    else
        return 1;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_vfield` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `add_vfield`(docid integer unsigned, version datetime, name varchar(1024), text_value varchar(16384), int_value integer, double_value double, date_value datetime)
begin
	insert into vfields 
	       (docid, version, name, text_value, int_value, double_value, date_value) values
	       (docid, version, ucase(name), text_value, int_value, double_value, date_value);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `backup_recursive_subdocs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `backup_recursive_subdocs`()
begin 
	declare id integer unsigned default 0;

	create temporary table if not exists 
	       recursive_subdocs_table (id integer unsigned primary key auto_increment) engine=heap;
	create temporary table if not exists 
	       recursive_subdocs_backup_list (id integer unsigned primary key auto_increment) engine=heap;
	create temporary table if not exists
	       recursive_subdocs_backup (backup_id integer unsigned, recursive_id integer unsigned) engine=heap;
	
	insert into recursive_subdocs_backup_list values ();
	set id = last_insert_id();
	
	insert into recursive_subdocs_backup (backup_id, recursive_id) 
	       select id,recursive_subdocs_table.id from recursive_subdocs_table;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_internal_proxy_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `check_internal_proxy_status`(out good integer unsigned)
begin
	declare times integer unsigned default 10;
	create temporary table if not exists internal_proxy_status_table (docid integer unsigned, version datetime, primary key (docid, version) ) engine = heap;
	create temporary table if not exists internal_proxy_status_table2 (docid integer unsigned, version datetime, primary key (docid, version) ) engine = heap;

	delete ip from internal_proxy_status_table ip;
	delete ip2 from internal_proxy_status_table ip2;

	insert ignore into internal_proxy_status_table (docid) 
	       select docid from internal_proxy_documents i2;
	
	while times > 0 and not good do
	      set times = times - 1;
	      delete ip2 from internal_proxy_status_table2 ip2;

	      insert ignore into internal_proxy_status_table2 
	      	     select i.docid, i.version from internal_proxy_documents i 
		     join internal_proxy_status_table ip on
		     (i.dependent_on = ip.docid);

	      delete ip from internal_proxy_status_table ip;

	      insert ignore into internal_proxy_status_table 
	      	     select * from internal_proxy_status_table2 ip2;
              call cleanup_internal_proxy_status_table();
	      select not count(*) into good from internal_proxy_status_table ip;
	end while;

	delete ip from internal_proxy_status_table ip;
	delete ip2 from internal_proxy_status_table ip2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cleanup_internal_proxy_status_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `cleanup_internal_proxy_status_table`()
begin
	declare done integer unsigned default 0;
	declare v2 datetime default null;
	declare d integer unsigned default null;
	declare v datetime default null;
	declare c cursor for (select d.docid, d.version from internal_proxy_status_table ip);
	declare continue handler for not found set done=1;
	
	create temporary table if not exists to_be_deleted (docid integer unsigned, version datetime, primary key( docid, version));
	delete t from to_be_deleted t;

	open c;
	fetch c into d,v;

	while not done do
	      call public_or_latest_version(d, v2);
	      if v2 != v then
	      	 insert into to_be_deleted values (d,v);
	      end if;     
	      fetch c into d,v;
       end while;
       
       close c;

       delete ip from internal_proxy_status_table ip natural join to_be_deleted;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clean_internal_proxies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `clean_internal_proxies`(docid integer unsigned)
begin
	declare a integer unsigned default null;
	declare done integer unsigned default 0;
	declare c cursor for (select i.id from internal_proxy_documents i where i.docid = docid);
	declare c2 cursor for (select i.id from internal_proxy_documents i where i.dependent_on = docid);
        declare continue handler for not found set done=1;
	
	open c;
	fetch c into a;
	
	while not done do
	   update internal_proxy_documents i join internal_proxy_documents i2 on 
	   	      (i.docid = i2.dependent_on) set i2.dependent_on = i.dependent_on 
		      where i.id = a;
	   delete i from internal_proxy_fields i  where i.relation_id = a;
	   delete i from internal_proxy_documents i where i.id = a;
	   fetch c into a;
	end while;
	close c;

	set done = 0;
	open c2;
	fetch c2 into a;
	
	while not done do
	   delete from internal_proxy_fields  where i.relation_id = a;
	   delete i from internal_proxy_documents i where i.id = a;
	   fetch c2 into a;
	end while;
	close c2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `copy_batch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `copy_batch`(out finally integer)
begin 
      declare done integer default 0;
      declare cur_id integer unsigned;
      declare cur_parent integer unsigned;
      declare new_docid integer unsigned;

      declare curs cursor for 
              (select recursive_subdocs_table.id, t.new_docid from 
                      documents d join recursive_subdocs_table on (recursive_subdocs_table.id = d.id)
                      join tree_copier_helper t on (d.parent = t.old_docid) 
                      where not exists (select * from batch_copier_helper b where b.id = recursive_subdocs_table.id));
     declare continue handler for not found set done=1;

     create temporary table if not exists batch_copier_helper (id integer unsigned primary key) engine=heap;
     delete b from batch_copier_helper b;
     insert into batch_copier_helper (id) select old_docid from tree_copier_helper t;

     select not count(*) into finally from 
             recursive_subdocs_table left join tree_copier_helper t on (t.old_docid = recursive_subdocs_table.id) 
             where t.old_docid is null;

     if not finally then
         open curs;
         fetch curs into cur_id, cur_parent;

         while not done do
               call copy_id(cur_id, cur_parent, NULL, new_docid);
               insert into tree_copier_helper (old_docid, new_docid) values (cur_id, new_docid);
               fetch curs into cur_id, cur_parent;
         end while;

         close curs;
       end if;  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `copy_docparams` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `copy_docparams`(fromid integer unsigned, toid integer unsigned)
begin
	replace into docparms (docid, name, value, type) select toid, name, value, type from docparms where docid=fromid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `copy_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `copy_id`(did integer unsigned, 
                         new_parent integer unsigned, 
                         new_name varchar(1024), 
                         out new_docid integer unsigned)
begin
        insert into documents (parent, name, type, owner, grp, accessrules) 
	        select coalesce(new_parent, d.parent), coalesce(new_name, d.name), d.type, d.owner, d.grp, d.accessrules 
        	from documents d where d.id=did;
	set new_docid = last_insert_id();
		     
        insert into versions (docid, version,type,public,valid,lang, user)
        select new_docid, version, type, public,valid,lang, user from versions where docid=did;
        
        insert into vfields (docid, version,name,text_value,int_value, double_value,date_value)
        select new_docid,version,name,text_value,int_value,double_value,date_value from vfields where docid=did; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `copy_tree` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `copy_tree`(docid integer unsigned, new_parent integer unsigned, new_name varchar(1024))
begin 
      declare done integer default 0;
      declare new_did integer unsigned;
      
      create temporary table if not exists tree_copier_helper (old_docid integer unsigned, new_docid integer unsigned, index (old_docid), index (new_docid)) engine=heap;
      delete t from tree_copier_helper t;
      call backup_recursive_subdocs();
      call recursive_subdocs(docid);
      
      call copy_id(docid, new_parent, new_name, new_did);
      insert into tree_copier_helper (old_docid, new_docid) values (docid, new_did);
      
      while not done do call copy_batch(done); end while;
      call restore_recursive_subdocs();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_internal_proxy_docid_update_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `create_internal_proxy_docid_update_table`(docid integer unsigned, v datetime)
begin
	declare old_len integer unsigned default 0;
	declare new_len integer unsigned default 1;

	create temporary table if not exists internal_proxy_docid_update_table(id integer unsigned auto_increment primary key, 
	       		       					               docid integer unsigned, 
									       version datetime,
								               unique(docid, version)) engine=heap;
	create temporary table if not exists internal_proxy_docid_update_table2(id integer unsigned auto_increment primary key, 
	       		       					                docid integer unsigned, 
										version datetime,
								                unique (docid,version)) engine=heap;
	delete d from internal_proxy_docid_update_table d;
	delete d2 from internal_proxy_docid_update_table2 d2;
	
	insert into internal_proxy_docid_update_table (docid, version) values (docid, v);
	
	while old_len != new_len do
	      set old_len = new_len;
	      insert ignore into internal_proxy_docid_update_table2 select * from 
	      	     internal_proxy_docid_update_table d;
	      insert ignore into internal_proxy_docid_update_table (docid, version) 
	      	     select i.docid, i.version from 
	      	     internal_proxy_documents i join internal_proxy_docid_update_table2 d2 
		     on (i.dependent_on = d2.docid);
	      select count(*) into new_len from internal_proxy_docid_update_table d;
	end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user_surveillance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `create_user_surveillance`(user_id integer unsigned, surveillance_data text)
begin
    declare len integer unsigned;
    declare pos integer unsigned default 0;
    declare cur_data text;
    declare did text;
    declare site_or_page text;
    declare sd text;

    set sd = concat(surveillance_data, ';');
    set len = length(sd) - length(replace(sd, ';', ''));
    while pos < len do
        set cur_data = substring_index(substring_index(sd, ';', pos + 1), ';', -1);
        set did = substring_index(cur_data, ':', -1);
        set site_or_page = substring_index(cur_data, ':', 1);
        set pos = pos + 1;

        if 'omrade' = site_or_page then
            replace into user_surveillance_sites (docid, user_id)
                values (did, user_id);
        elseif 'webside' = site_or_page then
            replace into user_surveillance_docs (docid, user_id)
                values (did, user_id);
        end if;
    end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_document` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `delete_document`(did integer unsigned)
begin
	delete d from documents d where id=did;
	delete vf from vfields vf where docid=did;
	delete ver from versions ver where docid=did;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_tree` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `delete_tree`(docid integer unsigned)
begin
       call backup_recursive_subdocs();
       call recursive_subdocs(docid);
       call really_delete_tree();

       call restore_recursive_subdocs();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_user_surveillance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `delete_user_surveillance`(user_id integer unsigned)
begin
	delete from user_surveillance_docs where user_surveillance_docs.user_id = user_id;
        delete from user_surveillance_sites where user_surveillance_sites.user_id = user_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `do_search`(in_path varchar(1024), 
                           in_pattern varchar(1024), 
                           owner integer unsigned, 
                           grp integer unsigned, 
                           newer_than datetime, 
                           older_than datetime
                           )
begin
        declare pattern varchar(1024);
        declare path varchar(1026);

        set path = concat(in_path, "%");
        set pattern = concat('%', replace(in_pattern, '*', '%'), '%');

        select distinct(d.id) from
               documents d join docid_path dp on (d.id = dp.docid and dp.path like path)
               join versions v on (d.id = v.docid and (v.public = 1 or v.version = (select max(v2.version) from versions v2 where v2.docid  = d.id)))
               left join vfields vf1 on 
                    (v.docid = vf1.docid and vf1.version = v.version and 
                    vf1.name in ('content', 'title', 'short_title'))
        where    
                (pattern is null or vf1.text_value like pattern or d.name like pattern) and
                (owner is null or d.owner = owner) and
                (grp is null or d.grp = grp) and
                (older_than is null or v.version < older_than) and
                (newer_than is null or v.version > newer_than);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_doc_by_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `find_doc_by_path`(path varchar(1024), out docid integer unsigned)
begin
     declare len integer unsigned;
     declare pos integer unsigned default 1;
     declare tid integer unsigned;
     declare cid integer unsigned default 1;
     declare pp varchar(255);

     if not path regexp "/$" then
        set path = concat(path, "/");
     end if;

     if trim(path) = '/' then
        set docid = 1;
     else         
        set len = length(path) - length(replace(path, '/', ''));
        scanner:while pos < len do 
           set pp = substring_index(substring_index(path, '/', pos + 1), '/', -1);
           set pos = pos + 1;
           if pp = '' then iterate scanner; end if;
           set tid = 0;
           
           select d.id into tid from documents d
                  where d.name = pp AND d.parent = cid;
           if tid = 0 then leave scanner; end if;
           set cid = tid;
     end while ;
     set docid = tid;
   end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_path_by_docid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `find_path_by_docid`(docid integer, out outpath varchar(1024))
begin 
      declare res text default '';
      declare docid2 integer unsigned;
      while docid != 1 do
            set docid2 = null;
            select concat(d.name,'/', res), d.parent into res, docid2 from documents d where d.id = docid;
            set docid = docid2;
      end while;
      
      select case when docid = 1 then concat('/', res) end path into outpath;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_docid_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `insert_docid_path`(did integer unsigned)
begin
        declare path varchar(1024);
        call find_path_by_docid(did, path);
        delete docid_path from docid_path where docid=did;
        insert into docid_path (docid, path) values (did, path);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_internal_proxy_entry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `insert_internal_proxy_entry`(docid integer unsigned, version datetime, dependent_on integer unsigned, fields varchar(16384))
begin
	declare cur varchar(128) default '';
	declare good integer default 0;
	declare len integer unsigned default 0;
	declare pos integer unsigned default 0;
	declare id integer unsigned;
	
	insert into internal_proxy_documents (docid, version, dependent_on) values (docid, version, dependent_on);
	set id = last_insert_id();
	
	call check_internal_proxy_status(good);
	
	if not good then
	   call ERROR_YOU_HAVE_CREATED_A_CYCLE();
	end if;

	delete i from internal_proxy_fields i where relation_id = id;
	set len = length(fields) - length(replace(fields, ',', ''));
	while pos < len + 1 do
	      set cur = substring_index(substring_index(fields, ',', pos + 1), ',', -1);
	      insert into internal_proxy_fields (relation_id, name) values (id, cur);
	      set pos = pos + 1;
	end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_path_tree_link` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `insert_path_tree_link`(
    in_parent int(8) unsigned,
    in_child int(8) unsigned
)
begin
    insert into path_tree (`parent`, `child`, `depth`)
        select
            p.parent, c.child, p.depth+c.depth+1
        from
            path_tree p, path_tree c
        where
            p.child=in_parent and c.parent=in_child;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `internal_proxy_when_document_updated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `internal_proxy_when_document_updated`(docid integer unsigned)
begin
        declare done integer default 0;
        declare a integer unsigned;
	declare v datetime;
        declare c cursor for (select d.docid, d.version from internal_proxy_documents d where d.dependent_on = docid);
        declare continue handler for not found set done=1;
        
        open c;
        fetch c into a,v;
        while not done do
              call update_internal_proxies(a, v);
              fetch c into a,v;
        end while;
        close c;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `is_forbidden_doc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `is_forbidden_doc`(docid integer unsigned)
begin
     declare tid integer unsigned;
     declare cid integer unsigned;
     declare is_forbidden boolean default false;
 
     set tid = docid;
     set cid = tid;
     scanner:while tid != 0 do
           select true into is_forbidden from forbidden_docs fd where fd.docid = tid;
           if is_forbidden then
              leave scanner;
           end if;
           select d.parent into tid from documents d
                  where d.id = tid;
           if cid = tid then
              leave scanner;
           end if;
           set cid = tid;
     end while ;
     select is_forbidden;             
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `is_internal_proxy_document` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `is_internal_proxy_document`(docid integer unsigned)
begin
	select count(*) as is_ from internal_proxy_documents i where i.docid = docid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `move_document` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `move_document`(docid integer unsigned, new_parent integer unsigned, new_name varchar(1024))
begin
        update documents set parent=new_parent,name=coalesce(new_name,name)  where id=docid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_internal_proxy_entry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `new_internal_proxy_entry`(docid integer unsigned, version datetime, depends_on integer unsigned, fields varchar(16384))
begin
	call insert_internal_proxy_entry(docid, version, depends_on, fields);
	call update_internal_proxy_document(docid, version);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `public_or_latest_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `public_or_latest_version`(did integer unsigned, out version datetime)
begin
        select v.version into version from versions v 
               where v.docid = did and 
                     (v.public = 1 or 
                     ((not exists 
                          (select * from versions v2 where 
                                  v2.docid = did and 
                                  v2.public = 1))
                      and (v.version in (select max(v3.version) 
                          from versions v3 where v3.docid = did)))) limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `publish_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `publish_version`(docid integer unsigned, version datetime, lang varchar(100))
begin
        update versions v set public = 0 where (lang is null or (v.lang = lang));
        update versions v set public = 1 where (v.docid = docid and v.version = version);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_vfields` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `read_vfields`(docid integer unsigned, version datetime, names varchar(16384))
begin
	declare pos integer unsigned default 0;
	declare len integer unsigned default 0;
	
	create temporary table if not exists read_vfields_helper (name varchar(1024) primary key) engine = heap;
	delete r from read_vfields_helper r;

	set len = length(names) - length(replace(names, ",", ""));
	while pos < len or (pos = 0 and len = 0) do
	      insert into read_vfields_helper values (substring_index(substring_index(names, ",", pos + 1), ",", -1));
	end while;
	
	select vf.* from vfields vf join read_vfields_helper r on (vf.docid = docid and vf.version = version and vf.name = r.name);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_vfields_from_pol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `read_vfields_from_pol`(docid integer unsigned, names varchar(16384))
begin
	declare version datetime default null;
	
	call public_or_latest_version(docid, version);
	if version is null then
	   call ERROR_NO_PUBLIC_OR_LATEST_VERSION();
	end if;	
	
	call read_vfields(docid, version, names);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `really_delete_tree` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `really_delete_tree`()
begin 
	declare done integer default 0;
	declare a integer unsigned;
     	declare c cursor for (select * from recursive_subdocs_table);
        declare continue handler for not found set done=1;
		
	open c;
	fetch c into a;
	while not done do call delete_document(a); fetch c into a; end while;
	delete from recursive_subdocs_table;

	close c;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rebuild_path_tree` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `rebuild_path_tree`()
begin
    declare num_todo integer unsigned;
    declare insert_depth integer unsigned;

    set insert_depth = 0;

    
    delete from path_tree;

    
    insert into path_tree (parent, child, depth)
        select id, id, insert_depth from documents;

    set num_todo = ROW_COUNT();
    while num_todo != 0 do
        
        insert into path_tree (parent, child, depth)
            select
                t.parent, c.id, t.depth+1
            from
                path_tree t
                join documents c on c.parent = t.child
            where
                t.depth = insert_depth;
            set num_todo = ROW_COUNT();
            set insert_depth = insert_depth + 1;
    end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recursive_subdocs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `recursive_subdocs`(docid integer unsigned)
begin
        declare old_len integer unsigned default 0;
        declare new_len integer unsigned default 1;
	
	create temporary table if not exists recursive_subdocs_table2 
	       (id integer unsigned primary key) engine=heap;
	
	delete from recursive_subdocs_table;
        insert into recursive_subdocs_table set id=docid;
	
        subdocs:while old_len != new_len do
                      set old_len = new_len;
		      delete r2 from recursive_subdocs_table2 r2;
		      insert ignore into recursive_subdocs_table2 (id)
		      	     select id from recursive_subdocs_table;
                      insert ignore into recursive_subdocs_table (id) select                 
                             d.id from recursive_subdocs_table2 r2 join 
                             documents d on (r2.id = d.parent); 
                       select count(*) into new_len from recursive_subdocs_table;
         end while;
	 drop temporary table recursive_subdocs_table2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recursive_subdocs_trigger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `recursive_subdocs_trigger`(docid integer unsigned)
begin
        declare old_len integer unsigned default 0;
        declare new_len integer unsigned default 1;
	
	create temporary table if not exists recursive_subdocs_table2 
	       (id integer unsigned primary key) engine=heap;
	
	delete from recursive_subdocs_trigger_table;
        insert into recursive_subdocs_trigger_table set id=docid;
	
        subdocs:while old_len != new_len do
                      set old_len = new_len;
		      delete r2 from recursive_subdocs_table2 r2;
		      insert ignore into recursive_subdocs_table2 (id)
		      	     select id from recursive_subdocs_trigger_table;
                      insert ignore into recursive_subdocs_trigger_table (id) select
                             d.id from recursive_subdocs_table2 r2 join 
                             documents d on (r2.id = d.parent); 
                      select count(*) into new_len from recursive_subdocs_trigger_table;
         end while;
	 drop temporary table recursive_subdocs_table2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_path_tree_link` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `remove_path_tree_link`(
    in_parent int(8) unsigned,
    in_child int(8) unsigned
)
begin
    delete link
        from
            path_tree p, path_tree link, path_tree c
        where
            p.parent = link.parent and c.child = link.child
        and
            p.child=in_parent and c.parent=in_child;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reset_closest_subsite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `reset_closest_subsite`()
begin

    declare max_depth integer unsigned;
    declare current_depth integer unsigned;

    
    update
        docs_with_extra documents
    set
        closest_subsite = (select id from subsites2 where root_docid = 1)
    where
        documents.id = 1;


    set current_depth = 1;
    select max(depth) from path_tree into max_depth;

    while current_depth <= max_depth do
        update
            docs_with_extra documents
            join path_tree on (
                documents.id = path_tree.child and
                `depth` = current_depth
            )
            join docs_with_extra parent on documents.parent = parent.id
            left join subsites2 on documents.id = subsites2.root_docid
        set
            documents.closest_subsite = COALESCE(
                subsites2.id, parent.closest_subsite
            )
        where
            path_tree.parent = 1;

        set current_depth = current_depth + 1;
    end while;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reset_public_or_latest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `reset_public_or_latest`()
begin

    update
        documents_extra
        left join versions on (
            documents_extra.id = versions.docid
            and
            versions.public = 1
        )
    set
        documents_extra.public_or_latest_version = COALESCE(
            versions.id,
            (
                select
                    max(mv.id)
                from
                    versions mv
                where
                    mv.docid = documents_extra.id
            )
        );

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `restore_recursive_subdocs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `restore_recursive_subdocs`()
begin
	declare id integer unsigned;

	drop temporary table recursive_subdocs_table;
	create temporary table if not exists recursive_subdocs_table (id integer unsigned primary key auto_increment);

	select max(id) into id from recursive_subdocs_backup_list rl;
	insert into recursive_subdocs_table
	       select recursive_id from recursive_subdocs_backup rsb where rsb.backup_id = id;
	
	delete rl from recursive_subdocs_backup_list rl where rl.id = id;
	delete rsb from recursive_subdocs_backup rsb where rsb.backup_id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `stupid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `stupid`(n integer unsigned)
begin
        while n > 0 do
              set n = n - 1;
              select true;
        end while;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `unpublish_document` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `unpublish_document`(docid integer unsigned, lang varchar(100))
begin
        update versions v set public = 0 where v.docid = docid and (lang is null or (v.lang = lang));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_closest_subsite_recursive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_closest_subsite_recursive`(for_docid int(8) unsigned)
begin

    declare num_todo integer unsigned;
    declare depth_below integer unsigned;

    
    update
        docs_with_extra documents
        left join docs_with_extra parent on documents.parent = parent.id
        left join subsites2 on documents.id = subsites2.root_docid
    set
        documents.closest_subsite = COALESCE(
            subsites2.id, parent.closest_subsite
        )
    where
        documents.id = for_docid
    ;

    set num_todo = ROW_COUNT();
    set depth_below = 1;

    while num_todo != 0 do
        update
            docs_with_extra documents
            join path_tree on (
                documents.id = path_tree.child and
                `depth` = depth_below
            )
            join docs_with_extra parent on documents.parent = parent.id
            left join subsites2 on documents.id = subsites2.root_docid
        set
            documents.closest_subsite = COALESCE(
                subsites2.id, parent.closest_subsite
            )
        where
            path_tree.parent = for_docid;

        set num_todo = ROW_COUNT();
        set depth_below = depth_below + 1;
    end while;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_docid_path_recursive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_docid_path_recursive`(for_docid int(8) unsigned)
begin

    declare max_depth integer unsigned;
    declare current_depth integer unsigned;

    
    delete
        docid_path
    from
        docid_path
        left join documents on docid_path.docid = documents.id
    where
        docid_path.docid = for_docid
        AND
        documents.id IS NULL;

    
    insert into docid_path (docid, path)
        select
            documents.id docid,
            IF(
                parent_path.path IS NOT NULL,
                CONCAT(parent_path.path, documents.name, '/'),
                '/'
            ) new_path
        from
            documents
            left join documents parent_doc on (
                documents.parent = parent_doc.id
            )
            left join docid_path parent_path on (
                parent_doc.id = parent_path.docid
            )
        where
            documents.id = for_docid
    on duplicate key
        update docid_path.path = IF(
            parent_path.path IS NOT NULL,
            CONCAT(parent_path.path, documents.name, '/'),
            '/'
        );

    set current_depth = 1;
    select max(depth) from path_tree where parent = for_docid into max_depth;

    while current_depth <= max_depth do
        
        update
            docid_path
            join documents on (docid_path.docid = documents.id)
            join path_tree on (
                documents.id = path_tree.child and
                `depth` = current_depth and
                path_tree.parent = for_docid
            )
            join documents parent_doc on (
                documents.parent = parent_doc.id
            )
            join docid_path parent_path on (
                parent_doc.id = parent_path.docid
            )
            join docid_path existing_path on (
                documents.id = existing_path.docid
            )
        set
            docid_path.path = CONCAT(parent_path.path, documents.name, '/')
        where
            existing_path.path != CONCAT(
                parent_path.path, documents.name, '/'
            );

        
        insert into docid_path (docid, path)
            select
                documents.id docid,
                CONCAT(parent_path.path, documents.name, '/') new_path
            from
                documents
                join path_tree on (
                    documents.id = path_tree.child and
                    `depth` = current_depth and
                    path_tree.parent = for_docid
                )
                join documents parent_doc on (
                    documents.parent = parent_doc.id
                )
                join docid_path parent_path on (
                    parent_doc.id = parent_path.docid
                )
                left join docid_path existing_path on (
                    documents.id = existing_path.docid
                )
            where
                existing_path.path is NULL;

        set current_depth = current_depth + 1;
    end while;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_has_public_path_recursive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_has_public_path_recursive`(for_docid int(8) unsigned)
begin
    declare num_todo integer unsigned;
    declare depth_below integer unsigned;

    
    update
        docs_with_extra documents
        left join docs_with_extra parent on documents.parent = parent.id
        left join versions on (
            versions.docid = documents.id
            and
            versions.public = 1
        )
    set
        documents.has_public_path = (
            versions.public
            AND (
                not documents.parent
                OR
                parent.has_public_path
            )
        )
    where
        documents.id = for_docid
    ;

    set num_todo = ROW_COUNT();
    set depth_below = 1;

    
    IF num_todo > 0 and NOT EXISTS(
        select
            1
        from
            docs_with_extra documents
        where
            id = for_docid
            and
            has_public_path = true
    ) THEN

        update
            docs_with_extra documents
            join path_tree on path_tree.child = documents.id
        set
            has_public_path = false
        where
            path_tree.parent = for_docid;

        set num_todo = 0;

    END IF;

    while num_todo != 0 do
        update
            docs_with_extra documents
            join path_tree on (
                documents.id = path_tree.child and
                `depth` = depth_below
            )
            left join versions on (
                versions.docid = documents.id and
                versions.public = 1
            )
            join docs_with_extra parent on documents.parent = parent.id
        set
            documents.has_public_path = (
                versions.public is not null and
                versions.public and
                parent.has_public_path
            )
        where
            path_tree.parent = for_docid;

        set num_todo = ROW_COUNT();
        set depth_below = depth_below + 1;
    end while;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_internal_proxies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_internal_proxies`(docid integer unsigned, version datetime)
begin 
      call create_internal_proxy_docid_update_table(docid, version);
      call update_internal_proxies_do();
      delete d from internal_proxy_docid_update_table d;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_internal_proxies_do` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_internal_proxies_do`()
begin
	declare done integer default 0;
	declare a integer unsigned;
	declare v datetime;
	declare c cursor for (select d.docid, d.version from internal_proxy_docid_update_table d order by id asc);
        declare continue handler for not found set done=1;
	
	open c;
	fetch c into a, v;

	while not done do
	      call update_internal_proxy_document(a, v);
	      fetch c into a, v;
	end while;

	close c;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_internal_proxy_docids` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_internal_proxy_docids`(docids varchar(16384))
begin
      declare len integer unsigned;
      declare cur varchar(128) default '';
      declare pos integer unsigned default 0;
      
      start transaction;
      set len = length(docids) - length(replace(docids, ',', ''));
      while pos < len + 1 do
            set cur = substring_index(substring_index(docids, ',', pos + 1), ',', -1);
	    call internal_proxy_when_document_updated(convert(cur, unsigned));
	    set pos = pos + 1;
      end while;
      commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_internal_proxy_document` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_internal_proxy_document`(docid integer unsigned, version datetime)
begin
	declare dep_docid integer unsigned default 0;
	declare dep_version datetime default null;
	
	if version is null then
	   call ERROR_NO_PUBLIC_OR_LATEST_VERSION();
	end if;

	select dependent_on into dep_docid from internal_proxy_documents i
	       where i.docid = docid and i.version = version;
	call public_or_latest_version(dep_docid, dep_version);
	       	
	if dep_version is null then
	   call ERROR_NO_PUBLIC_OR_LATEST_VERSION();
	end if;

	delete vf from vfields vf where
	       vf.docid = docid and vf.version = version and
	       vf.name not in (select ipf.name from internal_proxy_documents ipd join internal_proxy_fields ipf on 
	       	   	  (ipf.relation_id = ipd.id) where ipd.version = version and ipd.docid = docid);
	insert ignore into vfields (docid, version, name, text_value, double_value, date_value, int_value)
	       select docid, version, vf.name, vf.text_value, vf.double_value, vf.date_value, vf.int_value
	       from vfields vf where 
	       vf.docid = dep_docid and vf.version = dep_version and vf.name not in 
	       (select ipf.name from internal_proxy_documents ipd join internal_proxy_fields ipf on 
	       	   	  (ipf.relation_id = ipd.id) where ipd.docid = docid and ipd.version = version);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_move` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_move`(docid integer unsigned)
begin
    call update_docid_path_recursive(docid);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_move_internal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_move_internal`()
begin
        declare path varchar(1024);
        declare a int unsigned default 0;
        declare done int default 0;
        declare curs cursor for (select * from recursive_subdocs_trigger_table);
        declare continue handler for not found set done=1;

        open curs;
        fetch curs into a;

        while not done do
              call find_path_by_docid(a, path);
	      delete docid_path from docid_path where docid=a;
              replace into docid_path (docid, path) values (a, path);
              fetch curs into a;
        end while;
        
        close curs;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_public_or_latest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_public_or_latest`(for_docid int(8) unsigned)
begin

    update
        documents_extra
        left join versions on (
            documents_extra.id = versions.docid
            and
            versions.public = 1
        )
    set
        documents_extra.public_or_latest_version = COALESCE(
            versions.id,
            (
                select
                    max(mv.id)
                from
                    versions mv
                where
                    mv.docid = documents_extra.id
            )
        )
    where
        documents_extra.id = for_docid;

end ;;
DELIMITER ;
