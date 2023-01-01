#include <SFML/Graphics.hpp>
#include <GL/gl.h>
#include <cmath>
#include <iostream>
#include <cstdlib>
#include "engine.h"
#include "shapes.h"

using namespace sf;

Color rayColor(255, 0, 0);
Color circleColor(0, 0, 0);
Color cameraColor(100, 100, 100);

Vector3f circleData(750.0f, 400.0f, 100.0f);
Vector3f cameraData(50.0f, 500.0f, 25.0f);

void engine() {
    // Create the main window and create a render texture
    RenderWindow window(VideoMode(2000, 1300), "RayTracing");
    window.setVerticalSyncEnabled(true);
    window.setActive(true);
    View view(FloatRect(0.0f, 0.0f, 0.0f, 0.0f));
    RenderTexture renderTexture; renderTexture.create(2000, 1300);

    // Set up timer
    Clock clock;
    Time elapsedTime;
    int FPS = 100;
    const Time frameTime = milliseconds(1000 / FPS);
    Clock FPSClock;

    // Set up shapes and camera
    // Ray ray(Vector2f(cameraData.x + cameraData.z, cameraData.y + cameraData.z), Vector2f(100, 100), rayColor);
    Camera camera(Vector2f(cameraData.x, cameraData.y), cameraData.z, cameraColor);
    Circle circle(Vector2f(circleData.x, circleData.y), circleData.z, circleColor);
    
    RectangleShape resultBG;
    resultBG.setSize(sf::Vector2f(2000, 250));
    resultBG.setFillColor(sf::Color::Black);
    resultBG.setPosition(0, 1050);

    // float minAngle = -1;
    // float maxAngle = 1;
    // int countOfRays = 3;
    // std::cout << "Min angle: " << minAngle << ", Max angle: " << maxAngle << ", Abs(min) + Abs(max): " << (maxAngle - minAngle) << ", Count of rays: " << countOfRays << ", Result: " << (std::abs(maxAngle) + std::abs(minAngle)) / countOfRays << std::endl;
    // long rayStep = std::abs(minAngle) - std::abs(maxAngle) / countOfRays;
    // // rayStep = 0.1;

    int rayDistance = 1250;
    int countOfRays = 250;
    float rayStep = 0.004;
    Ray rays[countOfRays];

    float x, y;
    for (int i = 0; i < countOfRays; i++) {
        x = cos((i - (countOfRays / 2)) * rayStep) * rayDistance;
        y = sin((i - (countOfRays / 2)) * rayStep) * rayDistance;
        rays[i] = Ray(
            Vector2f(
                camera.camera.getPosition().x + camera.camera.getRadius(),
                camera.camera.getPosition().y + camera.camera.getRadius()
            ),
            Vector2f(
                (camera.camera.getPosition().x + camera.camera.getRadius()) + x,
                (camera.camera.getPosition().y + camera.camera.getRadius()) + y
            ),
            rayColor
        );
    }

    // Start the app loop
    float FPSElapsedTime = 0;
    while (window.isOpen()) {
        FPSClock.restart();
        Event event;
        while (window.pollEvent(event)) {
            if (event.type == Event::Closed) window.close();
        }
        renderTexture.clear(Color::White);

        // Drawing the shapes
        renderTexture.draw(circle.circle);
        renderTexture.draw(camera.camera);

        for (int i = 0; i < countOfRays; i++) {
            renderTexture.draw(rays[i].ray);
        }

        // Display the rendered texture
        renderTexture.display();
        window.draw(Sprite(renderTexture.getTexture()));
        window.draw(resultBG);
        window.display();

        // Limit the framerate
        elapsedTime = clock.restart();
        if (elapsedTime < frameTime) {
            sleep(frameTime - elapsedTime);
        }
        // FPSElapsedTime = 1000 / FPSClock.getElapsedTime().asMilliseconds();
        // std::cout << "FPS: " << FPSElapsedTime << std::endl;
    }
}