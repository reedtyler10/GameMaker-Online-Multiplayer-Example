# GameMaker-Online-Multiplayer-Example
Project to learn and design a networking engine for a real-time online multiplayer video game made with Game Maker Studio 2.

Utilizes a server-client model with an authoritative server and utilizes techniques to compensate lag including concepts such as:
- Client-side prediction
- Interpolation
- Game State Correction

Game will be a .io style game where players pick up projectiles to throw at other players to try and kill them. Projectiles can bounce against walls and will continue to do so indefinitely. Players can react to almost colliding with a projectile by deflecting it, which will also increase the projectile's speed.
