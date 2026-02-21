// -- Movement --
movement_speed = 1;
x_speed = 0;
y_speed = 0;

// -- Animation --
image_speed = 0;
record_data = [];  

enum DIRECTION {
    DOWN,  // Will be 0
    UP,    // Will be 1
    RIGHT, // Will be 2
    LEFT   // Will be 3
}
facing = DIRECTION.DOWN;

animation_speed = 0.1;