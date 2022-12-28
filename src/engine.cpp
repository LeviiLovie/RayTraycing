#include <engine.h>
#include <subEngine.h>

#include <SFML/Graphics.hpp>
#include <GL/gl.h>

#include <iostream>

using namespace sf;

void engine() {
    clearRAM();

    // Create the main window and create a render texture
    RenderWindow window(VideoMode(1280, 700 + 20), "RayTracing");
    window.setVerticalSyncEnabled(true);
    window.setActive(true);
    View view(FloatRect(0.0f, 0.0f, 0.0f, 0.0f));
    RenderTexture renderTexture; renderTexture.create(1280, 700 + 20);

    Color circleColor(0, 0, 0);
    Color cameraColor(100, 100, 100);

    Vector3f circleData(750.0f, 250.0f, 100.0f);
    Vector3f cameraData(50.0f, 350.0f, 25.0f);

    const Time frameTime = milliseconds(1000 / 10);
    Clock clock;
    Time elapsedTime;

    Vector2f start(cameraData.x + cameraData.z, cameraData.y + cameraData.z);
    Vector2f end(100, 100);
    VertexArray ray(Lines, 2);
    ray[0].position = start;
    ray[1].position = end;
    ray[0].color = Color::Red;
    ray[1].color = Color::Red;

    while (window.isOpen()) {
        Event event;
        while (window.pollEvent(event)) {
            if (event.type == Event::Closed) window.close();
        }

        glClear(GL_COLOR_BUFFER_BIT);

        window.clear(Color::White);
        renderTexture.clear(Color::White);

        CircleShape circle(circleData.z);
        circle.setFillColor(circleColor);
        circle.setPosition(circleData.x, circleData.y);

        CircleShape camera(cameraData.z);
        camera.setFillColor(cameraColor);
        camera.setPosition(cameraData.x, cameraData.y);

        renderTexture.draw(circle);
        renderTexture.draw(camera);

        renderTexture.draw(ray);

        renderTexture.display();
        window.draw(Sprite(renderTexture.getTexture()));
        window.display();

        elapsedTime = clock.restart();
        if (elapsedTime < frameTime) {
            sleep(frameTime - elapsedTime);
        }
    }
}

class Shape {
    public:
        Vector3f position;
        Color color;
        float radius;

        Shape(Vector3f position, Color color, float radius) {
            this->position = position;
            this->color = color;
            this->radius = radius;
        }
};