#     È                GLSL.std.450                     main    &  *  .  2  6  Å               Â       main         cook_torrence(vf4;vf3;vf3;vf3;vf3;vf3;vf3;f1;f1;         light_pos_radius         light_colour         n        world_pos        view_pos         albedo       metalness        roughness        reflectivity          oren_nayar(vf4;vf3;vf3;vf3;vf3;f1;vf3;       light_pos_radius         light_colour         n        world_pos        view_pos         roughness        albedo    '   spot_light_attenuation(vf4;vf4;f1;vf3;    #   light_pos_radius      $   light_dir_cutoff      %   falloff   &   world_pos     )   l     /   n_dot_l   9   roughness_sq      =   k     ?   v_view    D   hv    I   n_dot_v   M   n_dot_h   Q   v_dot_h   U   n_dot_h_2     Y   g1    _   g2    e   geom_atten    k   r1    s   r2    ~   roughness_atten      fresnel      specular         lit_colour    ¯   v     ´   l     º   l_dot_v   ¾   n_dot_l   Â   n_dot_v   Æ   s     Ì   t     Ó   lum   Ö   sigma2    Ú   A     é   B       co    	  vl      sd      dp       vs_output            position            screen_coord            light_pos_radius            light_dir_cutoff            light_colour            light_data    "  _input    &  screen_coord_vs_output   	 *  light_pos_radius_vs_output   	 .  light_dir_cutoff_vs_output    2  light_colour_vs_output    6  light_data_vs_output      ;  sc    ?  final_light_col   A  samples   B  i     L  g_albedo      P  gbuffer_albedo    T  g_normals     U  gbuffer_normals   Y  g_world_pos   Z  gbuffer_world_pos     ^  albedo    a  n     e  world_pos     h  metalness     k  roughness     n  reflectivity      q  light_col     s  per_pass_view     s      vp_matrix     s     view_matrix   s     vp_matrix_inverse     s     view_matrix_inverse   s     camera_view_pos   s     camera_view_dir   s     viewport_correction   u        w  param     z  param     ~  param       param       param       param       param       param       param       param       param       param       param       param       param        param     ¥  param     ¨  param     «  param     ¯  param     ¹  ps_output     ¹      colour    »  _output   Å  colour_ps_output    G  &        G  *        G  .        G  2        G  6        G  P  "       G  P  !       G  U  "       G  U  !      G  Z  "       G  Z  !      H  s         H  s      #       H  s            H  s        H  s     #   @   H  s           H  s        H  s     #      H  s           H  s        H  s     #   À   H  s           H  s     #      H  s     #     H  s     #      G  s     G  u  "       G  u  !       G  Å              !                                          	            
      	               !     	      
   
   
   
   
   
         ! 
    	      
   
   
   
      
   !  "               
   +     4         5   +     V      @+     f     ?+     l     @+           @+        äI@,  	   ¬   4   4   4   +     Þ   ¸>+     á      ?+     ã   Ãõ¨>+     ê   ffæ>+     î   ìQ¸=+     ÿ   ÛI@            +                                   !          #         +  #  $        %        ;  %  &     +  #  )     ;  %  *     +  #  -     ;  %  .     +  #  1     ;  %  2     +  #  5     ;  %  6       9           :     9     @     #  +  #  C       	 M                             N  M     O      N  ;  O  P      ;  O  U      ;  O  Z        r         	 s  r  r  r  r              t     s  ;  t  u     ,  	   v  á   á   á              +    ¬        ¹        º     ¹     Ä        ;  Ä  Å     6               ø     ;  !  "     ;  :  ;     ;  
   ?     ;  @  A     ;  @  B     ;     L     ;     T     ;     Y     ;  
   ^     ;  
   a     ;  
   e     ;     h     ;     k     ;     n     ;  
   q     ;     w     ;  
   z     ;  
   ~     ;  
        ;  
        ;  
        ;  
        ;          ;          ;          ;  
        ;  
        ;  
        ;  
        ;          ;  
         ;     ¥     ;     ¨     ;     «     ;  
   ¯     ;  º  »     =     '  &  A     (  "  $  >  (  '  =     +  *  A     ,  "  )  >  ,  +  =     /  .  A     0  "  -  >  0  /  =     3  2  A     4  "  1  >  4  3  =     7  6  A     8  "  5  >  8  7  A     <  "  $  =     =  <  O  9  >  =  =         >  ;  >  >  ?  ¬   >  A  $  >  B  C  ù  D  ø  D  ö  F  G      ù  H  ø  H  =  #  I  B  =  #  J  A  ±  5   K  I  J  ú  K  E  F  ø  E  =  N  Q  P  =  9  R  ;  W     S  Q  R  >  L  S  =  N  V  U  =  9  W  ;  W     X  V  W  >  T  X  =  N  [  Z  =  9  \  ;  W     ]  [  \  >  Y  ]  =     _  L  O  	   `  _  _            >  ^  `  =     b  T  O  	   c  b  b              	   d     E   c  >  a  d  =     f  Y  O  	   g  f  f            >  e  g  A     i  Y    =     j  i  >  h  j  A     l  L    =     m  l  >  k  m  A     o  T    =     p  o  >  n  p  A     x  "  )  =     y  x  >  w  y  A     {  "  1  =     |  {  O  	   }  |  |            >  z  }  =  	     a  >  ~    =  	     e  >      A      u  1  =         O  	                   >      =  	     ^  >      >    v  =       k  >      =       n  >      9  	        w  z  ~              >  q    A       "  )  =         >      A       "  1  =         O  	                   >      =  	     a  >      =  	     e  >      A      u  1  =         O  	                   >      =       k  >      =  	   ¡  ^  >     ¡  9  	   ¢                     =  	   £  q    	   ¤  £  ¢  >  q  ¤  A     ¦  "  )  =     §  ¦  >  ¥  §  A     ©  "  -  =     ª  ©  >  ¨  ª  A     ­  "  5  ¬  =     ®  ­  >  «  ®  =  	   °  e  >  ¯  °  9     ±  '   ¥  ¨  «  ¯  =  	   ²  q    	   ³  ²  ±  >  q  ³  =  	   ´  q  =  	   µ  ?    	   ¶  µ  ´  >  ?  ¶  ù  G  ø  G  =  #  ·  B    #  ¸  ·  $  >  B  ¸  ù  D  ø  F  =  	   ¼  ?  =  #  ½  A  o     ¾  ½  P  	   ¿  ¾  ¾  ¾    	   À  ¼  ¿  A     Á  »  C  =     Â  Á  O 	    Ã  Â  À              >  Á  Ã  A     Æ  »  C  =     Ç  Æ  >  Å  Ç  ý  8  6  	             7        7  
      7  
      7  
      7  
      7  
      7  
      7        7        ø     ;  
   )      ;     /      ;     9      ;     =      ;  
   ?      ;  
   D      ;     I      ;     M      ;     Q      ;     U      ;     Y      ;     _      ;     e      ;     k      ;     s      ;     ~      ;           ;           ;  
         =     *      O  	   +   *   *             =  	   ,        	   -   +   ,     	   .      E   -   >  )   .   =  	   0      =  	   1   )        2   0   1   >  /   2   =     3   /   º  5   6   3   4   ÷  8       ú  6   7   8   ø  7   =     :      =     ;           <   :   ;   >  9   <   =     >      >  =   >   =  	   @      =  	   A        	   B   @   A     	   C      E   B   >  ?   C   =  	   E   ?   =  	   F   )     	   G   E   F     	   H      E   G   >  D   H   =  	   J      =  	   K   ?        L   J   K   >  I   L   =  	   N      =  	   O   D        P   N   O   >  M   P   =  	   R   ?   =  	   S   D        T   R   S   >  Q   T   =     W   M        X   V   W   >  U   X   =     Z   U   =     [   I        \   Z   [   =     ]   Q        ^   \   ]   >  Y   ^   =     `   U   =     a   /        b   `   a   =     c   Q        d   b   c   >  _   d   =     g   Y   =     h   _        i      %   g   h        j      %   f   i   >  e   j   =     m   9        n   l   m   =     o   M        p         o   l        q   n   p        r   f   q   >  k   r   =     t   M   =     u   M        v   t   u        w   v   f   =     x   9   =     y   M        z   x   y   =     {   M        |   z   {        }   w   |   >  s   }   =        k   =        s                                  >  ~      =        Q           f                          >        =           =                         >        =           =                         >        =           =        e                 =        ~                 =        I   =        /                                             >        =  	         =  	           	            =        /     	            =         =   =     ¡      =     ¢   =        £   f   ¢        ¤   ¡   £        ¥       ¤     	   ¦      ¥   >     ¦   =  	   §      P  	   ¨   4   4   4   P  	   ©   f   f   f     	   ª      +   §   ¨   ©   þ  ª   ø  8   þ  ¬   8  6  	              7        7  
      7  
      7  
      7  
      7        7  
      ø  !   ;  
   ¯      ;  
   ´      ;     º      ;     ¾      ;     Â      ;     Æ      ;     Ì      ;     Ó      ;     Ö      ;     Ú      ;     é      =  	   °      =  	   ±        	   ²   °   ±     	   ³      E   ²   >  ¯   ³   =     µ      O  	   ¶   µ   µ             =  	   ·        	   ¸   ¶   ·     	   ¹      E   ¸   >  ´   ¹   =  	   »   ´   =  	   ¼   ¯        ½   »   ¼   >  º   ½   =  	   ¿      =  	   À   ´        Á   ¿   À   >  ¾   Á   =  	   Ã      =  	   Ä   ¯        Å   Ã   Ä   >  Â   Å   =     Ç   º   =     È   ¾   =     É   Â        Ê   È   É        Ë   Ç   Ê   >  Æ   Ë   =     Í   ¾   =     Î   Â        Ï      (   Í   Î   =     Ð   Æ        Ñ      0   4   Ð        Ò      .   f   Ï   Ñ   >  Ì   Ò   =  	   Ô           Õ      B   Ô   >  Ó   Õ   =     ×      =     Ø           Ù   ×   Ø   >  Ö   Ù   =     Û   Ö   =     Ü   Ó   =     Ý   Ö        ß   Ý   Þ        à   Ü   ß   =     â   Ö        ä   â   ã        å   á   ä        æ   à   å        ç   Û   æ        è   f   ç   >  Ú   è   =     ë   Ö        ì   ê   ë   =     í   Ö        ï   í   î        ð   ì   ï   >  é   ð   =  	   ñ      =  	   ò        	   ó   ñ   ò   =     ô   ¾        õ      (   4   ô     	   ö   ó   õ   =     ÷   Ú   =     ø   é   =     ù   Æ        ú   ø   ù   =     û   Ì        ü   ú   û        ý   ÷   ü     	   þ   ö   ý   P  	      ÿ   ÿ   ÿ     	     þ      þ    8  6     '       "   7     #   7     $   7     %   7  
   &   ø  (   ;          ;  
   	     ;  
        ;          A       $     =         >      =  	   
  &   =       #   O  	                     	     
      	        E     >  	    =       $   O  	                     	        E     >      =  	     	  =  	                         f     >      =         =         =       %              =                   1         þ    8  