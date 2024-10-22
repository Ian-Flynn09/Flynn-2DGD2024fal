/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16847F0F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Make sure that only the active player is able to fire the gun.$(13_10)// Also, no players should be able to fire if we are between turns $(13_10)// (transitioning from player to player)$(13_10)$(13_10)if (obj_controller.whose_turn == my_name) and (obj_controller.transitioning == false){$(13_10)    $(13_10)    // Check to see if the the spacebar is released.$(13_10)    if (keyboard_check_released(vk_space)){$(13_10)   	 $(13_10)$(13_10)   	 // The xdistance and ydistance is the difference between the origin $(13_10) // position of the cannon and the end of the barrel at any given rotation.  $(13_10)$(13_10) // This value is basic trigonometry for a right triangle if you know the   $(13_10) // hypotenuse (the barrel sprite width -- in this case 64) and the angle.$(13_10)   	 ydistance = 64 * (sin(degtorad(barrel_rotation)));$(13_10)   	 xdistance = 64 * (cos(degtorad(barrel_rotation)));$(13_10)   $(13_10)   $(13_10)         // instance_create_depth will create an object at a specific depth.  (100 is generally the$(13_10)   	 // background.  We are creating obj_bullet at the x and y of the firing turret and shifting the$(13_10)   	 // bullet based on the angle of the barrel.  $(13_10)   	 $(13_10)   	 // Because we are using "with" the things within the { } will apply to the thing being created.$(13_10)   	 // In this case, we are giving the bullet the barrel rotation value of the turret which is$(13_10)   	 // shooting it off.  We have to use other. because we are actually doing this from within the$(13_10)   	 // bullet object, not the turret.$(13_10)$(13_10)   	 with instance_create_depth(x+xdistance,y-ydistance,50,obj_bullet)$(13_10)   		 {$(13_10)   			 direction = other.barrel_rotation;$(13_10)   		 }$(13_10)   		 $(13_10)   	 // We are adding an alarm in obj_controller and setting letting the game know we are between turns$(13_10)   	 // so that players can't fire off multiple bullets and can't accidently fire off their opponent's$(13_10)   	 // shot.  $(13_10)$(13_10)   	 // We use room_speed for the alarm because we can multiply our Frames per second by a time in $(13_10)   	 // seconds for a more intuitive control.  At 30 FPS, we could have also put in a value of 30.$(13_10)   	 obj_controller.alarm[0]= room_speed * 1 //seconds;$(13_10)   	 obj_controller.transitioning = true;$(13_10)    }$(13_10)}$(13_10)$(13_10)// We will finish off our step event by turning the gravity back on if the turret$(13_10)// is not moving and there is nothing under it (a box just got destroyed for$(13_10)// instance) OR if there is fire directly under the turret.  We want the turret$(13_10)// to fall into the fire.$(13_10)$(13_10)if ((speed == 0 and place_empty(x,y+1)) or place_meeting(x,y+1,obj_fire))$(13_10){$(13_10)    gravity = 1;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
// Make sure that only the active player is able to fire the gun.
// Also, no players should be able to fire if we are between turns 
// (transitioning from player to player)

if (obj_controller.whose_turn == my_name) and (obj_controller.transitioning == false){
    
    // Check to see if the the spacebar is released.
    if (keyboard_check_released(vk_space)){
   	 

   	 // The xdistance and ydistance is the difference between the origin 
 // position of the cannon and the end of the barrel at any given rotation.  

 // This value is basic trigonometry for a right triangle if you know the   
 // hypotenuse (the barrel sprite width -- in this case 64) and the angle.
   	 ydistance = 64 * (sin(degtorad(barrel_rotation)));
   	 xdistance = 64 * (cos(degtorad(barrel_rotation)));
   
   
         // instance_create_depth will create an object at a specific depth.  (100 is generally the
   	 // background.  We are creating obj_bullet at the x and y of the firing turret and shifting the
   	 // bullet based on the angle of the barrel.  
   	 
   	 // Because we are using "with" the things within the { } will apply to the thing being created.
   	 // In this case, we are giving the bullet the barrel rotation value of the turret which is
   	 // shooting it off.  We have to use other. because we are actually doing this from within the
   	 // bullet object, not the turret.

   	 with instance_create_depth(x+xdistance,y-ydistance,50,obj_bullet)
   		 {
   			 direction = other.barrel_rotation;
   		 }
   		 
   	 // We are adding an alarm in obj_controller and setting letting the game know we are between turns
   	 // so that players can't fire off multiple bullets and can't accidently fire off their opponent's
   	 // shot.  

   	 // We use room_speed for the alarm because we can multiply our Frames per second by a time in 
   	 // seconds for a more intuitive control.  At 30 FPS, we could have also put in a value of 30.
   	 obj_controller.alarm[0]= room_speed * 1 //seconds;
   	 obj_controller.transitioning = true;
    }
}

// We will finish off our step event by turning the gravity back on if the turret
// is not moving and there is nothing under it (a box just got destroyed for
// instance) OR if there is fire directly under the turret.  We want the turret
// to fall into the fire.

if ((speed == 0 and place_empty(x,y+1)) or place_meeting(x,y+1,obj_fire))
{
    gravity = 1;
}