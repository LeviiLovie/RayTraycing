#ifndef shapes_h
#define shapes_h
#include <SFML/Graphics.hpp>
using namespace sf;

class Ray {
    public:
        Ray();
        Ray(Vector2f start, Vector2f end, Color color);
        VertexArray ray;
};

class Camera {
    public:
        CircleShape camera;
        Camera(Vector2f position, float radius, Color color);
};

class Circle {
    public:
        CircleShape circle;
        Circle(Vector2f position, float radius, Color color);
};
#endif