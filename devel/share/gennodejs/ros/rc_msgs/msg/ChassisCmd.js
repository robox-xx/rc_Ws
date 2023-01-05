// Auto-generated. Do not edit!

// (in-package rc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ChassisCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accel = null;
      this.command_source_frame = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('command_source_frame')) {
        this.command_source_frame = initObj.command_source_frame
      }
      else {
        this.command_source_frame = '';
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
    // Serializes a message object of type ChassisCmd
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [command_source_frame]
    bufferOffset = _serializer.string(obj.command_source_frame, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisCmd
    let len;
    let data = new ChassisCmd(null);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_source_frame]
    data.command_source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.command_source_frame);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rc_msgs/ChassisCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a4c3ac2c507077f490fac95897a32c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Accel accel
    string command_source_frame
    time stamp
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new ChassisCmd(null);
    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Accel.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Accel()
    }

    if (msg.command_source_frame !== undefined) {
      resolved.command_source_frame = msg.command_source_frame;
    }
    else {
      resolved.command_source_frame = ''
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

module.exports = ChassisCmd;
