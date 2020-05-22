surface_resize(application_surface, VIEWWIDTH, VIEWHEIGHT);
display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);
if(os_browser != browser_not_a_browser) window_set_size(VIEWWIDTH * 6, VIEWHEIGHT * 6);
instance_create_layer(x, y, "Instances", oPalette);
instance_create_layer(x, y, "Instances", oSegment_collector);