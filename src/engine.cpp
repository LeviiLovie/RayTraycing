#include <SFML/Graphics.hpp>
#include <GL/gl.h>
#include "engine.h"
using namespace sf;

Color circleColor(0, 0, 0);
Color cameraColor(100, 100, 100);

Vector3f circleData(750.0f, 250.0f, 100.0f);
Vector3f cameraData(50.0f, 350.0f, 25.0f);

class Ray {
    public:
        VertexArray ray;
        Ray(Vector2f start, Vector2f end) {
            ray = VertexArray(Lines, 2);
            ray[0].position = start;
            ray[1].position = end;
            ray[0].color = Color::Red;
            ray[1].color = Color::Red;
        }
};

class Camera {
    public:
        CircleShape camera;
        Camera(Vector2f position, float radius, Color color) {
            camera = CircleShape(radius);
            camera.setFillColor(color);
            camera.setPosition(position);
        }
};

class Circle {
    public:
        CircleShape circle;
        Circle(Vector2f position, float radius, Color color) {
            circle = CircleShape(radius);
            circle.setFillColor(color);
            circle.setPosition(position);
        }
};

void engine() {
    // Create the main window and create a render texture
    RenderWindow window(VideoMode(1280, 700 + 20), "RayTracing");
    window.setVerticalSyncEnabled(true);
    window.setActive(true);
    View view(FloatRect(0.0f, 0.0f, 0.0f, 0.0f));
    RenderTexture renderTexture; renderTexture.create(1280, 700 + 20);

    // Set up timer
    Clock clock;
    Time elapsedTime;
    const Time frameTime = milliseconds(1000 / 1);

    // Set up shapes and camera
    Ray ray(Vector2f(cameraData.x + cameraData.z, cameraData.y + cameraData.z), Vector2f(100, 100));
    Camera camera(Vector2f(cameraData.x, cameraData.y), cameraData.z, cameraColor);
    Circle circle(Vector2f(circleData.x, circleData.y), circleData.z, circleColor);

    // Start the app loop
    while (window.isOpen()) {
        Event event;
        while (window.pollEvent(event)) {
            if (event.type == Event::Closed) window.close();
        }
        renderTexture.clear(Color::White);

        // Drawing the shapes
        renderTexture.draw(circle.circle);
        renderTexture.draw(camera.camera);
        renderTexture.draw(ray.ray);

        // Display the rendered texture
        renderTexture.display();
        window.draw(Sprite(renderTexture.getTexture()));
        window.display();

        // Limit the framerate
        elapsedTime = clock.restart();
        if (elapsedTime < frameTime) {
            sleep(frameTime - elapsedTime);
        }
    }
}