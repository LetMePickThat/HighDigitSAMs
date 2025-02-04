-- aster 30 block 1 by zahnatom

local nameaster301 = "Aster 30 Blk 2"
SAMPT_ASTER_30_Blk_2 = {
    category        = CAT_MISSILES,
    name            = nameaster301,
    user_name       = _(nameaster301),
    model           = 'aster_30_blk_2',
    mass            = 750.0,
    wsTypeOfWeapon  =  {wsType_Weapon,wsType_Missile,wsType_SA_Missile,WSTYPE_PLACEHOLDER},

    Escort 			= 0,
    Head_Type 		= 2,
	sigma 			= {2.5, 2.5, 2.5},
    M 				= 750.0,
    H_max 			= 70000.0,
    H_min 			= 20000.0,
    Diam 			= 450.0,
    Cx_pil 			= 1,
    D_max 			= 100000.0,
    D_min 			= 10000.0,
    Head_Form 		= 1,
    Life_Time 		= 360.0,
    Nr_max 			= 75,
    v_min 			= 50.0,
    v_mid 			= 5000.0,
    Mach_max 		= 9.0,
    t_b 			= 0.0,
    t_acc 			= 15.0,
    t_marsh 		= 25.0,
    Range_max 		= 200000.0,
    H_min_t 		= 15000.0,
    Fi_start     	= 3.14152, -- angle of tracking at firing
    Fi_rak       	= 3.14152,
    Fi_excort    	= 2.0,
    Fi_search    	= 99.9, --search angle limit
    OmViz_max    	= 99.9, --search line speed limit
	exhaust1 	 	= { 1, 1, 1, 1},
    X_back       	= -0.6,
    Y_back       	= 0.0,
    Z_back       	= 0.0,	
	exhaust2 	 	= { 0.63, 0.67, 0.75, 0.2 },
	X_back_acc 	 	= -4,
    Y_back_acc 	 	= 0.0,
    Z_back_acc 	 	= 0.0,	
    Reflection 		= 0.1,
    KillDistance 	= 15.0,
	tail_scale 	 	= 1.4,		
	ccm_k0 			= 0.1,	
	
	active_radar_lock_dist	= 200000.0,
	go_active_by_default	= 0,	

	PN_coeffs = {2, 				-- Number of Entries
				50000.0 ,1.0,		-- Less 50 km to target Pn = 1
				200000.0, 1.0};	

	warhead = enhanced_a2a_warhead(15.0); 

    shape_table_data = {
        {
            name     = nameaster301,
            file     = 'aster_30_blk_2',
            life     = 1,
            fire     = {0, 1},
            username = "Aster 30 Blk 2",
            index    = WSTYPE_PLACEHOLDER,
        },
    },

};

declare_weapon(SAMPT_ASTER_30_Blk_2)

GT_t.WS_t.Aster30_2 = {name = "Aster 30 Blk 2", display_name = _("Aster 30 Blk 2")};

GT_t.LN_t.Aster30_2 = {}; 
GT_t.LN_t.Aster30_2.type = 4;
GT_t.LN_t.Aster30_2.distanceMin = 10000;
GT_t.LN_t.Aster30_2.distanceMax = 200000;
GT_t.LN_t.Aster30_2.min_trg_alt = 20000;
GT_t.LN_t.Aster30_2.max_trg_alt = 70000;
GT_t.LN_t.Aster30_2.reactionTime = 6.0;
GT_t.LN_t.Aster30_2.launch_delay = 0.1;
GT_t.LN_t.Aster30_2.reflection_limit = 0.0001;
GT_t.LN_t.Aster30_2.ECM_K = 0.1
GT_t.LN_t.Aster30_2.max_number_of_missiles_channels = 1;
GT_t.LN_t.Aster30_2.sensor = {};

set_recursive_metatable(GT_t.LN_t.Aster30_2.sensor, GT_t.WSN_t[0]);

GT_t.LN_t.Aster30_2.external_tracking_awacs = false;
GT_t.LN_t.Aster30_2.show_external_missile = false;
GT_t.LN_t.Aster30_2.PL = {};
GT_t.LN_t.Aster30_2.PL[1] = {};
GT_t.LN_t.Aster30_2.PL[1].switch_on_delay = 1.0;
GT_t.LN_t.Aster30_2.PL[1].shot_delay = 1.0;
GT_t.LN_t.Aster30_2.PL[1].ammo_capacity = 8;
GT_t.LN_t.Aster30_2.PL[1].type_ammunition = SAMPT_ASTER_30_Blk_2.wsTypeOfWeapon;
GT_t.LN_t.Aster30_2.PL[1].reload_time = 3600;
GT_t.LN_t.Aster30_2.BR = { {pos = {0,0,0}}};