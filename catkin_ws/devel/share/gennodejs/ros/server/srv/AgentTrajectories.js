// Auto-generated. Do not edit!

// (in-package server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgentTrajectory = require('../msg/AgentTrajectory.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AgentTrajectoriesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajetories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajetories')) {
        this.trajetories = initObj.trajetories
      }
      else {
        this.trajetories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentTrajectoriesRequest
    // Serialize message field [trajetories]
    // Serialize the length for message field [trajetories]
    bufferOffset = _serializer.uint32(obj.trajetories.length, buffer, bufferOffset);
    obj.trajetories.forEach((val) => {
      bufferOffset = AgentTrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentTrajectoriesRequest
    let len;
    let data = new AgentTrajectoriesRequest(null);
    // Deserialize message field [trajetories]
    // Deserialize array length for message field [trajetories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajetories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajetories[i] = AgentTrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajetories.forEach((val) => {
      length += AgentTrajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'server/AgentTrajectoriesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8d935e08cdc676097eb929ef5e3e415';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AgentTrajectory[] trajetories
    
    ================================================================================
    MSG: server/AgentTrajectory
    geometry_msgs/Vector3[] trajetory
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentTrajectoriesRequest(null);
    if (msg.trajetories !== undefined) {
      resolved.trajetories = new Array(msg.trajetories.length);
      for (let i = 0; i < resolved.trajetories.length; ++i) {
        resolved.trajetories[i] = AgentTrajectory.Resolve(msg.trajetories[i]);
      }
    }
    else {
      resolved.trajetories = []
    }

    return resolved;
    }
};

class AgentTrajectoriesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radii = null;
    }
    else {
      if (initObj.hasOwnProperty('radii')) {
        this.radii = initObj.radii
      }
      else {
        this.radii = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentTrajectoriesResponse
    // Serialize message field [radii]
    bufferOffset = _arraySerializer.float64(obj.radii, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentTrajectoriesResponse
    let len;
    let data = new AgentTrajectoriesResponse(null);
    // Deserialize message field [radii]
    data.radii = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.radii.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'server/AgentTrajectoriesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86da10d5fb2d7c814d1c23728386d2d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] radii
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentTrajectoriesResponse(null);
    if (msg.radii !== undefined) {
      resolved.radii = msg.radii;
    }
    else {
      resolved.radii = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AgentTrajectoriesRequest,
  Response: AgentTrajectoriesResponse,
  md5sum() { return '85c557dfbba925aa1e8e38fb4786f127'; },
  datatype() { return 'server/AgentTrajectories'; }
};
