#include <SFML/Graphics.hpp>
using namespace sf;

#include "engine.h"

void engine() {
    RenderWindow window(VideoMode(1280, 700 + 20), "RayTracing");
    View view(FloatRect(0.0f, 0.0f, 0.0f, 0.0f));

    const Time frameTime = milliseconds(1000 / 10);
    Clock clock;
    Time elapsedTime;

    Color circleColor(0, 0, 0);
    Color cameraColor(100, 100, 100);

    Vector3f circleData(750.0f, 250.0f, 100.0f);
    Vector3f cameraData(50.0f, 350.0f, 25.0f);

    while (window.isOpen()) {
        Event event;
        while (window.pollEvent(event)) {
            if (event.type == Event::Closed) window.close();
        }

        window.clear(Color::White);

        CircleShape circle(circleData.z);
        circle.setFillColor(circleColor);
        circle.setPosition(circleData.x, circleData.y);

        CircleShape camera(cameraData.z);
        camera.setFillColor(cameraColor);
        camera.setPosition(cameraData.x, cameraData.y);

        window.draw(circle);
        window.draw(camera);

        window.display();

        elapsedTime = clock.restart();
        if (elapsedTime < frameTime) {
            sleep(frameTime - elapsedTime);
        }
    }
}