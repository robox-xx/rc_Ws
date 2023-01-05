// Auto-generated. Do not edit!

// (in-package rc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class IbusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sw_a = null;
      this.sw_b = null;
      this.sw_c = null;
      this.sw_d = null;
      this.vr_a = null;
      this.vr_b = null;
      this.ch_l_x = null;
      this.ch_l_y = null;
      this.ch_r_x = null;
      this.ch_r_y = null;
      this.key_l = null;
      this.key_r = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('sw_a')) {
        this.sw_a = initObj.sw_a
      }
      else {
        this.sw_a = 0;
      }
      if (initObj.hasOwnProperty('sw_b')) {
        this.sw_b = initObj.sw_b
      }
      else {
        this.sw_b = 0;
      }
      if (initObj.hasOwnProperty('sw_c')) {
        this.sw_c = initObj.sw_c
      }
      else {
        this.sw_c = 0;
      }
      if (initObj.hasOwnProperty('sw_d')) {
        this.sw_d = initObj.sw_d
      }
      else {
        this.sw_d = 0;
      }
      if (initObj.hasOwnProperty('vr_a')) {
        this.vr_a = initObj.vr_a
      }
      else {
        this.vr_a = 0.0;
      }
      if (initObj.hasOwnProperty('vr_b')) {
        this.vr_b = initObj.vr_b
      }
      else {
        this.vr_b = 0.0;
      }
      if (initObj.hasOwnProperty('ch_l_x')) {
        this.ch_l_x = initObj.ch_l_x
      }
      else {
        this.ch_l_x = 0.0;
      }
      if (initObj.hasOwnProperty('ch_l_y')) {
        this.ch_l_y = initObj.ch_l_y
      }
      else {
        this.ch_l_y = 0.0;
      }
      if (initObj.hasOwnProperty('ch_r_x')) {
        this.ch_r_x = initObj.ch_r_x
      }
      else {
        this.ch_r_x = 0.0;
      }
      if (initObj.hasOwnProperty('ch_r_y')) {
        this.ch_r_y = initObj.ch_r_y
      }
      else {
        this.ch_r_y = 0.0;
      }
      if (initObj.hasOwnProperty('key_l')) {
        this.key_l = initObj.key_l
      }
      else {
        this.key_l = false;
      }
      if (initObj.hasOwnProperty('key_r')) {
        this.key_r = initObj.key_r
      }
      else {
        this.key_r = false;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IbusData
    // Serialize message field [sw_a]
    bufferOffset = _serializer.uint8(obj.sw_a, buffer, bufferOffset);
    // Serialize message field [sw_b]
    bufferOffset = _serializer.uint8(obj.sw_b, buffer, bufferOffset);
    // Serialize message field [sw_c]
    bufferOffset = _serializer.uint8(obj.sw_c, buffer, bufferOffset);
    // Serialize message field [sw_d]
    bufferOffset = _serializer.uint8(obj.sw_d, buffer, bufferOffset);
    // Serialize message field [vr_a]
    bufferOffset = _serializer.float64(obj.vr_a, buffer, bufferOffset);
    // Serialize message field [vr_b]
    bufferOffset = _serializer.float64(obj.vr_b, buffer, bufferOffset);
    // Serialize message field [ch_l_x]
    bufferOffset = _serializer.float64(obj.ch_l_x, buffer, bufferOffset);
    // Serialize message field [ch_l_y]
    bufferOffset = _serializer.float64(obj.ch_l_y, buffer, bufferOffset);
    // Serialize message field [ch_r_x]
    bufferOffset = _serializer.float64(obj.ch_r_x, buffer, bufferOffset);
    // Serialize message field [ch_r_y]
    bufferOffset = _serializer.float64(obj.ch_r_y, buffer, bufferOffset);
    // Serialize message field [key_l]
    bufferOffset = _serializer.bool(obj.key_l, buffer, bufferOffset);
    // Serialize message field [key_r]
    bufferOffset = _serializer.bool(obj.key_r, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IbusData
    let len;
    let data = new IbusData(null);
    // Deserialize message field [sw_a]
    data.sw_a = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sw_b]
    data.sw_b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sw_c]
    data.sw_c = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sw_d]
    data.sw_d = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vr_a]
    data.vr_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vr_b]
    data.vr_b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_l_x]
    data.ch_l_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_l_y]
    data.ch_l_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_r_x]
    data.ch_r_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_r_y]
    data.ch_r_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [key_l]
    data.key_l = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_r]
    data.key_r = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rc_msgs/IbusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '056b88ab8815d7db8205e833088ee03e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UP = 1
    uint8 DOWN = 2
    uint8 MID = 3
    
    uint8 sw_a
    uint8 sw_b
    uint8 sw_c
    uint8 sw_d
    
    float64 vr_a
    float64 vr_b
    
    float64 ch_l_x
    float64 ch_l_y
    float64 ch_r_x
    float64 ch_r_y
    
    bool key_l
    bool key_r
    
    time stamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IbusData(null);
    if (msg.sw_a !== undefined) {
      resolved.sw_a = msg.sw_a;
    }
    else {
      resolved.sw_a = 0
    }

    if (msg.sw_b !== undefined) {
      resolved.sw_b = msg.sw_b;
    }
    else {
      resolved.sw_b = 0
    }

    if (msg.sw_c !== undefined) {
      resolved.sw_c = msg.sw_c;
    }
    else {
      resolved.sw_c = 0
    }

    if (msg.sw_d !== undefined) {
      resolved.sw_d = msg.sw_d;
    }
    else {
      resolved.sw_d = 0
    }

    if (msg.vr_a !== undefined) {
      resolved.vr_a = msg.vr_a;
    }
    else {
      resolved.vr_a = 0.0
    }

    if (msg.vr_b !== undefined) {
      resolved.vr_b = msg.vr_b;
    }
    else {
      resolved.vr_b = 0.0
    }

    if (msg.ch_l_x !== undefined) {
      resolved.ch_l_x = msg.ch_l_x;
    }
    else {
      resolved.ch_l_x = 0.0
    }

    if (msg.ch_l_y !== undefined) {
      resolved.ch_l_y = msg.ch_l_y;
    }
    else {
      resolved.ch_l_y = 0.0
    }

    if (msg.ch_r_x !== undefined) {
      resolved.ch_r_x = msg.ch_r_x;
    }
    else {
      resolved.ch_r_x = 0.0
    }

    if (msg.ch_r_y !== undefined) {
      resolved.ch_r_y = msg.ch_r_y;
    }
    else {
      resolved.ch_r_y = 0.0
    }

    if (msg.key_l !== undefined) {
      resolved.key_l = msg.key_l;
    }
    else {
      resolved.key_l = false
    }

    if (msg.key_r !== undefined) {
      resolved.key_r = msg.key_r;
    }
    else {
      resolved.key_r = false
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
IbusData.Constants = {
  UP: 1,
  DOWN: 2,
  MID: 3,
}

module.exports = IbusData;
