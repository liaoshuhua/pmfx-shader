#                     GLSL.std.450                     main    G  �                         �       main         point_light_attenuation(vf4;vf3;         light_pos_radius         world_pos        op_union(f1;f1;      d1       d2       op_subtract(f1;f1;       d1       d2       sd_box(vf3;vf3;      p        b     $   sd_cross(vf3;vf2;     "   p     #   s     (   map(vf3;      '   p     ,   calc_normal(vf3;      +   pos   2   intersect(vf3;vf3;vf3;    /   ro    0   rd    1   pos   4   d     :   r     ?   denom     E   attenuation   X   d     q   da    y   param     {   param     }   db    �   param     �   param     �   dc    �   param     �   param     �   param     �   param     �   param     �   param     �   scale     �   rep   �   q     �   d     �   param     �   param     �   s     �   m     �   a     �   r     �   c     �   param     �   param     �   param     �   param     �   eps   �   nor   �   param     �   param       param       param       param       param     #  t     ,  p     2  d     3  param     C  vs_output     C      position      C     texcoord      E  _input    G  texcoord_vs_output    J  ndc   W  near      ]  far   c  wnear     f  per_pass_view     f      vp_matrix     f     view_matrix   f     vp_matrix_inverse     f     view_matrix_inverse   f     camera_view_pos   f     camera_view_dir   f     viewport_correction   h        s  wfar      }  col     ray_origin    �  ray_dir   �  d     �  world_pos     �  param     �  param     �  param     �  grad_a    �  grad_b    �  grad_t    �  sky   �  ps_output_colour_depth    �      colour    �     depth     �  _output   �  sd_col    �  sky_t     �  n     �  param     �  lpr   �  l     �  ndotl     �  a     �  param     �  param     �  lc    �  proj      �  colour_ps_output        gl_FragDepth    G  G        H  f         H  f      #       H  f            H  f        H  f     #   @   H  f           H  f        H  f     #   �   H  f           H  f        H  f     #   �   H  f           H  f     #      H  f     #     H  f     #      G  f     G  h  "       G  h  !       G  �         G               !                                          	            
      	   !           
               !              !        
   
                           !  !      
       !  &      
   !  *   	   
   !  .      
   
   
     ;           +  ;   <      +     C     �?+  ;   ]       +  ;   `      +  ;   c      +     h       +     �      A+     �     �A+     �      ?,  	   �   C   C   C     �             �      �   +  �   �       +  �   �        �   +     �      @,  	   �   �   �   �   +     �     @@+     �    @F,     �   C   �   +  �   �      +     �   o�:,  	   �   �   h   h   +     *    C+     @    ��  C           D     C     F        ;  F  G     ,     N  �   �   ,     P  C   C     e         	 f  e  e  e  e              g     f  ;  g  h     +  �   i        j     e  ,     ~  h   h   h   C   +     �  fff?,  	   �  �  �   h   ,  	   �  �   h   C     �           �     �     �        +     �    �B+     �  333?,  	   �  h   �  �  +     �    �B   �        ;  �  �                 ;          6               �     ;  D  E     ;      J     ;     W     ;     ]     ;     c     ;     s     ;     }     ;  
        ;  
   �     ;     �     ;  
   �     ;  
   �     ;  
   �     ;  
   �     ;  
   �     ;  
   �     ;     �     ;     �     ;  �  �     ;     �     ;     �     ;  
   �     ;  
   �     ;     �     ;  
   �     ;     �     ;     �     ;     �     ;  
   �     ;  
   �     ;     �     =     H  G  A     I  E  �   >  I  H  A     K  E  �   =     L  K  O     M  L  L         �     O  M  N  �     Q  O  P  >  J  Q  A     R  J  ]   =     S  R  A     T  J  `   =     U  T  P     V  S  U  >  J  V  A     X  J  ]   =     Y  X  A     Z  J  `   =     [  Z  P     \  Y  [  h   C   >  W  \  A     ^  J  ]   =     _  ^  A     `  J  `   =     a  `  P     b  _  a  C   C   >  ]  b  =     d  W  A  j  k  h  i  =  e  l  k  �     m  d  l  >  c  m  A     n  c  <   =     o  n  =     p  c  P     q  o  o  o  o  �     r  p  q  >  c  r  =     t  ]  A  j  u  h  i  =  e  v  u  �     w  t  v  >  s  w  A     x  s  <   =     y  x  =     z  s  P     {  y  y  y  y  �     |  z  {  >  s  |  >  }  ~  =     �  c  O  	   �  �  �            >    �  =     �  s  O  	   �  �  �            =     �  c  O  	   �  �  �            �  	   �  �  �    	   �     E   �  >  �  �  =  	   �    >  �  �  =  	   �  �  >  �  �  9     �  2   �  �  �  =  	   �  �  >  �  �  >  �  �  >  �  �  >  �  �  A     �  �  `   =     �  �  �     �  �  �   �     �  �  �   >  �  �  =  	   �  �  =  	   �  �  =     �  �  P  	   �  �  �  �    	   �     .   �  �  �  Q     �  �      Q     �  �     Q     �  �     P     �  �  �  �  C   >  �  �  A     �  �  �   >  �  C   =     �  �  >  �  �  >  �  h   =     �  �  �  �   �  �  h   �  �      �  �  �  �  �  �  =  	   �    =  	   �  �  =     �  �  �  	   �  �  �  �  	   �  �  �  >  �  �  9  	   �  ,   �  >  �  �  A  �  �  h  �   =     �  �  O  	   �  �  �            Q     �  �      Q     �  �     Q     �  �     P     �  �  �  �  �  >  �  �  =     �  �  O  	   �  �  �            =  	   �  �  �  	   �  �  �    	   �     E   �  >  �  �  =  	   �  �  =  	   �  �  �     �  �  �  >  �  �  =     �  �  >  �  �  =  	   �  �  >  �  �  9     �     �  �  >  �  �  =     �  �  =     �  �  �     �  �  �  �  	   �  �  �  >  �  �  =  	   �  �  Q     �  �      Q     �  �     Q     �  �     P     �  �  �  �  C   >  �  �  =  	   �  �  Q     �  �      Q     �  �     Q     �  �     P     �  �  �  �  C   A  j  �  h  �   =  e  �  �  �     �  �  �  >  �  �  A     �  �  <   =     �  �  =     �  �  P     �  �  �  �  �  �     �  �  �  >  �  �  A     �  �  c   =     �  �  A     �  �  �   >  �  �  =  	   �  �  =  	   �    �  	   �  �  �       �     B   �       �     1   *  �  �  >  �  �  �  �  �  �  =     �  �  =     �  �  =     �  �  P     �  �  �  �  �       �     .   �  �  �  A     �  �  �   >  �  �  A     �  �  �   =     �  �  >  �  �  A       �  �   =         >      �  8  6               7        7  
      �     ;     4      ;     :      ;     ?      ;     E      =  	   5      =     6      O  	   7   6   6             �  	   8   5   7        9      B   8   >  4   9   A     =      <   =     >   =   >  :   >   =     @   4   =     A   :   �     B   @   A   �     D   B   C   >  ?   D   =     F   ?   =     G   ?   �     H   F   G   �     I   C   H   >  E   I   =     J   E   �  J   8  6               7        7        �     =     M      =     N           O      %   M   N   �  O   8  6               7        7        �     =     R           S   R   =     T           U      (   S   T   �  U   8  6               7  
      7  
      �     ;  
   X      =  	   Y        	   Z         Y   =  	   [      �  	   \   Z   [   >  X   \   A     ^   X   ]   =     _   ^   A     a   X   `   =     b   a   A     d   X   c   =     e   d        f      (   b   e        g      (   _   f        i      %   g   h   =  	   j   X   P  	   k   h   h   h     	   l      (   j   k        m      B   l   �     n   i   m   �  n   8  6     $       !   7  
   "   7      #   �  %   ;     q      ;  
   y      ;  
   {      ;     }      ;  
   �      ;  
   �      ;     �      ;  
   �      ;  
   �      ;     �      ;     �      ;     �      ;     �      A     r   #   `   =     s   r   A     t   #   ]   =     u   t   A     v   #   ]   =     w   v   P  	   x   s   u   w   =  	   z   "   >  y   z   >  {   x   9     |      y   {   >  q   |   A     ~   #   ]   =        ~   A     �   #   `   =     �   �   A     �   #   ]   =     �   �   P  	   �      �   �   =  	   �   "   O  	   �   �   �             >  �   �   >  �   �   9     �      �   �   >  }   �   A     �   #   ]   =     �   �   A     �   #   ]   =     �   �   A     �   #   `   =     �   �   P  	   �   �   �   �   =  	   �   "   O  	   �   �   �             >  �   �   >  �   �   9     �      �   �   >  �   �   =     �   }   >  �   �   =     �   �   >  �   �   9     �      �   �   =     �   q   >  �   �   >  �   �   9     �      �   �   �  �   8  6     (       &   7  
   '   �  )   ;     �      ;     �      ;  
   �      ;     �      ;  
   �      ;  
   �      ;     �      ;  �   �      ;  
   �      ;  
   �      ;     �      ;  
   �      ;      �      ;     �      ;     �      >  �   �   >  �   �   =  	   �   '   =     �   �   P  	   �   �   �   �   �  	   �   �   �   =     �   �   �     �   �   �   P  	   �   �   �   �   �  	   �   �   �   >  �   �   =  	   �   �   =     �   �   P  	   �   �   �   �   �  	   �   �   �   >  �   �   =  	   �   �   >  �   �   >  �   �   9     �      �   �   >  �   �   >  �   C   >  �   �   �  �   �  �   �  �   �       �  �   �  �   =  �   �   �   �  �   �   �   �   �  �   �   �   �  �   =  	   �   �   =     �   �   �  	   �   �   �   �  	   �   �   �   P  	   �   C   C   C   �  	   �   �   �   >  �   �   =     �   �   �     �   �   �   >  �   �   =  	   �   �     	   �         �   �  	   �   �   �   P  	   �   C   C   C   �  	   �   �   �   >  �   �   =  	   �   �   >  �   �   >  �   �   9     �   $   �   �   =     �   �   �     �   �   �   >  �   �   =     �   �        �   �   >  �   �   =     �   �   >  �   �   9     �      �   �   >  �   �   �  �   �  �   =  �   �   �   �  �   �   �   �   >  �   �   �  �   �  �   =     �   �   =     �   �   �     �   �   �   �  �   8  6  	   ,       *   7  
   +   �  -   ;  
   �      ;  
   �      ;  
   �      ;  
   �      ;  
        ;  
        ;  
        ;  
        >  �   �   =  	   �   +   =  	   �   �   O  	   �   �   �             �  	   �   �   �   >  �   �   9     �   (   �   =  	   �   +   =  	   �   �   O  	   �   �   �             �  	   �   �   �   >  �   �   9        (   �   �       �      A       �   ]   >      =  	     +   =  	     �   O  	                   �  	         >      9       (     =  	   	  +   =  	   
  �   O  	     
  
            �  	     	    >      9       (     �           A       �   `   >      =  	     +   =  	     �   O  	                   �  	         >      9       (     =  	     +   =  	     �   O  	                   �  	         >      9       (     �           A       �   c   >      =  	     �     	         E     �     8  6     2       .   7  
   /   7  
   0   7  
   1   �  3   ;     #     ;  
   ,     ;     2     ;  
   3     >  #  h   �  $  �  $  �  &  '      �  (  �  (  =     )  #  �  �   +  )  *  �  +  %  &  �  %  =  	   -  /   =  	   .  0   =     /  #  �  	   0  .  /  �  	   1  -  0  >  ,  1  =  	   4  ,  >  3  4  9     5  (   3  >  2  5  =     6  2  �  �   7  6  �   �  9      �  7  8  9  �  8  =  	   :  ,  >  1   :  =     ;  #  �  ;  �  9  =     =  2  =     >  #  �     ?  >  =  >  #  ?  �  '  �  '  �  $  �  &  �  @  8  