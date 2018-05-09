#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
    #include "Woods.inc"

    #include "stones.inc"

    #include "glass.inc"

    #include "metals.inc"


camera{location< 15, 5, 0>
       look_at <0.0,3,0.0>
        angle 60
        rotate y *45  
        translate y*3
        }
        
light_source {<20,40,-25>color White} 
light_source {<40,40,25>color White}
light_source {<-20,50,-25>color White}
  
 sky_sphere{

            pigment{

              gradient z

              color_map{

                [ 0.0 White*0.9 ]

                [ 1.0 color rgb<0.3,0.4,1.2>]

              }

            }

          }
  

plane{y, -3
         pigment{

         checker White*1.2, color rgb<0.5,0.9,0.9>*0.5

         scale 0.2

       }

} 

//kumade no tume 
#macro KumadeNoTume()
object{  
    union{  
                merge{ 
        sphere_sweep {
         linear_spline,    
            2,
            <5.5,6.5> 0.1
            <2,5>0.1          
                translate <-4,-6,0> 
                rotate z*(67 + 180) 
            translate <0.1, 1.7, 0>
        }
                 cone{
         <0,0,0>,
         0.1,
         <0,0.3,0>,
         0
        rotate <0,0,70>
       translate <-1.76,5.77,0>

     }  
        }
        sphere_sweep {
            cubic_spline,
            6,
            <2,5> 0.09
            <1.5,4.5> 0.1
            <1,4> 0.1
            <0.8,3> 0.1
            <1,2> 0.1
            <1.5, 1> 0.1
           translate<0.19,0.5,0>
               translate <-4,-6,0>   
               rotate z*(67 + 180)
               rotate z*3 
               translate y*-2.5
               rotate z*-17
               translate <0.115, 3.8, 0>
        }
        rotate y*0      
    }
    texture {
    pigment{Gray05}
    finish{specular 0.7 metallic 4.0}
    }   

 
} 
#end
  
//kumade    
union {
//tume center 
object {
    KumadeNoTume()
    translate y*6.3    
}
//tume rigth 1
object {
    KumadeNoTume()
    rotate x*30
    translate <0,6.3,0.4>    
}
//tume left 1
object {
    KumadeNoTume()
    rotate x*-30
    translate <0,6.3,-0.4>    
}
//tume rigth 2
object {
    KumadeNoTume()
    rotate x*15
    translate <0,6.3,0.2>    
}
//tume left 2
object {
    KumadeNoTume()
    rotate x*-15
    translate <0,6.3,-0.2>    
}

//kumade no motite 
union {
    //kumade no tume to motite no setugoubu     
    superellipsoid {
        <0.2,0.2>
     texture {
     pigment{Gray05}
     finish{specular 0.7 metallic 4.0}
     }   
     scale<0.1, 0.3, 0.6>
     translate y*6.2   
    }

    difference {
    //ki no bubun
        superellipsoid {
         <1, 0.3>  
        texture {T_Wood13}
        rotate<0,90,90>
         scale <0.73, 3, 0.73>
         translate<0, 3, 0>
        } 
//kirikomi
    box {
         <1,1,0.2>,
         <-1,-1,-0.2>
         texture {T_Wood13}
         rotate y *90
         scale <0.5,1,1>
         translate y*5.5
         }       
    }
//kirikomi no naka no kinzoku
box {
         <1,1,0.2>,
         <-1,-1,-0.2>
        texture {
           pigment{Gray05}
              finish{specular 0.7 metallic 4.0}
         }          
         rotate y *90
         scale <0.5,0.8,0.55>
         translate y*5
         }               
    
//kinzoku no wakka 
    difference{
        superellipsoid {
             <1, 0.2>  
            rotate<0,90,90> 
              scale<0.6, 0.2, 0.6>
             translate<0, 6, 0>
        
        }
        //ana akeru
        superellipsoid {
         <1, 0.2>  
         rotate<0,90,90> 
         scale<0.5, 0.5, 0.5>
         translate<0, 6, 0>
          
    }
    texture {
         pigment{Gray05}
         finish{specular 0.7 metallic 4.0}
         }            
    }
    //ana no naka no ki
    superellipsoid {
    <1, 0.2>  
    texture {T_Wood13} 
    rotate<0,90,90> 
    scale<0.5, 0.21, 0.5>
    translate<0, 6, 0>        
    }
    //kinzoku no nezi 1
    sphere {
             0,1
             texture {finish {Metal} pigment{Gray15} }
             scale<0.15, 0.15, 0.1> 
             translate<0,5.4,0.7>
             rotate y*90
    }
    //kinzoku no nezi 2
    sphere {
             0,1
             texture {finish {Metal} pigment{Gray15} }
             scale<0.15, 0.15, 0.1> 
             translate<0,5,0.7>
             rotate y*90
    }
    scale <0.9,1,0.9>     
}
}  

 