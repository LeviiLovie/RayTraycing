#include "subEngine.h"

#include <SFML/Graphics.hpp>
#include <cstdlib>

void clearRAM() {
    system("sync");
}

// class Shape {
//     private:
//         Vector3f position;
//         Color color;
//         float radius;
    
//     public:
//         Shape(Vector3f position, Color color, float radius) {
//             this->position = position;
//             this->color = color;
//             this->radius = radius;
//         }

//         Vector3f getPosition() {
//             return position;
//         }
//         void setPosition(Vector3f position) {
//             this->position = position;
//         }

//         Color getColor() {
//             return color;
//         }
//         void setColor(Color color) {
//             this->color = color;
//         }

//         float getRadius() {
//             return radius;
//         }
//         void setRadius(float radius) {
//             this->radius = radius;
//         }
// };