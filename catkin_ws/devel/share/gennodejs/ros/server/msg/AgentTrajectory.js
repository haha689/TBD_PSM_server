// Auto-generated. Do not edit!

// (in-package server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgentTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajetory = null;
    }
    else {
      if (initObj.hasOwnProperty('trajetory')) {
        this.trajetory = initObj.trajetory
      }
      else {
        this.trajetory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentTrajectory
    // Serialize message field [trajetory]
    // Serialize the length for message field [trajetory]
    bufferOffset = _serializer.uint32(obj.trajetory.length, buffer, bufferOffset);
    obj.trajetory.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentTrajectory
    let len;
    let data = new AgentTrajectory(null);
    // Deserialize message field [trajetory]
    // Deserialize array length for message field [trajetory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajetory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajetory[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.trajetory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'server/AgentTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03de543be07dd3938d8e0d46d2eeada0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AgentTrajectory(null);
    if (msg.trajetory !== undefined) {
      resolved.trajetory = new Array(msg.trajetory.length);
      for (let i = 0; i < resolved.trajetory.length; ++i) {
        resolved.trajetory[i] = geometry_msgs.msg.Vector3.Resolve(msg.trajetory[i]);
      }
    }
    else {
      resolved.trajetory = []
    }

    return resolved;
    }
};

module.exports = AgentTrajectory;
