--
-- /packages/monitoring/sql/oracle/monitoring-drop.sql
--
-- Monitoring drop script
--
-- @author Vinod Kurup (vinod@kurup.com)
-- @creation-date 2002-08-17
-- @cvs-id $Id$
--

drop sequence ad_monitoring_tab_est_seq start;
drop table ad_monitoring_tables_estimated;

drop sequence ad_monitoring_top_proc_proc_id;
drop table ad_monitoring_top_proc;

drop sequence ad_monitoring_top_top_id;
drop table ad_monitoring_top;

