# /packages/monitoring/tcl/monitoring-init.tcl
ad_library {
     Initialization code
     @author jbank@arsdigita.com [jbank@arsdigita.com]
     @creation-date Tue Jan 30 16:33:58 2001
     @cvs-id
}

# TopFrequency determines how often this proc is run, in minutes.
# If this is run too often, it occasionally runs into memory
# allocation trouble when trying to exec top... 
set top_frequency [ad_parameter -package_id [monitoring_pkg_id] TopFrequency monitoring 0]
ns_log Notice "top_frequency is $top_frequency"

if { $top_frequency > 0 } {
	set top_frequency_in_seconds [expr 60 * $top_frequency]
	ad_schedule_proc $top_frequency_in_seconds ad_monitor_top
}


ns_schedule_daily -thread 20 48  ad_monitoring_analyze_tables
