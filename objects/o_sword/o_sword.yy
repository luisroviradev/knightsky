{
  "spriteId": {
    "name": "spr_player_sword",
    "path": "sprites/spr_player_sword/spr_player_sword.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "o_actor",
    "path": "objects/o_actor/o_actor.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"collision_group","path":"objects/o_actor/o_actor.yy",},"objectId":{"name":"o_actor","path":"objects/o_actor/o_actor.yy",},"value":"COLLISION_GROUP.PLAYER","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"collides_with","path":"objects/o_actor/o_actor.yy",},"objectId":{"name":"o_actor","path":"objects/o_actor/o_actor.yy",},"value":"COLLISION_GROUP.ENEMY, COLLISION_GROUP.ENEMY_PROJECTILE","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"has_audio","path":"objects/o_actor/o_actor.yy",},"objectId":{"name":"o_actor","path":"objects/o_actor/o_actor.yy",},"value":"True","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Player",
    "path": "folders/Game Entities/Player.yy",
  },
  "resourceVersion": "1.0",
  "name": "o_sword",
  "tags": [],
  "resourceType": "GMObject",
}