// In oPlayer's Create Event

// -- Movement --
movement_speed = 1;
x_speed = 0;
y_speed = 0;

// -- Animation --
image_speed = 0; // IMPORTANT: We are controlling the animation manually

// Let's define which direction we're facing.
// We'll use numbers: 0=Down, 1=Up, 2=Right, 3=Left
// Let's start by facing down.
enum DIRECTION {
    DOWN,  // Will be 0
    UP,    // Will be 1
    RIGHT, // Will be 2
    LEFT   // Will be 3
}
facing = DIRECTION.DOWN;

// Set a speed for our manual animation. 0.2 is a good starting point.
animation_speed = 0.2;