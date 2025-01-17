# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mh_hazard/Transcription.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class Transcription(genpy.Message):
  _md5sum = "61ce3dbd8bc5a4089981ece3499c2e36"
  _type = "mh_hazard/Transcription"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string transcription
time audio_recieved
float32 duration"""
  __slots__ = ['transcription','audio_recieved','duration']
  _slot_types = ['string','time','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       transcription,audio_recieved,duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Transcription, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.transcription is None:
        self.transcription = ''
      if self.audio_recieved is None:
        self.audio_recieved = genpy.Time()
      if self.duration is None:
        self.duration = 0.
    else:
      self.transcription = ''
      self.audio_recieved = genpy.Time()
      self.duration = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.transcription
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2If().pack(_x.audio_recieved.secs, _x.audio_recieved.nsecs, _x.duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.audio_recieved is None:
        self.audio_recieved = genpy.Time()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transcription = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.transcription = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.audio_recieved.secs, _x.audio_recieved.nsecs, _x.duration,) = _get_struct_2If().unpack(str[start:end])
      self.audio_recieved.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.transcription
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2If().pack(_x.audio_recieved.secs, _x.audio_recieved.nsecs, _x.duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.audio_recieved is None:
        self.audio_recieved = genpy.Time()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.transcription = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.transcription = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.audio_recieved.secs, _x.audio_recieved.nsecs, _x.duration,) = _get_struct_2If().unpack(str[start:end])
      self.audio_recieved.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2If = None
def _get_struct_2If():
    global _struct_2If
    if _struct_2If is None:
        _struct_2If = struct.Struct("<2If")
    return _struct_2If
