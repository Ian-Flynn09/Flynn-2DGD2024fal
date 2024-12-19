/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68A758F2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Destroy the enemy when health is 0 or less$(13_10)if (hp <= 0) {$(13_10)    instance_destroy(obj_enemy1);$(13_10)    // Optional: Add particle effects or sound$(13_10)}$(13_10)"
/// @description Execute Code
// Destroy the enemy when health is 0 or less
if (hp <= 0) {
    instance_destroy(obj_enemy1);
    // Optional: Add particle effects or sound
}