// Auto-generated. Do not edit!

// (in-package rc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ActionCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_name = null;
      this.updateX_enable = null;
      this.updateY_enable = null;
      this.updateYaw_enable = null;
      this.calibration_enable = null;
      this.reset_enable = null;
      this.updateX_data = null;
      this.updateY_data = null;
      this.updateYaw_data = null;
    }
    else {
      if (initObj.hasOwnProperty('action_name')) {
        this.action_name = initObj.action_name
      }
      else {
        this.action_name = '';
      }
      if (initObj.hasOwnProperty('updateX_enable')) {
        this.updateX_enable = initObj.updateX_enable
      }
      else {
        this.updateX_enable = false;
      }
      if (initObj.hasOwnProperty('updateY_enable')) {
        this.updateY_enable = initObj.updateY_enable
      }
      else {
        this.updateY_enable = false;
      }
      if (initObj.hasOwnProperty('updateYaw_enable')) {
        this.updateYaw_enable = initObj.updateYaw_enable
      }
      else {
        this.updateYaw_enable = false;
      }
      if (initObj.hasOwnProperty('calibration_enable')) {
        this.calibration_enable = initObj.calibration_enable
      }
      else {
        this.calibration_enable = false;
      }
      if (initObj.hasOwnProperty('reset_enable')) {
        this.reset_enable = initObj.reset_enable
      }
      else {
        this.reset_enable = false;
      }
      if (initObj.hasOwnProperty('updateX_data')) {
        this.updateX_data = initObj.updateX_data
      }
      else {
        this.updateX_data = 0.0;
      }
      if (initObj.hasOwnProperty('updateY_data')) {
        this.updateY_data = initObj.updateY_data
      }
      else {
        this.updateY_data = 0.0;
      }
      if (initObj.hasOwnProperty('updateYaw_data')) {
        this.updateYaw_data = initObj.updateYaw_data
      }
      else {
        this.updateYaw_data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionCmdRequest
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    // Serialize message field [updateX_enable]
    bufferOffset = _serializer.bool(obj.updateX_enable, buffer, bufferOffset);
    // Serialize message field [updateY_enable]
    bufferOffset = _serializer.bool(obj.updateY_enable, buffer, bufferOffset);
    // Serialize message field [updateYaw_enable]
    bufferOffset = _serializer.bool(obj.updateYaw_enable, buffer, bufferOffset);
    // Serialize message field [calibration_enable]
    bufferOffset = _serializer.bool(obj.calibration_enable, buffer, bufferOffset);
    // Serialize message field [reset_enable]
    bufferOffset = _serializer.bool(obj.reset_enable, buffer, bufferOffset);
    // Serialize message field [updateX_data]
    bufferOffset = _serializer.float64(obj.updateX_data, buffer, bufferOffset);
    // Serialize message field [updateY_data]
    bufferOffset = _serializer.float64(obj.updateY_data, buffer, bufferOffset);
    // Serialize message field [updateYaw_data]
    bufferOffset = _serializer.float64(obj.updateYaw_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionCmdRequest
    let len;
    let data = new ActionCmdRequest(null);
    // Deserialize message field [action_name]
    data.action_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [updateX_enable]
    data.updateX_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [updateY_enable]
    data.updateY_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [updateYaw_enable]
    data.updateYaw_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_enable]
    data.calibration_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_enable]
    data.reset_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [updateX_data]
    data.updateX_data = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [updateY_data]
    data.updateY_data = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [updateYaw_data]
    data.updateYaw_data = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action_name);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rc_msgs/ActionCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4bd7dd5ffa8183aba2438b8b00b6371';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action_name
    bool updateX_enable
    bool updateY_enable
    bool updateYaw_enable
    bool calibration_enable
    bool reset_enable
    float64 updateX_data
    float64 updateY_data
    float64 updateYaw_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionCmdRequest(null);
    if (msg.action_name !== undefined) {
      resolved.action_name = msg.action_name;
    }
    else {
      resolved.action_name = ''
    }

    if (msg.updateX_enable !== undefined) {
      resolved.updateX_enable = msg.updateX_enable;
    }
    else {
      resolved.updateX_enable = false
    }

    if (msg.updateY_enable !== undefined) {
      resolved.updateY_enable = msg.updateY_enable;
    }
    else {
      resolved.updateY_enable = false
    }

    if (msg.updateYaw_enable !== undefined) {
      resolved.updateYaw_enable = msg.updateYaw_enable;
    }
    else {
      resolved.updateYaw_enable = false
    }

    if (msg.calibration_enable !== undefined) {
      resolved.calibration_enable = msg.calibration_enable;
    }
    else {
      resolved.calibration_enable = false
    }

    if (msg.reset_enable !== undefined) {
      resolved.reset_enable = msg.reset_enable;
    }
    else {
      resolved.reset_enable = false
    }

    if (msg.updateX_data !== undefined) {
      resolved.updateX_data = msg.updateX_data;
    }
    else {
      resolved.updateX_data = 0.0
    }

    if (msg.updateY_data !== undefined) {
      resolved.updateY_data = msg.updateY_data;
    }
    else {
      resolved.updateY_data = 0.0
    }

    if (msg.updateYaw_data !== undefined) {
      resolved.updateYaw_data = msg.updateYaw_data;
    }
    else {
      resolved.updateYaw_data = 0.0
    }

    return resolved;
    }
};

class ActionCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_success = null;
    }
    else {
      if (initObj.hasOwnProperty('is_success')) {
        this.is_success = initObj.is_success
      }
      else {
        this.is_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionCmdResponse
    // Serialize message field [is_success]
    bufferOffset = _serializer.bool(obj.is_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionCmdResponse
    let len;
    let data = new ActionCmdResponse(null);
    // Deserialize message field [is_success]
    data.is_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rc_msgs/ActionCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3e942e5cfe76a6a46f20a0780b2cf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionCmdResponse(null);
    if (msg.is_success !== undefined) {
      resolved.is_success = msg.is_success;
    }
    else {
      resolved.is_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ActionCmdRequest,
  Response: ActionCmdResponse,
  md5sum() { return '903779543030b66caa508cdbd86af033'; },
  datatype() { return 'rc_msgs/ActionCmd'; }
};
