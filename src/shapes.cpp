#include <SFML/Graphics.hpp>
#include "shapes.h"

Ray :: Ray() {}

Ray :: Ray(Vector2f start, Vector2f end, Color color) {
    ray = VertexArray(Lines, 2);
    ray[0].position = start;
    ray[1].position = end;
    ray[0].color = color;
    ray[1].color = color;
}

Camera :: Camera(Vector2f position, float radius, Color color) {
    camera = CircleShape(radius);
    camera.setFillColor(color);
    camera.setPosition(position);
}

Circle :: Circle(Vector2f position, float radius, Color color) {
    circle = CircleShape(radius);
    circle.setFillColor(color);
    circle.setPosition(position);
}