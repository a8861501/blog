
"use strict";

let BoundingBoxes = require('./BoundingBoxes.js');
let BoundingBox = require('./BoundingBox.js');
let ObjectCount = require('./ObjectCount.js');
let CheckForObjectsGoal = require('./CheckForObjectsGoal.js');
let CheckForObjectsAction = require('./CheckForObjectsAction.js');
let CheckForObjectsActionFeedback = require('./CheckForObjectsActionFeedback.js');
let CheckForObjectsFeedback = require('./CheckForObjectsFeedback.js');
let CheckForObjectsActionGoal = require('./CheckForObjectsActionGoal.js');
let CheckForObjectsResult = require('./CheckForObjectsResult.js');
let CheckForObjectsActionResult = require('./CheckForObjectsActionResult.js');

module.exports = {
  BoundingBoxes: BoundingBoxes,
  BoundingBox: BoundingBox,
  ObjectCount: ObjectCount,
  CheckForObjectsGoal: CheckForObjectsGoal,
  CheckForObjectsAction: CheckForObjectsAction,
  CheckForObjectsActionFeedback: CheckForObjectsActionFeedback,
  CheckForObjectsFeedback: CheckForObjectsFeedback,
  CheckForObjectsActionGoal: CheckForObjectsActionGoal,
  CheckForObjectsResult: CheckForObjectsResult,
  CheckForObjectsActionResult: CheckForObjectsActionResult,
};
