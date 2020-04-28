// Auto-generated. Do not edit!

// (in-package request.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class jokeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joke_type = null;
    }
    else {
      if (initObj.hasOwnProperty('joke_type')) {
        this.joke_type = initObj.joke_type
      }
      else {
        this.joke_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jokeRequest
    // Serialize message field [joke_type]
    bufferOffset = _serializer.string(obj.joke_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jokeRequest
    let len;
    let data = new jokeRequest(null);
    // Deserialize message field [joke_type]
    data.joke_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joke_type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'request/jokeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c026122424ce2b00a3d6d2a9e5f3a84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joke_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jokeRequest(null);
    if (msg.joke_type !== undefined) {
      resolved.joke_type = msg.joke_type;
    }
    else {
      resolved.joke_type = ''
    }

    return resolved;
    }
};

class jokeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joke_return = null;
    }
    else {
      if (initObj.hasOwnProperty('joke_return')) {
        this.joke_return = initObj.joke_return
      }
      else {
        this.joke_return = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jokeResponse
    // Serialize message field [joke_return]
    bufferOffset = _serializer.string(obj.joke_return, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jokeResponse
    let len;
    let data = new jokeResponse(null);
    // Deserialize message field [joke_return]
    data.joke_return = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joke_return.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'request/jokeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06b28b8d1902c0673a2a9a54929c47d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joke_return
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jokeResponse(null);
    if (msg.joke_return !== undefined) {
      resolved.joke_return = msg.joke_return;
    }
    else {
      resolved.joke_return = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: jokeRequest,
  Response: jokeResponse,
  md5sum() { return '5fc16477632f4b449d909f518ab669aa'; },
  datatype() { return 'request/joke'; }
};
