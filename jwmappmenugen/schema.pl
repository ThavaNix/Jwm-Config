#!/usr/bin/perl

# jwmappmenugen - schema file

=for comment

item: add an item into the menu

    {item => ["command", "label", "icon"]}


cat: add a category into the menu

    {cat => ["name", "label", "icon"]}


begin_cat: begin of a category

    {begin_cat => ["name", "icon"]}


end_cat: end of a category

    {end_cat => undef}


sep: horizontal line separator

    {sep => undef}



=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require '/home/thava/.config/jwmappmenugen/config.pl';

our $SCHEMA = [
    #          COMMAND             LABEL                ICON
    {item => ['termite',         'Terminal',       'terminal']},
    {item => ['firefox',         'Web browser',       'firefox']},
    {item => ['thunar',         'File Manager',       'thunar']},
    {item => ['gmrun',         'Run command',       'system-run']},

    {sep => 'undef'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},
    

    {sep => 'undef'},
    {begin_cat => ['JWM',  'openbox']},
	{item => ['geany ~/.jwmrc',         'Edit JWM Config',       'geany']},
	{item => ['geany ~/.config/jwm/autostart.sh',         'Edit Startup Script',       'geany']},
	{item => ['jwm -restart',         'Restart JWM',       'system']},
	{item => ['jwm -reload',         'Reload JWM-Menu',       'system']},		
    {item => ['jwm -exit',         'Exit JWM',       'lock']},
    {begin_cat => ['jwmappmenugen',  'openbox']},
	{item => ['jwm -reload',         'Reload JWM-Menu',       'restart']},	
	{item => ['geany ~/.config/jwmappmenugen/schema.pl',         'Edit schema.pl',       'geany']},	
	{item => ['geany ~/.config/jwmappmenugen/confgg.pl',         'Edit config.pl',       'geany']},	
    {end_cat   => undef},
    {end_cat   => undef},
    {item => ['oblogout',         'Logout',       'exit']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

]
