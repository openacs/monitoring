# /packages/monitoring/tcl/watchdog-init.tcl
ad_library {
     
     @author jbank@arsdigita.com [jbank@arsdigita.com]
     @creation-date Tue Jan 30 16:35:55 2001
     @cvs-id
}

ns_share -init {set wd_installed_p 0} wd_installed_p

if {! $wd_installed_p} {
    if {[monitoring_pkg_id] != 0} {
        set check_frequency [wd_email_frequency]
        if {$check_frequency > 0} {
            ad_schedule_proc [expr 60 * $check_frequency] wd_mail_errors
            ns_log Notice "Scheduling watchdog"
        }
        set wd_installed_p 1
    }
}
