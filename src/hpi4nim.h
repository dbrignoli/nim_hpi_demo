enum HPI_FORMATS {

 HPI_FORMAT_MIXER_NATIVE = 0,

 HPI_FORMAT_PCM8_UNSIGNED = 1,

 HPI_FORMAT_PCM16_SIGNED = 2,

 HPI_FORMAT_MPEG_L1 = 3,
 HPI_FORMAT_MPEG_L2 = 4,
 HPI_FORMAT_MPEG_L3 = 5,

 HPI_FORMAT_DOLBY_AC2 = 6,

 HPI_FORMAT_DOLBY_AC3 = 7,

 HPI_FORMAT_PCM16_BIGENDIAN = 8,

 HPI_FORMAT_AA_TAGIT1_HITS = 9,

 HPI_FORMAT_AA_TAGIT1_INSERTS = 10,




 HPI_FORMAT_PCM32_SIGNED = 11,

 HPI_FORMAT_RAW_BITSTREAM = 12,

 HPI_FORMAT_AA_TAGIT1_HITS_EX1 = 13,




 HPI_FORMAT_PCM32_FLOAT = 14,

 HPI_FORMAT_PCM24_SIGNED = 15,

 HPI_FORMAT_OEM1 = 16,

 HPI_FORMAT_OEM2 = 17,

 HPI_FORMAT_UNDEFINED = 0xffff
};





enum HPI_STREAM_STATES {

 HPI_STATE_STOPPED = 1,

 HPI_STATE_PLAYING = 2,

 HPI_STATE_RECORDING = 3,

 HPI_STATE_DRAINED = 4,

 HPI_STATE_SINEGEN = 5,


 HPI_STATE_WAIT = 6
};




enum HPI_SOURCENODES {




 HPI_SOURCENODE_NONE = 100,





 HPI_SOURCENODE_OSTREAM = 101,

 HPI_SOURCENODE_LINEIN = 102,
 HPI_SOURCENODE_AESEBU_IN = 103,
 HPI_SOURCENODE_TUNER = 104,
 HPI_SOURCENODE_RF = 105,
 HPI_SOURCENODE_CLOCK_SOURCE = 106,
 HPI_SOURCENODE_RAW_BITSTREAM = 107,
 HPI_SOURCENODE_MICROPHONE = 108,


 HPI_SOURCENODE_COBRANET = 109,
 HPI_SOURCENODE_ANALOG = 110,
 HPI_SOURCENODE_ADAPTER = 111,


 HPI_SOURCENODE_RTP_DESTINATION = 112,
 HPI_SOURCENODE_INTERNAL = 113,
 HPI_SOURCENODE_AVB_STREAM = 114,
 HPI_SOURCENODE_BLULINK = 115,
 HPI_SOURCENODE_AVB_AUDIO = 116,

 HPI_SOURCENODE_LAST_INDEX = 116

};





enum HPI_DESTNODES {




 HPI_DESTNODE_NONE = 200,





 HPI_DESTNODE_ISTREAM = 201,
 HPI_DESTNODE_LINEOUT = 202,
 HPI_DESTNODE_AESEBU_OUT = 203,
 HPI_DESTNODE_RF = 204,
 HPI_DESTNODE_SPEAKER = 205,


 HPI_DESTNODE_COBRANET = 206,
 HPI_DESTNODE_ANALOG = 207,


 HPI_DESTNODE_RTP_SOURCE = 208,
 HPI_DESTNODE_AVB_STREAM = 209,
 HPI_DESTNODE_INTERNAL = 210,
 HPI_DESTNODE_BLULINK = 211,
 HPI_DESTNODE_AVB_AUDIO = 212,

 HPI_DESTNODE_LAST_INDEX = 212

};





enum HPI_CONTROLS {
 HPI_CONTROL_GENERIC = 0,
 HPI_CONTROL_CONNECTION = 1,
 HPI_CONTROL_VOLUME = 2 ,
 HPI_CONTROL_METER = 3,
 HPI_CONTROL_MUTE = 4,
 HPI_CONTROL_MULTIPLEXER = 5,

 HPI_CONTROL_AESEBU_TRANSMITTER = 6,
 HPI_CONTROL_AESEBUTX = 6,

 HPI_CONTROL_AESEBU_RECEIVER = 7,
 HPI_CONTROL_AESEBURX = 7,

 HPI_CONTROL_LEVEL = 8,
 HPI_CONTROL_TUNER = 9,

 HPI_CONTROL_VOX = 11,



 HPI_CONTROL_CHANNEL_MODE = 15,

 HPI_CONTROL_BITSTREAM = 16,
 HPI_CONTROL_SAMPLECLOCK = 17,
 HPI_CONTROL_MICROPHONE = 18,
 HPI_CONTROL_PARAMETRIC_EQ = 19,
 HPI_CONTROL_EQUALIZER = 19,

 HPI_CONTROL_COMPANDER = 20,
 HPI_CONTROL_COBRANET = 21,
 HPI_CONTROL_TONEDETECTOR = 22,
 HPI_CONTROL_SILENCEDETECTOR = 23,
 HPI_CONTROL_PAD = 24,
 HPI_CONTROL_SRC = 25,
 HPI_CONTROL_UNIVERSAL = 26,


 HPI_CONTROL_LAST_INDEX = 26


};






enum HPI_ADAPTER_PROPERTIES {







 HPI_ADAPTER_PROPERTY_ERRATA_1 = 1,




 HPI_ADAPTER_PROPERTY_GROUPING = 2,






 HPI_ADAPTER_PROPERTY_ENABLE_SSX2 = 3,
 HPI_ADAPTER_PROPERTY_SSX2_SETTING = 4,
 HPI_ADAPTER_PROPERTY_IRQ_RATE = 5,


 HPI_ADAPTER_PROPERTY_READONLYBASE = 256,






 HPI_ADAPTER_PROPERTY_LATENCY = 256,







 HPI_ADAPTER_PROPERTY_GRANULARITY = 257,




 HPI_ADAPTER_PROPERTY_CURCHANNELS = 258,






 HPI_ADAPTER_PROPERTY_SOFTWARE_VERSION =259,






 HPI_ADAPTER_PROPERTY_MAC_ADDRESS_MSB = 260,





 HPI_ADAPTER_PROPERTY_MAC_ADDRESS_LSB = 261,
 HPI_ADAPTER_PROPERTY_EXTENDED_ADAPTER_TYPE = 262,


 HPI_ADAPTER_PROPERTY_LOGTABLEN = 263,
 HPI_ADAPTER_PROPERTY_LOGTABBEG = 264,






 HPI_ADAPTER_PROPERTY_IP_ADDRESS = 265,






 HPI_ADAPTER_PROPERTY_BUFFER_UPDATE_COUNT = 266,
 HPI_ADAPTER_PROPERTY_INTERVAL = 267,




 HPI_ADAPTER_PROPERTY_CAPS1 = 268,




 HPI_ADAPTER_PROPERTY_CAPS2 = 269,



 HPI_ADAPTER_PROPERTY_SYNC_HEADER_CONNECTIONS = 270,






 HPI_ADAPTER_PROPERTY_SUPPORTS_SSX2 = 271,





 HPI_ADAPTER_PROPERTY_SUPPORTS_IRQ = 272,




 HPI_ADAPTER_PROPERTY_SUPPORTS_FW_UPDATE = 273,






 HPI_ADAPTER_PROPERTY_FIRMWARE_ID = 274,






 HPI_ADAPTER_PROPERTY_OUTSTREAM_FORMATS_SUPPORTED = 275,






 HPI_ADAPTER_PROPERTY_INSTREAM_FORMATS_SUPPORTED = 276,




 HPI_ADAPTER_PROPERTY_STREAM_HOST_BUFFER_REQUIRED = 277
};






enum HPI_ADAPTER_MODE_CMDS {

 HPI_ADAPTER_MODE_SET = 0,


 HPI_ADAPTER_MODE_QUERY = 1
};
enum HPI_ADAPTER_MODES {
 HPI_ADAPTER_MODE_4OSTREAM = 1,






 HPI_ADAPTER_MODE_6OSTREAM = 2,






 HPI_ADAPTER_MODE_8OSTREAM = 3,






 HPI_ADAPTER_MODE_16OSTREAM = 4,




 HPI_ADAPTER_MODE_1OSTREAM = 5,




 HPI_ADAPTER_MODE_1 = 6,




 HPI_ADAPTER_MODE_2 = 7,




 HPI_ADAPTER_MODE_3 = 8,






 HPI_ADAPTER_MODE_MULTICHANNEL = 9,






 HPI_ADAPTER_MODE_12OSTREAM = 10,




 HPI_ADAPTER_MODE_9OSTREAM = 11,





 HPI_ADAPTER_MODE_MONO = 12,




 HPI_ADAPTER_MODE_LOW_LATENCY = 13,




 HPI_ADAPTER_MODE_24OSTREAM = 14,




 HPI_ADAPTER_MODE_32OSTREAM = 15
};
enum HPI_MPEG_ANC_MODES {

 HPI_MPEG_ANC_HASENERGY = 0,




 HPI_MPEG_ANC_RAW = 1
};




enum HPI_ISTREAM_MPEG_ANC_ALIGNS {

 HPI_MPEG_ANC_ALIGN_LEFT = 0,

 HPI_MPEG_ANC_ALIGN_RIGHT = 1
};
enum HPI_MPEG_MODES {



 HPI_MPEG_MODE_DEFAULT = 0,

 HPI_MPEG_MODE_STEREO = 1,

 HPI_MPEG_MODE_JOINTSTEREO = 2,

 HPI_MPEG_MODE_DUALCHANNEL = 3
};
enum HPI_MIXER_STORE_COMMAND {

 HPI_MIXER_STORE_SAVE = 1,

 HPI_MIXER_STORE_RESTORE = 2,

 HPI_MIXER_STORE_DELETE = 3,

 HPI_MIXER_STORE_ENABLE = 4,

 HPI_MIXER_STORE_DISABLE = 5,

 HPI_MIXER_STORE_SAVE_SINGLE = 6
};
enum HPI_SWITCH_STATES {
 HPI_SWITCH_OFF = 0,
 HPI_SWITCH_ON =1
};
enum HPI_VOLUME_AUTOFADES {

 HPI_VOLUME_AUTOFADE_LOG = 2,

 HPI_VOLUME_AUTOFADE_LINEAR = 3
};







enum HPI_AESEBU_FORMATS {

 HPI_AESEBU_FORMAT_AESEBU = 1,

 HPI_AESEBU_FORMAT_SPDIF = 2
};






enum HPI_AESEBU_ERRORS {

 HPI_AESEBU_ERROR_NOT_LOCKED = 0x01,

 HPI_AESEBU_ERROR_POOR_QUALITY = 0x02,

 HPI_AESEBU_ERROR_PARITY_ERROR = 0x04,

 HPI_AESEBU_ERROR_BIPHASE_VIOLATION = 0x08,

 HPI_AESEBU_ERROR_VALIDITY = 0x10,

 HPI_AESEBU_ERROR_CRC = 0x20
};
enum eHPI_RDS_type {
 HPI_RDS_DATATYPE_RDS = 0,
 HPI_RDS_DATATYPE_RBDS = 1
};






enum HPI_TUNER_BAND {
 HPI_TUNER_BAND_AM = 1,
 HPI_TUNER_BAND_FM = 2,
 HPI_TUNER_BAND_TV_NTSC_M = 3,
 HPI_TUNER_BAND_TV = 3,
 HPI_TUNER_BAND_FM_STEREO = 4,
 HPI_TUNER_BAND_AUX = 5,
 HPI_TUNER_BAND_TV_PAL_BG = 6,
 HPI_TUNER_BAND_TV_PAL_I = 7,
 HPI_TUNER_BAND_TV_PAL_DK = 8,
 HPI_TUNER_BAND_TV_SECAM_L = 9,
 HPI_TUNER_BAND_DAB = 10,
 HPI_TUNER_BAND_LAST = 10
};







enum HPI_TUNER_MODES {
 HPI_TUNER_MODE_RSS = 1,
 HPI_TUNER_MODE_RDS = 2
};






enum HPI_TUNER_MODE_VALUES {

 HPI_TUNER_MODE_RSS_DISABLE = 0,
 HPI_TUNER_MODE_RSS_ENABLE = 1,


 HPI_TUNER_MODE_RDS_DISABLE = 0,
 HPI_TUNER_MODE_RDS_RDS = 1,
 HPI_TUNER_MODE_RDS_RBDS = 2
};







enum HPI_TUNER_STATUS_BITS {
 HPI_TUNER_VIDEO_COLOR_PRESENT = 0x0001,
 HPI_TUNER_VIDEO_IS_60HZ = 0x0020,
 HPI_TUNER_VIDEO_HORZ_SYNC_MISSING = 0x0040,
 HPI_TUNER_VIDEO_STATUS_VALID = 0x0100,
 HPI_TUNER_DIGITAL = 0x0200,
 HPI_TUNER_MULTIPROGRAM = 0x0400,
 HPI_TUNER_PLL_LOCKED = 0x1000,
 HPI_TUNER_FM_STEREO = 0x2000,
 HPI_TUNER_FW_LOAD = 0x0800
};





enum HPI_CHANNEL_MODES {

 HPI_CHANNEL_MODE_NORMAL = 1,

 HPI_CHANNEL_MODE_SWAP = 2,

 HPI_CHANNEL_MODE_LEFT_TO_STEREO = 3,

 HPI_CHANNEL_MODE_RIGHT_TO_STEREO = 4,


 HPI_CHANNEL_MODE_STEREO_TO_LEFT = 5,


 HPI_CHANNEL_MODE_STEREO_TO_RIGHT = 6,
 HPI_CHANNEL_MODE_LAST = 6
};




enum HPI_SAMPLECLOCK_SOURCES {


 HPI_SAMPLECLOCK_SOURCE_LOCAL = 1,





 HPI_SAMPLECLOCK_SOURCE_AESEBU_SYNC = 2,

 HPI_SAMPLECLOCK_SOURCE_WORD = 3,

 HPI_SAMPLECLOCK_SOURCE_WORD_HEADER = 4,

 HPI_SAMPLECLOCK_SOURCE_SMPTE = 5,

 HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT = 6,







 HPI_SAMPLECLOCK_SOURCE_NETWORK = 8,

 HPI_SAMPLECLOCK_SOURCE_PREV_MODULE = 10,

 HPI_SAMPLECLOCK_SOURCE_BLULINK = 11,

 HPI_SAMPLECLOCK_SOURCE_LAST = 11
};




enum HPI_FILTER_TYPE {
 HPI_FILTER_TYPE_BYPASS = 0,

 HPI_FILTER_TYPE_LOWSHELF = 1,
 HPI_FILTER_TYPE_HIGHSHELF = 2,
 HPI_FILTER_TYPE_EQ_BAND = 3,

 HPI_FILTER_TYPE_LOWPASS = 4,
 HPI_FILTER_TYPE_HIGHPASS = 5,
 HPI_FILTER_TYPE_BANDPASS = 6,
 HPI_FILTER_TYPE_BANDSTOP = 7
};




enum ASYNC_EVENT_SOURCES {
 HPI_ASYNC_EVENT_GPIO = 1,
 HPI_ASYNC_EVENT_SILENCE = 2,
 HPI_ASYNC_EVENT_TONE = 3
} ;
enum HPI_ERROR_CODES {

 HPI_ERROR_INVALID_TYPE = 100,

 HPI_ERROR_INVALID_OBJ = 101,

 HPI_ERROR_INVALID_FUNC = 102,

 HPI_ERROR_INVALID_OBJ_INDEX = 103,

 HPI_ERROR_OBJ_NOT_OPEN = 104,

 HPI_ERROR_OBJ_ALREADY_OPEN = 105,

 HPI_ERROR_INVALID_RESOURCE = 106,


 HPI_ERROR_INVALID_RESPONSE = 108,


 HPI_ERROR_PROCESSING_MESSAGE = 109,

 HPI_ERROR_NETWORK_TIMEOUT = 110,

 HPI_ERROR_INVALID_HANDLE = 111,

 HPI_ERROR_UNIMPLEMENTED = 112,


 HPI_ERROR_NETWORK_TOO_MANY_CLIENTS= 113,




 HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL = 114,

 HPI_ERROR_RESPONSE_MISMATCH = 115,

 HPI_ERROR_CONTROL_CACHING = 116,




 HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL = 117,



 HPI_ERROR_BAD_ADAPTER = 201,

 HPI_ERROR_BAD_ADAPTER_NUMBER = 202,

 HPI_ERROR_DUPLICATE_ADAPTER_NUMBER = 203,

 HPI_ERROR_DSP_BOOTLOAD = 204,

 HPI_ERROR_DSP_FILE_NOT_FOUND = 206,

 HPI_ERROR_DSP_HARDWARE = 207,

 HPI_ERROR_MEMORY_ALLOC = 208,

 HPI_ERROR_PLD_LOAD = 209,

 HPI_ERROR_DSP_FILE_FORMAT = 210,


 HPI_ERROR_DSP_FILE_ACCESS_DENIED = 211,

 HPI_ERROR_DSP_FILE_NO_HEADER = 212,


 HPI_ERROR_DSP_SECTION_NOT_FOUND = 214,

 HPI_ERROR_DSP_FILE_OTHER_ERROR = 215,

 HPI_ERROR_DSP_FILE_SHARING_VIOLATION = 216,

 HPI_ERROR_DSP_FILE_NULL_HEADER = 217,

 HPI_ERROR_DSP_0 = 218,

 HPI_ERROR_DSP_1 = 219,




 HPI_ERROR_BAD_CHECKSUM = 221,
 HPI_ERROR_BAD_SEQUENCE = 222,
 HPI_ERROR_FLASH_ERASE = 223,
 HPI_ERROR_FLASH_PROGRAM = 224,
 HPI_ERROR_FLASH_VERIFY = 225,
 HPI_ERROR_FLASH_TYPE = 226,
 HPI_ERROR_FLASH_START = 227,
 HPI_ERROR_FLASH_READ = 228,
 HPI_ERROR_FLASH_READ_NO_FILE = 229,
 HPI_ERROR_FLASH_SIZE = 230,


 HPI_ERROR_RESERVED_1 = 290,



 HPI_ERROR_INVALID_FORMAT = 301,

 HPI_ERROR_INVALID_SAMPLERATE = 302,

 HPI_ERROR_INVALID_CHANNELS = 303,

 HPI_ERROR_INVALID_BITRATE = 304,

 HPI_ERROR_INVALID_DATASIZE = 305,



 HPI_ERROR_INVALID_DATA_POINTER = 308,

 HPI_ERROR_INVALID_PACKET_ORDER = 309,



 HPI_ERROR_INVALID_OPERATION= 310,



 HPI_ERROR_INCOMPATIBLE_SAMPLERATE = 311,

 HPI_ERROR_BAD_ADAPTER_MODE = 312,




 HPI_ERROR_TOO_MANY_CAPABILITY_CHANGE_ATTEMPTS = 313,

 HPI_ERROR_NO_INTERADAPTER_GROUPS = 314,

 HPI_ERROR_NO_INTERDSP_GROUPS = 315,

 HPI_ERROR_WAIT_CANCELLED = 316,

 HPI_ERROR_INVALID_STRING = 317,


 HPI_ERROR_HOST_BUFFER_NOT_ALLOCATED = 317,


 HPI_ERROR_INVALID_NODE = 400,

 HPI_ERROR_INVALID_CONTROL = 401,

 HPI_ERROR_INVALID_CONTROL_VALUE = 402,

 HPI_ERROR_INVALID_CONTROL_ATTRIBUTE = 403,

 HPI_ERROR_CONTROL_DISABLED = 404,

 HPI_ERROR_CONTROL_I2C_MISSING_ACK= 405,
 HPI_ERROR_I2C_MISSING_ACK = 405,
 HPI_ERROR_CONTROL_NOT_READY = 407,


 HPI_ERROR_NVMEM_BUSY = 450,
 HPI_ERROR_NVMEM_FULL = 451,
 HPI_ERROR_NVMEM_FAIL = 452,


 HPI_ERROR_I2C_BAD_ADR = 460,


 HPI_ERROR_ENTITY_TYPE_MISMATCH = 470,

 HPI_ERROR_ENTITY_ITEM_COUNT = 471,

 HPI_ERROR_ENTITY_TYPE_INVALID = 472,

 HPI_ERROR_ENTITY_ROLE_INVALID = 473,

 HPI_ERROR_ENTITY_SIZE_MISMATCH = 474,




 HPI_ERROR_CUSTOM = 600,


 HPI_ERROR_MUTEX_TIMEOUT = 700,

 HPI_ERROR_WAIT_TIMEOUT = 701,

 HPI_ERROR_WAIT_INTERRUPTED = 702,




 HPI_ERROR_BACKEND_BASE = 900,


 HPI_ERROR_DSP_COMMUNICATION = 900





};




union hpi_version {
 struct {
  unsigned int hwassembly:3;
  unsigned int hwrev:4;
  unsigned int swminor:6;
  unsigned int swmajor:3;
 } s;
 uint16_t w;
 uint32_t dw;
};






struct hpi_format {
 uint32_t dwSampleRate;

 uint32_t dwBitRate;
 uint32_t dwAttributes;

 uint16_t wModeLegacy;

 uint16_t wUnused;
 uint16_t wChannels;
 uint16_t wFormat;
};
struct hpi_anc_frame {
 uint32_t dwValidBitsInThisFrame;
 uint8_t bData[(64)];
};



struct hpi_async_event {
 uint16_t wEventType;
 uint16_t wSequence;
 uint32_t dwState;
 uint32_t hObject;
 union {
  struct {
   uint16_t wIndex;
  } gpio;
  struct {
   uint16_t wNodeIndex;
   uint16_t wNodeType;
  } control;
 } u;
};



struct hpi_entity;







enum e_entity_type {
 entity_type_null = 0,



 entity_type_sequence = 1,

 entity_type_reference = 2,

 entity_type_int = 3,

 entity_type_float = 4,

 entity_type_double = 5,



 entity_type_cstring = 6,

 entity_type_octet = 7,

 entity_type_ip4_address = 8,

 entity_type_ip6_address = 9,

 entity_type_mac_address = 10,


 entity_type_boolean = 11,

 LAST_ENTITY_TYPE = 12
};







enum e_entity_role {

 entity_role_null = 0,

 entity_role_value = 1,

 entity_role_classname = 2,



 entity_role_units = 3,


 entity_role_flags = 4,


 entity_role_range = 5,




 entity_role_mapping = 6,


 entity_role_enum = 7,
 entity_role_instance_of = 8,
 entity_role_depends_on = 9,
 entity_role_member_of_group = 10,


 entity_role_value_constraint = 11,

 entity_role_parameter_port = 12,

 entity_role_block = 13,

 entity_role_label = 14,

 entity_role_key = 15,

 entity_role_value_label = 16,
 LAST_ENTITY_ROLE = 17



};





enum e_entity_flag_values {

 entity_flag_writeable = 1,

 entity_flag_readable = 2,

 entity_flag_volatile = 4,

 entity_flag_volatile_info = 8,

 entity_flag_requires_restart = 16
};
struct hpi_dab_service_component {
 uint16_t id;
 uint8_t info;
 uint8_t valid;
};







struct hpi_dab_service_info {
 uint32_t id;
 uint8_t info1;
 uint8_t info2;
 uint8_t info3;
 uint8_t num_components;
 char label[16];

 struct hpi_dab_service_component components[15];
};
struct hpi_dab_component_info {
 uint8_t global_id;
 uint8_t pad1;
 uint8_t language;
 uint8_t charset;
 uint8_t label[16];
 uint16_t label_abbrev_mask;
 uint8_t num_ua;
 uint8_t len_ua;

 uint16_t ua_type;
 uint8_t ua_datalen;
 uint8_t ua_data[250];
 uint8_t align_pad;
};





struct hpi_service_data_packet_info {
 uint8_t flags;
 uint8_t buff_count;
 uint8_t srv_state;






 uint8_t data_type;
 uint32_t serv_id;
 uint32_t comp_id;
 uint16_t ua_type;
 uint16_t byte_count;
 uint16_t seg_num;
 uint16_t num_segs;

};
typedef uint16_t hpi_err_t;

typedef uint32_t hpi_handle_t;


struct hpi_hsubsys;
typedef struct hpi_hsubsys hpi_hsubsys_t;




typedef struct hpi_format hpi_format_t;




struct hpi_control_t {
 uint16_t wControlType;
 uint16_t wSrcNodeType;
 uint16_t wSrcNodeIndex;
 uint16_t wDstNodeType;
 uint16_t wDstNodeIndex;
 hpi_handle_t hControl;
};
hpi_err_t HPI_StreamEstimateBufferSize(
 struct hpi_format *pF,
 uint32_t dwHostPollingRateInMilliSeconds,
 uint32_t *dwRecommendedBufferSize
);




hpi_err_t HPI_Entity_FindNext(
 struct hpi_entity *container_entity,
 enum e_entity_type type,
 enum e_entity_role role,
 int recursive_flag,
 struct hpi_entity **current_match
);

hpi_err_t HPI_Entity_CopyValueFrom(
 struct hpi_entity *entity,
 enum e_entity_type type,
 size_t item_count,
 void *value_dst_p,
 size_t value_size
);

hpi_err_t HPI_Entity_Unpack(
 struct hpi_entity *entity,
 enum e_entity_type *type,
 size_t *items,
 enum e_entity_role *role,
 void **value
);

const char * HPI_Entity_GetTypeName(
 struct hpi_entity *entity
);

const char * HPI_Entity_GetRoleName(
 struct hpi_entity *entity
);

hpi_err_t HPI_Entity_AllocAndPack(
 const enum e_entity_type type,
 const size_t item_count,
 const enum e_entity_role role,
 const void *value,
 const size_t value_size,
 struct hpi_entity **entity
);

void HPI_Entity_Free(
 struct hpi_entity *entity
);


hpi_err_t HPI_Object_UriToHandle(
 const char *uri,
 hpi_handle_t *h);

hpi_err_t HPI_Object_GetInfoEntity(
 hpi_handle_t h,
 struct hpi_entity **info);

hpi_err_t HPI_Object_GetValueEntity(
 hpi_handle_t h,
 struct hpi_entity **value);

hpi_err_t HPI_Object_SetValueEntity(
  hpi_handle_t h,
  const struct hpi_entity *value);

hpi_err_t HPI_Object_GetValue(
 hpi_handle_t h,
 enum e_entity_type type,
 size_t count,
 void *value,
 size_t value_size
);

hpi_err_t HPI_Object_SetValue(
 hpi_handle_t h,
 enum e_entity_type type,
 size_t count,
 const void *value,
 size_t value_size
);

hpi_err_t HPI_Object_GetRole(
 hpi_handle_t hObject,
 enum e_entity_role *r
);

hpi_err_t HPI_Object_GetInfo(
 hpi_handle_t hObject,
 enum e_entity_type type,
 enum e_entity_role role,
 void *value,
 size_t *value_size,
 size_t *value_count
);

hpi_err_t HPI_Object_BlockParameters(
 hpi_handle_t hMixer,
 hpi_handle_t block,
 hpi_handle_t *parameters,
 size_t *param_count
);

hpi_err_t HPI_Object_BlockHandle(
 hpi_handle_t hMixer,
 uint16_t wSrcNodeType,
 uint16_t wSrcNodeTypeIndex,
 uint16_t wDstNodeType,
 uint16_t wDstNodeTypeIndex,
 const char *block_name,
 hpi_handle_t * phBlock
);

hpi_err_t HPI_Object_ParameterHandle(
 hpi_handle_t hMixer,
 hpi_handle_t hBlock,
 const char *parameter_name,
 hpi_handle_t * phParameter
);

void HPI_MemFree(
 void *mem
);







hpi_hsubsys_t * HPI_SubSysCreate(
 void
);

void HPI_SubSysFree(
 const hpi_hsubsys_t *phSubSys
);


hpi_err_t HPI_SubSysGetVersionEx(
 const hpi_hsubsys_t *phSubSys,
 uint32_t *pdwVersionEx
);


hpi_err_t HPI_SubSysGetNumAdapters(
 const hpi_hsubsys_t *phSubSys,
 int *pnNumAdapters
);

hpi_err_t HPI_SubSysGetAdapter(
 const hpi_hsubsys_t *phSubSys,
 int nIterator,
 uint32_t *pdwAdapterIndex,
 uint16_t *pwAdapterType
);

uint16_t HPI_SubSysSsx2Bypass(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wBypass
);

hpi_err_t HPI_SubSysSetHostNetworkInterface(
 const hpi_hsubsys_t *phSubSys,
 const char *szInterface
);
hpi_err_t HPI_AdapterOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex
);

hpi_err_t HPI_AdapterClose(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex
);


hpi_err_t HPI_AdapterGetInfo(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t *pwNumOutStreams,
 uint16_t *pwNumInStreams,
 uint16_t *pwVersion,
 uint32_t *pdwSerialNumber,
 uint16_t *pwAdapterType
);

hpi_err_t HPI_AdapterRestart(
 uint16_t wAdapterIndex
);


hpi_err_t HPI_AdapterGetModuleByIndex(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wModuleIndex,
 uint16_t *pwNumOutputs,
 uint16_t *pwNumInputs,
 uint16_t *pwVersion,
 uint32_t *pdwSerialNumber,
 uint16_t *pwModuleType,
 hpi_handle_t * phModule
);

hpi_err_t HPI_AdapterSetMode(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint32_t dwAdapterMode
);

hpi_err_t HPI_AdapterSetModeEx(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint32_t dwAdapterMode,
 uint16_t wQueryOrSet
);

hpi_err_t HPI_AdapterGetMode(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint32_t *pdwAdapterMode
);
hpi_err_t HPI_AdapterGetAssert2(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t *pAssertCount,
 char *pszAssert,
 uint32_t *pParam1,
 uint32_t *pParam2,
 uint32_t *pDspStringAddr,
 uint16_t *pProcessorId
);

hpi_err_t HPI_AdapterTestAssert(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wAssertId
);

hpi_err_t HPI_AdapterEnableCapability(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wCapability,
 uint32_t dwKey
);

hpi_err_t HPI_AdapterSelfTest(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex
);

hpi_err_t HPI_AdapterDebugRead(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
  uint32_t dwDspAddress,
  char *pBytes,
  int *dwCountBytes
);

hpi_err_t HPI_AdapterSetProperty(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wProperty,
 uint16_t wParamter1,
 uint16_t wParamter2
);

hpi_err_t HPI_AdapterGetProperty(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wProperty,
 uint16_t *pwParamter1,
 uint16_t *pwParamter2
);
hpi_err_t HPI_AdapterEnumerateProperty(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wIndex,
 uint16_t wWhatToEnumerate,
 uint16_t wPropertyIndex,
 uint32_t *pdwSetting
);






hpi_err_t HPI_NvMemoryOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phNvMemory,
 uint16_t *pwSizeInBytes
);

hpi_err_t HPI_NvMemoryReadByte(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hNvMemory,
 uint16_t wIndex,
 uint16_t *pwData
);

hpi_err_t HPI_NvMemoryWriteByte(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hNvMemory,
 uint16_t wIndex,
 uint16_t wData
);




hpi_err_t HPI_GpioOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phGpio,
 uint16_t *pwNumberInputBits,
 uint16_t *pwNumberOutputBits
);

hpi_err_t HPI_GpioReadBit(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hGpio,
 uint16_t wBitIndex,
 uint16_t *pwBitData
);

hpi_err_t HPI_GpioReadAllBits(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hGpio,
 uint16_t awAllBitData[4]
);

hpi_err_t HPI_GpioWriteBit(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hGpio,
 uint16_t wBitIndex,
 uint16_t wBitData
);

hpi_err_t HPI_GpioWriteStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hGpio,
 uint16_t awAllBitData[4]
);




hpi_err_t HPI_AsyncEventOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phAsync
);

hpi_err_t HPI_AsyncEventClose(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hAsync
);

hpi_err_t HPI_AsyncEventWait(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hAsync,
 uint16_t wMaximumEvents,
 struct hpi_async_event *pEvents,
 uint16_t *pwNumberReturned
);

hpi_err_t HPI_AsyncEventGetCount(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hAsync,
 uint16_t *pwCount
);

hpi_err_t HPI_AsyncEventGet(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hAsync,
 uint16_t wMaximumEvents,
 struct hpi_async_event *pEvents,
 uint16_t *pwNumberReturned
);




hpi_err_t HPI_WatchdogOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phWatchdog
);

hpi_err_t HPI_WatchdogSetTime(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hWatchdog,
 uint32_t dwTimeMillisec
);

hpi_err_t HPI_WatchdogPing(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hWatchdog
);




hpi_err_t HPI_OutStreamOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wOutStreamIndex,
 hpi_handle_t * phOutStream
);

hpi_err_t HPI_OutStreamClose(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);
hpi_err_t HPI_OutStreamGetInfoEx(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint16_t *pwState,
 uint32_t *pdwBufferSize,
 uint32_t *pdwDataToPlay,
 uint32_t *pdwSamplesPlayed,
 uint32_t *pdwAuxiliaryDataToPlay
);

hpi_err_t HPI_OutStreamWriteBuf(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 const uint8_t *pbWriteBuf,
 uint32_t dwBytesToWrite,
 const struct hpi_format *pFormat
);
hpi_err_t HPI_OutStreamStart(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamWaitStart(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamStop(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamSinegen(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);

hpi_err_t HPI_OutStreamQueryFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 struct hpi_format *pFormat
);

hpi_err_t HPI_OutStreamSetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 struct hpi_format *pFormat
);


hpi_err_t HPI_OutStreamSetPunchInOut(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t dwPunchInSample,
 uint32_t dwPunchOutSample
);

hpi_err_t HPI_OutStreamSetVelocity(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 short nVelocity
);

hpi_err_t HPI_OutStreamAncillaryReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint16_t wMode
);

hpi_err_t HPI_OutStreamAncillaryGetInfo(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t *pdwFramesAvailable
);

hpi_err_t HPI_OutStreamAncillaryRead(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 struct hpi_anc_frame *pAncFrameBuffer,
 uint32_t dwAncFrameBufferSizeInBytes,
 uint32_t dwNumberOfAncillaryFramesToRead
);

hpi_err_t HPI_OutStreamSetTimeScale(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t dwTimeScaleX10000
);

hpi_err_t HPI_OutStreamHostBufferAllocate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t dwSizeInBytes
);

hpi_err_t HPI_OutStreamHostBufferFree(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamGroupAdd(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 hpi_handle_t hStream
);

hpi_err_t HPI_OutStreamGroupGetMap(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t *pdwOutStreamMap,
 uint32_t *pdwInStreamMap
);

hpi_err_t HPI_OutStreamGroupReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream
);


hpi_err_t HPI_OutStreamWait(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t dwThresholdBytesToPlay
);


hpi_err_t HPI_OutStreamGetTimestamp(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hOutStream,
 uint32_t *pdwSample,
 uint32_t *pdwNanosPerSample,
 int64_t *pqwTimestamp
);




hpi_err_t HPI_InStreamOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wInStreamIndex,
 hpi_handle_t * phInStream
);

hpi_err_t HPI_InStreamClose(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);

hpi_err_t HPI_InStreamQueryFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 const struct hpi_format *pFormat
);

hpi_err_t HPI_InStreamSetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 const struct hpi_format *pFormat
);

hpi_err_t HPI_InStreamReadBuf(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint8_t *pbReadBuf,
 uint32_t dwBytesToRead
);
hpi_err_t HPI_InStreamStart(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);

hpi_err_t HPI_InStreamWaitStart(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);

hpi_err_t HPI_InStreamStop(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);

hpi_err_t HPI_InStreamReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);
hpi_err_t HPI_InStreamGetInfoEx(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint16_t *pwState,
 uint32_t *pdwBufferSize,
 uint32_t *pdwDataRecorded,
 uint32_t *pdwSamplesRecorded,
 uint32_t *pdwAuxiliaryDataRecorded
);


hpi_err_t HPI_InStreamAncillaryReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint16_t wBytesPerFrame,
 uint16_t wMode,
 uint16_t wAlignment,
 uint16_t wIdleBit
);

hpi_err_t HPI_InStreamAncillaryGetInfo(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint32_t *pdwFrameSpace
);

hpi_err_t HPI_InStreamAncillaryWrite(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 const struct hpi_anc_frame *pAncFrameBuffer,
 uint32_t dwAncFrameBufferSizeInBytes,
 uint32_t dwNumberOfAncillaryFramesToWrite
);

hpi_err_t HPI_InStreamHostBufferAllocate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint32_t dwSizeInBytes
);


hpi_err_t HPI_InStreamHostBufferFree(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);

hpi_err_t HPI_InStreamGroupAdd(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 hpi_handle_t hStream
);

hpi_err_t HPI_InStreamGroupGetMap(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint32_t *pdwOutStreamMap,
 uint32_t *pdwInStreamMap
);

hpi_err_t HPI_InStreamGroupReset(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream
);


hpi_err_t HPI_InStreamWait(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint32_t dwThresholdBytesRecorded
);


hpi_err_t HPI_InStreamGetTimestamp(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hInStream,
 uint32_t *pdwSample,
 uint32_t *pdwNanosPerSample,
 int64_t *pqwTimestamp
);




hpi_err_t HPI_MixerOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phMixer
);


hpi_err_t HPI_MixerClose(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hMixer
);


hpi_err_t HPI_MixerGetControl(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hMixer,
 uint16_t wSrcNodeType,
 uint16_t wSrcNodeTypeIndex,
 uint16_t wDstNodeType,
 uint16_t wDstNodeTypeIndex,
 uint16_t wControlType,
 hpi_handle_t * phControl
);

hpi_err_t HPI_MixerGetControlByIndex(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hMixer,
 uint16_t wControlIndex,
 uint16_t *pwSrcNodeType,
 uint16_t *pwSrcNodeIndex,
 uint16_t *pwDstNodeType,
 uint16_t *pwDstNodeIndex,
 uint16_t *pwControlType,
 hpi_handle_t * phControl
);


hpi_err_t HPI_MixerStore(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hMixer,
 enum HPI_MIXER_STORE_COMMAND Command,
 uint16_t wIndex
);
hpi_err_t HPI_MixerStoreStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hMixer,
 uint16_t *pwControlsToStore
);







hpi_err_t HPI_VolumeSetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anGain0_01dB[2]
);

hpi_err_t HPI_VolumeGetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anGain0_01dB_out[2]
);

hpi_err_t HPI_VolumeSetMute(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t mute
);

hpi_err_t HPI_VolumeGetMute(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *mute
);


hpi_err_t HPI_VolumeQueryRange(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *nMinGain_01dB,
 short *nMaxGain_01dB,
 short *nStepGain_01dB
);

hpi_err_t HPI_Volume_QueryChannels(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hControl,
 uint32_t *pChannels
);


hpi_err_t HPI_VolumeAutoFade(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anStopGain0_01dB[2],
 uint32_t wDurationMs
);

hpi_err_t HPI_VolumeAutoFadeProfile(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anStopGain0_01dB[2],
 uint32_t dwDurationMs,
 uint16_t dwProfile
);

hpi_err_t HPI_Volume_QueryAutoFadeProfile(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hControl,
 const uint32_t i,
 uint16_t *wProfile
);





hpi_err_t HPI_LevelQueryRange(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *nMinGain_01dB,
 short *nMaxGain_01dB,
 short *nStepGain_01dB
);

hpi_err_t HPI_LevelSetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anGain0_01dB[2]
);

hpi_err_t HPI_LevelGetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anGain0_01dB_out[2]
);




hpi_err_t HPI_Meter_QueryChannels(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hMeter,
 uint32_t *pChannels
);

hpi_err_t HPI_MeterGetPeak(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anPeak0_01dB_out[2]
);


hpi_err_t HPI_MeterGetRms(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anPeak0_01dB_out[2]
);

hpi_err_t HPI_MeterSetPeakBallistics(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t nAttack,
 uint16_t nDecay
);

hpi_err_t HPI_MeterSetRmsBallistics(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t nAttack,
 uint16_t nDecay
);

hpi_err_t HPI_MeterGetPeakBallistics(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *nAttack,
 uint16_t *nDecay
);

hpi_err_t HPI_MeterGetRmsBallistics(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *nAttack,
 uint16_t *nDecay
);





hpi_err_t HPI_ChannelMode_QueryMode(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hMode,
 const uint32_t dwIndex,
 uint16_t *pwMode
);

hpi_err_t HPI_ChannelModeSet(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wMode
);

hpi_err_t HPI_ChannelModeGet(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *wMode
);




hpi_err_t HPI_Tuner_QueryBand(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hTuner,
 const uint32_t dwIndex,
 uint16_t *pwBand
);

hpi_err_t HPI_Tuner_SetBand(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wBand
);

hpi_err_t HPI_Tuner_GetBand(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwBand
);


hpi_err_t HPI_Tuner_QueryFrequency(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hTuner,
 const uint32_t dwIndex,
 const uint16_t band,
 uint32_t *pdwFreq
);

hpi_err_t HPI_Tuner_SetFrequency(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t wFreqInkHz
);

hpi_err_t HPI_Tuner_GetFrequency(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pwFreqInkHz
);

hpi_err_t HPI_Tuner_QueryGain(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hTuner,
 const uint32_t dwIndex,
 uint16_t *pwGain
);

hpi_err_t HPI_Tuner_SetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short nGain
);

hpi_err_t HPI_Tuner_GetGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *pnGain
);


hpi_err_t HPI_Tuner_GetRFLevel(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *pwLevel
);

hpi_err_t HPI_Tuner_GetRawRFLevel(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *pwLevel
);
hpi_err_t HPI_Tuner_GetStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwStatusMask,
 uint16_t *pwStatus
);

hpi_err_t HPI_Tuner_SetMode(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t nMode,
 uint32_t nValue
);

hpi_err_t HPI_Tuner_GetMode(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t nMode,
 uint32_t *pnValue
);

hpi_err_t HPI_Tuner_GetRDS(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pRdsData
);

hpi_err_t HPI_Tuner_QueryDeemphasis(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hTuner,
 const uint32_t dwIndex,
 const uint16_t band,
 uint32_t *pdwDeemphasis
);

hpi_err_t HPI_Tuner_SetDeemphasis(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwDeemphasis
);
hpi_err_t HPI_Tuner_GetDeemphasis(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwDeemphasis
);

hpi_err_t HPI_Tuner_QueryProgram(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hTuner,
 uint32_t *pbitmapProgram
);

hpi_err_t HPI_Tuner_SetProgram(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwProgram
);

hpi_err_t HPI_Tuner_GetProgram(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwProgram
);

hpi_err_t HPI_Tuner_GetHdRadioDspVersion(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszDspVersion,
 const uint32_t dwStringSize
);

hpi_err_t HPI_Tuner_GetHdRadioSdkVersion(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszSdkVersion,
 const uint32_t dwStringSize
);

hpi_err_t HPI_Tuner_GetFirmwareVersion(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszFWVersion,
 const uint32_t dwStringSize
);

hpi_err_t HPI_Tuner_GetHdRadioSignalQuality(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwQuality
);

hpi_err_t HPI_Tuner_GetHdRadioSignalBlend(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwBlend
);

hpi_err_t HPI_Tuner_SetHdRadioSignalBlend(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 const uint32_t dwBlend
);

hpi_err_t HPI_Tuner_GetDabAudioServiceCount(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwIndex,
 uint32_t *pdwCount
);

hpi_err_t HPI_Tuner_SetDabAudioService(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 const uint32_t dwIndex
);

hpi_err_t HPI_Tuner_GetDabAudioServiceName(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszAudioServiceName,
 const uint32_t nSize,
 const uint32_t nIndex
);

hpi_err_t HPI_Tuner_GetDabMultiplexName(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszMultiplexName,
 const uint32_t nSize
);

hpi_err_t HPI_Tuner_GetDabAudioInfo(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszAudioInfo,
 const uint32_t nSize
);

hpi_err_t HPI_Tuner_GetDabServiceInfo(
 hpi_handle_t hControl,
 uint32_t nIndex,
 struct hpi_dab_service_info *service_info
);

hpi_err_t HPI_Tuner_GetDabComponentInfo(
 hpi_handle_t hControl,
 uint32_t service_id,
 uint16_t component_id,
 struct hpi_dab_component_info *component_info
);

hpi_err_t HPI_Tuner_SetDabService(
 hpi_handle_t hControl,
 uint32_t service_id,
 uint16_t component_id,
 int stop
);

hpi_err_t HPI_Tuner_GetDabService(
 hpi_handle_t hControl,
 uint32_t *service_id,
 uint16_t *component_id
);

hpi_err_t HPI_Tuner_GetDabDataPacket(
 hpi_handle_t hControl,
 char *buffer,
 const size_t buf_len,
 size_t *data_len,
 int *next_poll_interval_ms
);





hpi_err_t HPI_PAD_GetChannelName(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszString,
 const uint32_t dwStringLength
);

hpi_err_t HPI_PAD_GetArtist(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszString,
 const uint32_t dwStringLength
);

hpi_err_t HPI_PAD_GetTitle(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszString,
 const uint32_t dwStringLength
);

hpi_err_t HPI_PAD_GetComment(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 char *pszString,
 const uint32_t dwStringLength
);

hpi_err_t HPI_PAD_GetProgramType(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwPTY
);

hpi_err_t HPI_PAD_GetRdsPI(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwPI
);

hpi_err_t HPI_PAD_GetProgramTypeString(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 const uint32_t dwDataType,
 const uint32_t nPTY,
 char *pszString,
 const uint32_t dwStringLength
);






hpi_err_t HPI_AESEBU_Receiver_QueryFormat(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hAesRx,
 const uint32_t dwIndex,
 uint16_t *pwFormat
);

hpi_err_t HPI_AESEBU_Receiver_SetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wSource
);

hpi_err_t HPI_AESEBU_Receiver_GetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwSource
);
hpi_err_t HPI_AESEBU_Receiver_GetSampleRate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwSampleRate
);

hpi_err_t HPI_AESEBU_Receiver_GetUserData(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t *pwData
);

hpi_err_t HPI_AESEBU_Receiver_GetChannelStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t *pwData
);


hpi_err_t HPI_AESEBU_Receiver_GetErrorStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwErrorData
);





hpi_err_t HPI_AESEBU_Transmitter_SetSampleRate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwSampleRate
);

hpi_err_t HPI_AESEBU_Transmitter_SetUserData(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t wData
);

hpi_err_t HPI_AESEBU_Transmitter_SetChannelStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t wData
);

hpi_err_t HPI_AESEBU_Transmitter_GetChannelStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t *pwData
);

hpi_err_t HPI_AESEBU_Transmitter_QueryFormat(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hAesTx,
 const uint32_t dwIndex,
 uint16_t *pwFormat
);

hpi_err_t HPI_AESEBU_Transmitter_SetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wOutputFormat
);

hpi_err_t HPI_AESEBU_Transmitter_GetFormat(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwOutputFormat
);




hpi_err_t HPI_Multiplexer_SetSource(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wSourceNodeType,
 uint16_t wSourceNodeIndex
);

hpi_err_t HPI_Multiplexer_GetSource(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *wSourceNodeType,
 uint16_t *wSourceNodeIndex
);

hpi_err_t HPI_Multiplexer_QuerySource(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t nIndex,
 uint16_t *wSourceNodeType,
 uint16_t *wSourceNodeIndex
);





hpi_err_t HPI_VoxSetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short anGain0_01dB
);

hpi_err_t HPI_VoxGetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *anGain0_01dB
);





hpi_err_t HPI_Bitstream_SetClockEdge(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wEdgeType
);

hpi_err_t HPI_Bitstream_SetDataPolarity(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wPolarity
);

hpi_err_t HPI_Bitstream_GetActivity(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwClkActivity,
 uint16_t *pwDataActivity
);






hpi_err_t HPI_SampleClock_QuerySource(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hClock,
 const uint32_t dwIndex,
 uint16_t *pwSource
);

hpi_err_t HPI_SampleClock_SetSource(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wSource
);

hpi_err_t HPI_SampleClock_GetSource(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwSource
);

hpi_err_t HPI_SampleClock_QuerySourceIndex(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hClock,
 const uint32_t dwIndex,
 const uint32_t dwSource,
 uint16_t *pwSourceIndex
);

hpi_err_t HPI_SampleClock_SetSourceIndex(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wSourceIndex
);

hpi_err_t HPI_SampleClock_GetSourceIndex(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwSourceIndex
);
hpi_err_t HPI_SampleClock_GetSampleRate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwSampleRate
);

hpi_err_t HPI_SampleClock_QueryLocalRate(
 const hpi_hsubsys_t *phSubSys,
 const hpi_handle_t hClock,
 const uint32_t dwIndex,
 uint32_t *pdwSource
);

hpi_err_t HPI_SampleClock_SetLocalRate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwSampleRateHz
);

hpi_err_t HPI_SampleClock_SetLocalRateEx(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwSampleRateHz,
 uint32_t dwSampleRatePPB
);

hpi_err_t HPI_SampleClock_GetLocalRate(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwSampleRate
);


hpi_err_t HPI_SampleClock_SetAuto(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwEnable
);

hpi_err_t HPI_SampleClock_GetAuto(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwEnable
);

hpi_err_t HPI_SampleClock_SetLocalRateLock(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwLock
);

hpi_err_t HPI_SampleClock_GetLocalRateLock(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwLock
);





hpi_err_t HPI_Microphone_SetPhantomPower(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wOnOff
);

hpi_err_t HPI_Microphone_GetPhantomPower(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwOnOff
);





hpi_err_t HPI_ParametricEQ_GetInfo(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t *pwNumberOfBands,
 uint16_t *pwEnabled
);

hpi_err_t HPI_ParametricEQ_SetState(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wOnOff
);

hpi_err_t HPI_ParametricEQ_SetBand(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t nType,
 uint32_t dwFrequencyHz,
 short nQ100,
 short nGain0_01dB
);

hpi_err_t HPI_ParametricEQ_GetBand(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 uint16_t *pnType,
 uint32_t *pdwFrequencyHz,
 short *pnQ100,
 short *pnGain0_01dB
);

hpi_err_t HPI_ParametricEQ_GetCoeffs(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint16_t wIndex,
 short coeffs[5]
);
hpi_err_t HPI_Compander_SetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwOn
);

hpi_err_t HPI_Compander_GetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwOn
);

hpi_err_t HPI_Compander_SetMakeupGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short nMakeupGain0_01dB
);

hpi_err_t HPI_Compander_GetMakeupGain(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 short *pnMakeupGain0_01dB
);

hpi_err_t HPI_Compander_SetAttackTimeConstant(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t wAttack
);

hpi_err_t HPI_Compander_GetAttackTimeConstant(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t *pwAttack
);

hpi_err_t HPI_Compander_SetDecayTimeConstant(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t wDecay
);

hpi_err_t HPI_Compander_GetDecayTimeConstant(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t *pwDecay
);

hpi_err_t HPI_Compander_SetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 short nThreshold0_01dB
);

hpi_err_t HPI_Compander_GetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 short *pnThreshold0_01dB
);

hpi_err_t HPI_Compander_SetRatio(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t wRatio100
);

hpi_err_t HPI_Compander_GetRatio(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIndex,
 uint32_t *pwRatio100
);





hpi_err_t HPI_Cobranet_HmiWrite(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwHmiAddress,
 uint32_t dwByteCount,
 uint8_t *pbData
);

hpi_err_t HPI_Cobranet_HmiRead(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwHmiAddress,
 uint32_t dwMaxByteCount,
 uint32_t *pdwByteCount,
 uint8_t *pbData
);

hpi_err_t HPI_Cobranet_HmiGetStatus(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwStatus,
 uint32_t *pdwReadableSize,
 uint32_t *pdwWriteableSize
);

hpi_err_t HPI_Cobranet_GetIPaddress(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwIPaddress
);

hpi_err_t HPI_Cobranet_SetIPaddress(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIPaddress
);

hpi_err_t HPI_Cobranet_GetStaticIPaddress(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwIPaddress
);

hpi_err_t HPI_Cobranet_SetStaticIPaddress(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t dwIPaddress
);

hpi_err_t HPI_Cobranet_GetMACaddress(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hControl,
 uint32_t *pdwMAC_MSBs,
 uint32_t *pdwMAC_LSBs
);





hpi_err_t HPI_ToneDetector_GetState(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *state
);

hpi_err_t HPI_ToneDetector_SetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t enable
);

hpi_err_t HPI_ToneDetector_GetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *enable
);

hpi_err_t HPI_ToneDetector_SetEventEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t EventEnable
);

hpi_err_t HPI_ToneDetector_GetEventEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *EventEnable
);

hpi_err_t HPI_ToneDetector_SetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 int threshold
);

hpi_err_t HPI_ToneDetector_GetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 int *threshold
);

hpi_err_t HPI_ToneDetector_GetFrequency(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t nIndex,
 uint32_t *dwFrequency
);





hpi_err_t HPI_SilenceDetector_GetState(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *state
);

hpi_err_t HPI_SilenceDetector_SetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t enable
);

hpi_err_t HPI_SilenceDetector_GetEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *enable
);

hpi_err_t HPI_SilenceDetector_SetEventEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t EventEnable
);

hpi_err_t HPI_SilenceDetector_GetEventEnable(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *EventEnable
);

hpi_err_t HPI_SilenceDetector_SetDelay(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t delay
);

hpi_err_t HPI_SilenceDetector_GetDelay(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 uint32_t *delay
);

hpi_err_t HPI_SilenceDetector_SetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 int threshold
);

hpi_err_t HPI_SilenceDetector_GetThreshold(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 int *threshold
);






hpi_err_t HPI_Universal_Info(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 struct hpi_entity **info
);

hpi_err_t HPI_Universal_Get(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 struct hpi_entity **value
);

hpi_err_t HPI_Universal_Set(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hC,
 struct hpi_entity *value
);




hpi_err_t HPI_ClockOpen(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 hpi_handle_t * phDspClock
);

hpi_err_t HPI_ClockSetTime(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hClock,
 uint16_t wHour,
 uint16_t wMinute,
 uint16_t wSecond,
 uint16_t wMilliSecond
);

hpi_err_t HPI_ClockGetTime(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hClock,
 uint16_t *pwHour,
 uint16_t *pwMinute,
 uint16_t *pwSecond,
 uint16_t *pwMilliSecond
);




hpi_err_t HPI_ProfileOpenAll(
 const hpi_hsubsys_t *phSubSys,
 uint16_t wAdapterIndex,
 uint16_t wProfileIndex,
 hpi_handle_t * phProfile,
 uint16_t *pwMaxProfiles
);

hpi_err_t HPI_ProfileGet(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hProfile,
 uint16_t wBinIndex,
 uint16_t *pwProfileInterval,
 uint32_t *pdwTotalTickCount,
 uint32_t *pdwCallCount,
 uint32_t *pdwMaxTickCount,
 uint32_t *pdwTicksPerMillisecond
);
hpi_err_t HPI_ProfileStartAll(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hProfile
);

hpi_err_t HPI_ProfileStopAll(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hProfile
);

hpi_err_t HPI_ProfileGetName(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hProfile,
 uint16_t wIndex,
 char *szProfileName,
 uint16_t nProfileNameLength
);

hpi_err_t HPI_ProfileGetUtilization(
 const hpi_hsubsys_t *phSubSys,
 hpi_handle_t hProfile,
 uint32_t *pdwUtilization
);
void HPI_GetErrorText(
 hpi_err_t wError,
 char *pszErrorText
);


hpi_err_t HPI_FormatCreate(
 struct hpi_format *pFormat,
 uint16_t wChannels,
 uint16_t wFormat,
 uint32_t dwSampleRate,
 uint32_t dwBitRate,
 uint32_t dwAttributes
);
