
ad_page_contract {
    Show all the links to Monitoring sub-modules
    @cvs-id $Id$
} {}

set dev_support_link ""
set dev_support_id [apm_package_id_from_key "acs-developer-support"]
if { $dev_support_id != 0 } {
    set dev_support_url [db_string get_package_url { *SQL* } -default ""]
    if { ![empty_string_p $dev_support_url] } {
        set dev_support_link "<li><a href=\"$dev_support_url\">Developer Support Request Information</a>"
    }
}

# vinodk: FIXME: show only those links specific to the running database

doc_return 200 text/html "[ad_header "Monitoring  [ad_system_name]"]

<h2>Monitoring  [ad_system_name]</h2>

[ad_context_bar]

<hr>

<ul>

<li><a href=\"monitor\">Current page requests</a>
<li><a href=\"cassandracle\">Cassandracle</a> (Oracle)
<li><a href=\"configuration\">Configuration</a>
<li><a href=\"watchdog\">WatchDog</a> (Error Log)
(log messages written from within PL/SQL)
<li><a href=\"filters\">Filters</a>
<li><a href=\"registered-procs\">Registered Procedures</a>
<li><a href=\"scheduled-procs\">Scheduled Procedures</a>
<li><a href=\"startup-log\">Startup Log</a>
<li><a href=\"top\">Statistics from top</a>
<li><a href=\"analyze\">Table analysis</a>
$dev_support_link

</ul>

[ad_admin_footer]
"



