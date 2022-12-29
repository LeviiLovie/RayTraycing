#include <SFML/Graphics.hpp>
#include <GL/gl.h>
#include "engine.h"
#include "shapes.h"
using namespace sf;

Color rayColor(255, 0, 0);
Color circleColor(0, 0, 0);
Color cameraColor(100, 100, 100);

Vector3f circleData(750.0f, 250.0f, 100.0f);
Vector3f cameraData(50.0f, 350.0f, 25.0f);

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
    Ray ray(Vector2f(cameraData.x + cameraData.z, cameraData.y + cameraData.z), Vector2f(100, 100), rayColor);
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