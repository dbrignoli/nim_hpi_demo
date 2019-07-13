 {.deadCodeElim: on.}
when defined(windows):
  const
    libname* = "libhpi.dll"
elif defined(macosx):
  const
    libname* = "libhpi.dylib"
else:
  const
    libname* = "libhpi.so"
type
  HPI_FORMATS* {.size: sizeof(cint).} = enum
    HPI_FORMAT_MIXER_NATIVE = 0, HPI_FORMAT_PCM8_UNSIGNED = 1,
    HPI_FORMAT_PCM16_SIGNED = 2, HPI_FORMAT_MPEG_L1 = 3, HPI_FORMAT_MPEG_L2 = 4,
    HPI_FORMAT_MPEG_L3 = 5, HPI_FORMAT_DOLBY_AC2 = 6, HPI_FORMAT_DOLBY_AC3 = 7,
    HPI_FORMAT_PCM16_BIGENDIAN = 8, HPI_FORMAT_AA_TAGIT1_HITS = 9,
    HPI_FORMAT_AA_TAGIT1_INSERTS = 10, HPI_FORMAT_PCM32_SIGNED = 11,
    HPI_FORMAT_RAW_BITSTREAM = 12, HPI_FORMAT_AA_TAGIT1_HITS_EX1 = 13,
    HPI_FORMAT_PCM32_FLOAT = 14, HPI_FORMAT_PCM24_SIGNED = 15, HPI_FORMAT_OEM1 = 16,
    HPI_FORMAT_OEM2 = 17, HPI_FORMAT_UNDEFINED = 0x0000FFFF


type
  HPI_STREAM_STATES* {.size: sizeof(cint).} = enum
    HPI_STATE_STOPPED = 1, HPI_STATE_PLAYING = 2, HPI_STATE_RECORDING = 3,
    HPI_STATE_DRAINED = 4, HPI_STATE_SINEGEN = 5, HPI_STATE_WAIT = 6


type
  HPI_SOURCENODES* {.size: sizeof(cint).} = enum
    HPI_SOURCENODE_NONE = 100, HPI_SOURCENODE_OSTREAM = 101,
    HPI_SOURCENODE_LINEIN = 102, HPI_SOURCENODE_AESEBU_IN = 103,
    HPI_SOURCENODE_TUNER = 104, HPI_SOURCENODE_RF = 105,
    HPI_SOURCENODE_CLOCK_SOURCE = 106, HPI_SOURCENODE_RAW_BITSTREAM = 107,
    HPI_SOURCENODE_MICROPHONE = 108, HPI_SOURCENODE_COBRANET = 109,
    HPI_SOURCENODE_ANALOG = 110, HPI_SOURCENODE_ADAPTER = 111,
    HPI_SOURCENODE_RTP_DESTINATION = 112, HPI_SOURCENODE_INTERNAL = 113,
    HPI_SOURCENODE_AVB_STREAM = 114, HPI_SOURCENODE_BLULINK = 115,
    HPI_SOURCENODE_AVB_AUDIO = 116

const
  HPI_SOURCENODE_LAST_INDEX = HPI_SOURCENODE_AVB_AUDIO

type
  HPI_DESTNODES* {.size: sizeof(cint).} = enum
    HPI_DESTNODE_NONE = 200, HPI_DESTNODE_ISTREAM = 201, HPI_DESTNODE_LINEOUT = 202,
    HPI_DESTNODE_AESEBU_OUT = 203, HPI_DESTNODE_RF = 204, HPI_DESTNODE_SPEAKER = 205,
    HPI_DESTNODE_COBRANET = 206, HPI_DESTNODE_ANALOG = 207,
    HPI_DESTNODE_RTP_SOURCE = 208, HPI_DESTNODE_AVB_STREAM = 209,
    HPI_DESTNODE_INTERNAL = 210, HPI_DESTNODE_BLULINK = 211,
    HPI_DESTNODE_AVB_AUDIO = 212

const
  HPI_DESTNODE_LAST_INDEX = HPI_DESTNODE_AVB_AUDIO

type
  HPI_CONTROLS* {.size: sizeof(cint).} = enum
    HPI_CONTROL_GENERIC = 0, HPI_CONTROL_CONNECTION = 1, HPI_CONTROL_VOLUME = 2,
    HPI_CONTROL_METER = 3, HPI_CONTROL_MUTE = 4, HPI_CONTROL_MULTIPLEXER = 5,
    HPI_CONTROL_AESEBU_TRANSMITTER = 6, HPI_CONTROL_AESEBU_RECEIVER = 7,
    HPI_CONTROL_LEVEL = 8, HPI_CONTROL_TUNER = 9, HPI_CONTROL_VOX = 11,
    HPI_CONTROL_CHANNEL_MODE = 15, HPI_CONTROL_BITSTREAM = 16,
    HPI_CONTROL_SAMPLECLOCK = 17, HPI_CONTROL_MICROPHONE = 18,
    HPI_CONTROL_PARAMETRIC_EQ = 19, HPI_CONTROL_COMPANDER = 20,
    HPI_CONTROL_COBRANET = 21, HPI_CONTROL_TONEDETECTOR = 22,
    HPI_CONTROL_SILENCEDETECTOR = 23, HPI_CONTROL_PAD = 24, HPI_CONTROL_SRC = 25,
    HPI_CONTROL_UNIVERSAL = 26

const
  HPI_CONTROL_AESEBUTX = HPI_CONTROL_AESEBU_TRANSMITTER
  HPI_CONTROL_AESEBURX = HPI_CONTROL_AESEBU_RECEIVER
  HPI_CONTROL_EQUALIZER = HPI_CONTROL_PARAMETRIC_EQ
  HPI_CONTROL_LAST_INDEX = HPI_CONTROL_UNIVERSAL

type
  HPI_ADAPTER_PROPERTIES* {.size: sizeof(cint).} = enum
    HPI_ADAPTER_PROPERTY_ERRATA_1 = 1, HPI_ADAPTER_PROPERTY_GROUPING = 2,
    HPI_ADAPTER_PROPERTY_ENABLE_SSX2 = 3, HPI_ADAPTER_PROPERTY_SSX2_SETTING = 4,
    HPI_ADAPTER_PROPERTY_IRQ_RATE = 5, HPI_ADAPTER_PROPERTY_READONLYBASE = 256,
    HPI_ADAPTER_PROPERTY_GRANULARITY = 257, HPI_ADAPTER_PROPERTY_CURCHANNELS = 258,
    HPI_ADAPTER_PROPERTY_SOFTWARE_VERSION = 259,
    HPI_ADAPTER_PROPERTY_MAC_ADDRESS_MSB = 260,
    HPI_ADAPTER_PROPERTY_MAC_ADDRESS_LSB = 261,
    HPI_ADAPTER_PROPERTY_EXTENDED_ADAPTER_TYPE = 262,
    HPI_ADAPTER_PROPERTY_LOGTABLEN = 263, HPI_ADAPTER_PROPERTY_LOGTABBEG = 264,
    HPI_ADAPTER_PROPERTY_IP_ADDRESS = 265,
    HPI_ADAPTER_PROPERTY_BUFFER_UPDATE_COUNT = 266,
    HPI_ADAPTER_PROPERTY_INTERVAL = 267, HPI_ADAPTER_PROPERTY_CAPS1 = 268,
    HPI_ADAPTER_PROPERTY_CAPS2 = 269,
    HPI_ADAPTER_PROPERTY_SYNC_HEADER_CONNECTIONS = 270,
    HPI_ADAPTER_PROPERTY_SUPPORTS_SSX2 = 271,
    HPI_ADAPTER_PROPERTY_SUPPORTS_IRQ = 272,
    HPI_ADAPTER_PROPERTY_SUPPORTS_FW_UPDATE = 273,
    HPI_ADAPTER_PROPERTY_FIRMWARE_ID = 274,
    HPI_ADAPTER_PROPERTY_OUTSTREAM_FORMATS_SUPPORTED = 275,
    HPI_ADAPTER_PROPERTY_INSTREAM_FORMATS_SUPPORTED = 276,
    HPI_ADAPTER_PROPERTY_STREAM_HOST_BUFFER_REQUIRED = 277

const
  HPI_ADAPTER_PROPERTY_LATENCY = HPI_ADAPTER_PROPERTY_READONLYBASE

type
  HPI_ADAPTER_MODE_CMDS* {.size: sizeof(cint).} = enum
    HPI_ADAPTER_MODE_SET = 0, HPI_ADAPTER_MODE_QUERY = 1


type
  HPI_ADAPTER_MODES* {.size: sizeof(cint).} = enum
    HPI_ADAPTER_MODE_4OSTREAM = 1, HPI_ADAPTER_MODE_6OSTREAM = 2,
    HPI_ADAPTER_MODE_8OSTREAM = 3, HPI_ADAPTER_MODE_16OSTREAM = 4,
    HPI_ADAPTER_MODE_1OSTREAM = 5, HPI_ADAPTER_MODE_1 = 6, HPI_ADAPTER_MODE_2 = 7,
    HPI_ADAPTER_MODE_3 = 8, HPI_ADAPTER_MODE_MULTICHANNEL = 9,
    HPI_ADAPTER_MODE_12OSTREAM = 10, HPI_ADAPTER_MODE_9OSTREAM = 11,
    HPI_ADAPTER_MODE_MONO = 12, HPI_ADAPTER_MODE_LOW_LATENCY = 13,
    HPI_ADAPTER_MODE_24OSTREAM = 14, HPI_ADAPTER_MODE_32OSTREAM = 15


type
  HPI_MPEG_ANC_MODES* {.size: sizeof(cint).} = enum
    HPI_MPEG_ANC_HASENERGY = 0, HPI_MPEG_ANC_RAW = 1


type
  HPI_ISTREAM_MPEG_ANC_ALIGNS* {.size: sizeof(cint).} = enum
    HPI_MPEG_ANC_ALIGN_LEFT = 0, HPI_MPEG_ANC_ALIGN_RIGHT = 1


type
  HPI_MPEG_MODES* {.size: sizeof(cint).} = enum
    HPI_MPEG_MODE_DEFAULT = 0, HPI_MPEG_MODE_STEREO = 1,
    HPI_MPEG_MODE_JOINTSTEREO = 2, HPI_MPEG_MODE_DUALCHANNEL = 3


type
  HPI_MIXER_STORE_COMMAND* {.size: sizeof(cint).} = enum
    HPI_MIXER_STORE_SAVE = 1, HPI_MIXER_STORE_RESTORE = 2, HPI_MIXER_STORE_DELETE = 3,
    HPI_MIXER_STORE_ENABLE = 4, HPI_MIXER_STORE_DISABLE = 5,
    HPI_MIXER_STORE_SAVE_SINGLE = 6


type
  HPI_SWITCH_STATES* {.size: sizeof(cint).} = enum
    HPI_SWITCH_OFF = 0, HPI_SWITCH_ON = 1


type
  HPI_VOLUME_AUTOFADES* {.size: sizeof(cint).} = enum
    HPI_VOLUME_AUTOFADE_LOG = 2, HPI_VOLUME_AUTOFADE_LINEAR = 3


type
  HPI_AESEBU_FORMATS* {.size: sizeof(cint).} = enum
    HPI_AESEBU_FORMAT_AESEBU = 1, HPI_AESEBU_FORMAT_SPDIF = 2


type
  HPI_AESEBU_ERRORS* {.size: sizeof(cint).} = enum
    HPI_AESEBU_ERROR_NOT_LOCKED = 0x00000001,
    HPI_AESEBU_ERROR_POOR_QUALITY = 0x00000002,
    HPI_AESEBU_ERROR_PARITY_ERROR = 0x00000004,
    HPI_AESEBU_ERROR_BIPHASE_VIOLATION = 0x00000008,
    HPI_AESEBU_ERROR_VALIDITY = 0x00000010, HPI_AESEBU_ERROR_CRC = 0x00000020


type
  eHPI_RDS_type* {.size: sizeof(cint).} = enum
    HPI_RDS_DATATYPE_RDS = 0, HPI_RDS_DATATYPE_RBDS = 1


type
  HPI_TUNER_BAND* {.size: sizeof(cint).} = enum
    HPI_TUNER_BAND_AM = 1, HPI_TUNER_BAND_FM = 2, HPI_TUNER_BAND_TV_NTSC_M = 3,
    HPI_TUNER_BAND_FM_STEREO = 4, HPI_TUNER_BAND_AUX = 5,
    HPI_TUNER_BAND_TV_PAL_BG = 6, HPI_TUNER_BAND_TV_PAL_I = 7,
    HPI_TUNER_BAND_TV_PAL_DK = 8, HPI_TUNER_BAND_TV_SECAM_L = 9,
    HPI_TUNER_BAND_DAB = 10

const
  HPI_TUNER_BAND_TV = HPI_TUNER_BAND_TV_NTSC_M
  HPI_TUNER_BAND_LAST = HPI_TUNER_BAND_DAB

type
  HPI_TUNER_MODES* {.size: sizeof(cint).} = enum
    HPI_TUNER_MODE_RSS = 1, HPI_TUNER_MODE_RDS = 2


type
  HPI_TUNER_MODE_VALUES* {.size: sizeof(cint).} = enum
    HPI_TUNER_MODE_RSS_DISABLE = 0, HPI_TUNER_MODE_RSS_ENABLE = 1,
    HPI_TUNER_MODE_RDS_RBDS = 2

const
  HPI_TUNER_MODE_RDS_DISABLE = HPI_TUNER_MODE_RSS_DISABLE
  HPI_TUNER_MODE_RDS_RDS = HPI_TUNER_MODE_RSS_ENABLE

type
  HPI_TUNER_STATUS_BITS* {.size: sizeof(cint).} = enum
    HPI_TUNER_VIDEO_COLOR_PRESENT = 0x00000001,
    HPI_TUNER_VIDEO_IS_60HZ = 0x00000020,
    HPI_TUNER_VIDEO_HORZ_SYNC_MISSING = 0x00000040,
    HPI_TUNER_VIDEO_STATUS_VALID = 0x00000100, HPI_TUNER_DIGITAL = 0x00000200,
    HPI_TUNER_MULTIPROGRAM = 0x00000400, HPI_TUNER_FW_LOAD = 0x00000800,
    HPI_TUNER_PLL_LOCKED = 0x00001000, HPI_TUNER_FM_STEREO = 0x00002000


type
  HPI_CHANNEL_MODES* {.size: sizeof(cint).} = enum
    HPI_CHANNEL_MODE_NORMAL = 1, HPI_CHANNEL_MODE_SWAP = 2,
    HPI_CHANNEL_MODE_LEFT_TO_STEREO = 3, HPI_CHANNEL_MODE_RIGHT_TO_STEREO = 4,
    HPI_CHANNEL_MODE_STEREO_TO_LEFT = 5, HPI_CHANNEL_MODE_STEREO_TO_RIGHT = 6

const
  HPI_CHANNEL_MODE_LAST = HPI_CHANNEL_MODE_STEREO_TO_RIGHT

type
  HPI_SAMPLECLOCK_SOURCES* {.size: sizeof(cint).} = enum
    HPI_SAMPLECLOCK_SOURCE_LOCAL = 1, HPI_SAMPLECLOCK_SOURCE_AESEBU_SYNC = 2,
    HPI_SAMPLECLOCK_SOURCE_WORD = 3, HPI_SAMPLECLOCK_SOURCE_WORD_HEADER = 4,
    HPI_SAMPLECLOCK_SOURCE_SMPTE = 5, HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT = 6,
    HPI_SAMPLECLOCK_SOURCE_NETWORK = 8, HPI_SAMPLECLOCK_SOURCE_PREV_MODULE = 10,
    HPI_SAMPLECLOCK_SOURCE_BLULINK = 11

const
  HPI_SAMPLECLOCK_SOURCE_LAST = HPI_SAMPLECLOCK_SOURCE_BLULINK

type
  HPI_FILTER_TYPE* {.size: sizeof(cint).} = enum
    HPI_FILTER_TYPE_BYPASS = 0, HPI_FILTER_TYPE_LOWSHELF = 1,
    HPI_FILTER_TYPE_HIGHSHELF = 2, HPI_FILTER_TYPE_EQ_BAND = 3,
    HPI_FILTER_TYPE_LOWPASS = 4, HPI_FILTER_TYPE_HIGHPASS = 5,
    HPI_FILTER_TYPE_BANDPASS = 6, HPI_FILTER_TYPE_BANDSTOP = 7


type
  ASYNC_EVENT_SOURCES* {.size: sizeof(cint).} = enum
    HPI_ASYNC_EVENT_GPIO = 1, HPI_ASYNC_EVENT_SILENCE = 2, HPI_ASYNC_EVENT_TONE = 3


type
  HPI_ERROR_CODES* {.size: sizeof(cint).} = enum
    HPI_ERROR_INVALID_TYPE = 100, HPI_ERROR_INVALID_OBJ = 101,
    HPI_ERROR_INVALID_FUNC = 102, HPI_ERROR_INVALID_OBJ_INDEX = 103,
    HPI_ERROR_OBJ_NOT_OPEN = 104, HPI_ERROR_OBJ_ALREADY_OPEN = 105,
    HPI_ERROR_INVALID_RESOURCE = 106, HPI_ERROR_INVALID_RESPONSE = 108,
    HPI_ERROR_PROCESSING_MESSAGE = 109, HPI_ERROR_NETWORK_TIMEOUT = 110,
    HPI_ERROR_INVALID_HANDLE = 111, HPI_ERROR_UNIMPLEMENTED = 112,
    HPI_ERROR_NETWORK_TOO_MANY_CLIENTS = 113,
    HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL = 114, HPI_ERROR_RESPONSE_MISMATCH = 115,
    HPI_ERROR_CONTROL_CACHING = 116, HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL = 117,
    HPI_ERROR_BAD_ADAPTER = 201, HPI_ERROR_BAD_ADAPTER_NUMBER = 202,
    HPI_ERROR_DUPLICATE_ADAPTER_NUMBER = 203, HPI_ERROR_DSP_BOOTLOAD = 204,
    HPI_ERROR_DSP_FILE_NOT_FOUND = 206, HPI_ERROR_DSP_HARDWARE = 207,
    HPI_ERROR_MEMORY_ALLOC = 208, HPI_ERROR_PLD_LOAD = 209,
    HPI_ERROR_DSP_FILE_FORMAT = 210, HPI_ERROR_DSP_FILE_ACCESS_DENIED = 211,
    HPI_ERROR_DSP_FILE_NO_HEADER = 212, HPI_ERROR_DSP_SECTION_NOT_FOUND = 214,
    HPI_ERROR_DSP_FILE_OTHER_ERROR = 215,
    HPI_ERROR_DSP_FILE_SHARING_VIOLATION = 216,
    HPI_ERROR_DSP_FILE_NULL_HEADER = 217, HPI_ERROR_DSP_0 = 218,
    HPI_ERROR_DSP_1 = 219, HPI_ERROR_BAD_CHECKSUM = 221, HPI_ERROR_BAD_SEQUENCE = 222,
    HPI_ERROR_FLASH_ERASE = 223, HPI_ERROR_FLASH_PROGRAM = 224,
    HPI_ERROR_FLASH_VERIFY = 225, HPI_ERROR_FLASH_TYPE = 226,
    HPI_ERROR_FLASH_START = 227, HPI_ERROR_FLASH_READ = 228,
    HPI_ERROR_FLASH_READ_NO_FILE = 229, HPI_ERROR_FLASH_SIZE = 230,
    HPI_ERROR_RESERVED_1 = 290, HPI_ERROR_INVALID_FORMAT = 301,
    HPI_ERROR_INVALID_SAMPLERATE = 302, HPI_ERROR_INVALID_CHANNELS = 303,
    HPI_ERROR_INVALID_BITRATE = 304, HPI_ERROR_INVALID_DATASIZE = 305,
    HPI_ERROR_INVALID_DATA_POINTER = 308, HPI_ERROR_INVALID_PACKET_ORDER = 309,
    HPI_ERROR_INVALID_OPERATION = 310, HPI_ERROR_INCOMPATIBLE_SAMPLERATE = 311,
    HPI_ERROR_BAD_ADAPTER_MODE = 312,
    HPI_ERROR_TOO_MANY_CAPABILITY_CHANGE_ATTEMPTS = 313,
    HPI_ERROR_NO_INTERADAPTER_GROUPS = 314, HPI_ERROR_NO_INTERDSP_GROUPS = 315,
    HPI_ERROR_WAIT_CANCELLED = 316, HPI_ERROR_INVALID_STRING = 317,
    HPI_ERROR_INVALID_NODE = 400, HPI_ERROR_INVALID_CONTROL = 401,
    HPI_ERROR_INVALID_CONTROL_VALUE = 402,
    HPI_ERROR_INVALID_CONTROL_ATTRIBUTE = 403, HPI_ERROR_CONTROL_DISABLED = 404,
    HPI_ERROR_CONTROL_I2C_MISSING_ACK = 405, HPI_ERROR_CONTROL_NOT_READY = 407,
    HPI_ERROR_NVMEM_BUSY = 450, HPI_ERROR_NVMEM_FULL = 451,
    HPI_ERROR_NVMEM_FAIL = 452, HPI_ERROR_I2C_BAD_ADR = 460,
    HPI_ERROR_ENTITY_TYPE_MISMATCH = 470, HPI_ERROR_ENTITY_ITEM_COUNT = 471,
    HPI_ERROR_ENTITY_TYPE_INVALID = 472, HPI_ERROR_ENTITY_ROLE_INVALID = 473,
    HPI_ERROR_ENTITY_SIZE_MISMATCH = 474, HPI_ERROR_CUSTOM = 600,
    HPI_ERROR_MUTEX_TIMEOUT = 700, HPI_ERROR_WAIT_TIMEOUT = 701,
    HPI_ERROR_WAIT_INTERRUPTED = 702, HPI_ERROR_BACKEND_BASE = 900

const
  HPI_ERROR_HOST_BUFFER_NOT_ALLOCATED = HPI_ERROR_INVALID_STRING
  HPI_ERROR_I2C_MISSING_ACK = HPI_ERROR_CONTROL_I2C_MISSING_ACK
  HPI_ERROR_DSP_COMMUNICATION = HPI_ERROR_BACKEND_BASE

type
  INNER_C_STRUCT_hpi4nim_886* {.bycopy.} = object
    hwassembly* {.bitsize: 3.}: cuint
    hwrev* {.bitsize: 4.}: cuint
    swminor* {.bitsize: 6.}: cuint
    swmajor* {.bitsize: 3.}: cuint

  hpi_version* {.bycopy.} = object {.union.}
    s*: INNER_C_STRUCT_hpi4nim_886
    w*: uint16
    dw*: uint32

  hpi_format* {.bycopy.} = object
    dwSampleRate*: uint32
    dwBitRate*: uint32
    dwAttributes*: uint32
    wModeLegacy*: uint16
    wUnused*: uint16
    wChannels*: uint16
    wFormat*: uint16

  hpi_anc_frame* {.bycopy.} = object
    dwValidBitsInThisFrame*: uint32
    bData*: array[(64), uint8]

  INNER_C_STRUCT_hpi4nim_926* {.bycopy.} = object
    wIndex*: uint16

  INNER_C_STRUCT_hpi4nim_929* {.bycopy.} = object
    wNodeIndex*: uint16
    wNodeType*: uint16

  INNER_C_UNION_hpi4nim_925* {.bycopy.} = object {.union.}
    gpio*: INNER_C_STRUCT_hpi4nim_926
    control*: INNER_C_STRUCT_hpi4nim_929

  hpi_async_event* {.bycopy.} = object
    wEventType*: uint16
    wSequence*: uint16
    dwState*: uint32
    hObject*: uint32
    u*: INNER_C_UNION_hpi4nim_925

  hpi_entity* {.bycopy.} = object

  e_entity_type* {.size: sizeof(cint).} = enum
    entity_type_null = 0, entity_type_sequence = 1, entity_type_reference = 2,
    entity_type_int = 3, entity_type_float = 4, entity_type_double = 5,
    entity_type_cstring = 6, entity_type_octet = 7, entity_type_ip4_address = 8,
    entity_type_ip6_address = 9, entity_type_mac_address = 10,
    entity_type_boolean = 11, LAST_ENTITY_TYPE = 12


type
  e_entity_role* {.size: sizeof(cint).} = enum
    entity_role_null = 0, entity_role_value = 1, entity_role_classname = 2,
    entity_role_units = 3, entity_role_flags = 4, entity_role_range = 5,
    entity_role_mapping = 6, entity_role_enum = 7, entity_role_instance_of = 8,
    entity_role_depends_on = 9, entity_role_member_of_group = 10,
    entity_role_value_constraint = 11, entity_role_parameter_port = 12,
    entity_role_block = 13, entity_role_label = 14, entity_role_key = 15,
    entity_role_value_label = 16, LAST_ENTITY_ROLE = 17


type
  e_entity_flag_values* {.size: sizeof(cint).} = enum
    entity_flag_writeable = 1, entity_flag_readable = 2, entity_flag_volatile = 4,
    entity_flag_volatile_info = 8, entity_flag_requires_restart = 16


type
  hpi_dab_service_component* {.bycopy.} = object
    id*: uint16
    info*: uint8
    valid*: uint8

  hpi_dab_service_info* {.bycopy.} = object
    id*: uint32
    info1*: uint8
    info2*: uint8
    info3*: uint8
    num_components*: uint8
    label*: array[16, char]
    components*: array[15, hpi_dab_service_component]

  hpi_dab_component_info* {.bycopy.} = object
    global_id*: uint8
    pad1*: uint8
    language*: uint8
    charset*: uint8
    label*: array[16, uint8]
    label_abbrev_mask*: uint16
    num_ua*: uint8
    len_ua*: uint8
    ua_type*: uint16
    ua_datalen*: uint8
    ua_data*: array[250, uint8]
    align_pad*: uint8

  hpi_service_data_packet_info* {.bycopy.} = object
    flags*: uint8
    buff_count*: uint8
    srv_state*: uint8
    data_type*: uint8
    serv_id*: uint32
    comp_id*: uint32
    ua_type*: uint16
    byte_count*: uint16
    seg_num*: uint16
    num_segs*: uint16

  hpi_err_t* = uint16
  hpi_handle_t* = uint32
  hpi_hsubsys* {.bycopy.} = object

  hpi_hsubsys_t* = hpi_hsubsys
  hpi_format_t* = hpi_format
  hpi_control_t* {.bycopy.} = object
    wControlType*: uint16
    wSrcNodeType*: uint16
    wSrcNodeIndex*: uint16
    wDstNodeType*: uint16
    wDstNodeIndex*: uint16
    hControl*: hpi_handle_t


proc HPI_StreamEstimateBufferSize*(pF: ptr hpi_format;
                                  dwHostPollingRateInMilliSeconds: uint32;
                                  dwRecommendedBufferSize: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_StreamEstimateBufferSize", dynlib: libname.}
proc HPI_Entity_FindNext*(container_entity: ptr hpi_entity; `type`: e_entity_type;
                         role: e_entity_role; recursive_flag: cint;
                         current_match: ptr ptr hpi_entity): hpi_err_t {.cdecl,
    importc: "HPI_Entity_FindNext", dynlib: libname.}
proc HPI_Entity_CopyValueFrom*(entity: ptr hpi_entity; `type`: e_entity_type;
                              item_count: csize; value_dst_p: pointer;
                              value_size: csize): hpi_err_t {.cdecl,
    importc: "HPI_Entity_CopyValueFrom", dynlib: libname.}
proc HPI_Entity_Unpack*(entity: ptr hpi_entity; `type`: ptr e_entity_type;
                       items: ptr csize; role: ptr e_entity_role; value: ptr pointer): hpi_err_t {.
    cdecl, importc: "HPI_Entity_Unpack", dynlib: libname.}
proc HPI_Entity_GetTypeName*(entity: ptr hpi_entity): cstring {.cdecl,
    importc: "HPI_Entity_GetTypeName", dynlib: libname.}
proc HPI_Entity_GetRoleName*(entity: ptr hpi_entity): cstring {.cdecl,
    importc: "HPI_Entity_GetRoleName", dynlib: libname.}
proc HPI_Entity_AllocAndPack*(`type`: e_entity_type; item_count: csize;
                             role: e_entity_role; value: pointer; value_size: csize;
                             entity: ptr ptr hpi_entity): hpi_err_t {.cdecl,
    importc: "HPI_Entity_AllocAndPack", dynlib: libname.}
proc HPI_Entity_Free*(entity: ptr hpi_entity) {.cdecl, importc: "HPI_Entity_Free",
    dynlib: libname.}
proc HPI_Object_UriToHandle*(uri: cstring; h: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_Object_UriToHandle", dynlib: libname.}
proc HPI_Object_GetInfoEntity*(h: hpi_handle_t; info: ptr ptr hpi_entity): hpi_err_t {.
    cdecl, importc: "HPI_Object_GetInfoEntity", dynlib: libname.}
proc HPI_Object_GetValueEntity*(h: hpi_handle_t; value: ptr ptr hpi_entity): hpi_err_t {.
    cdecl, importc: "HPI_Object_GetValueEntity", dynlib: libname.}
proc HPI_Object_SetValueEntity*(h: hpi_handle_t; value: ptr hpi_entity): hpi_err_t {.
    cdecl, importc: "HPI_Object_SetValueEntity", dynlib: libname.}
proc HPI_Object_GetValue*(h: hpi_handle_t; `type`: e_entity_type; count: csize;
                         value: pointer; value_size: csize): hpi_err_t {.cdecl,
    importc: "HPI_Object_GetValue", dynlib: libname.}
proc HPI_Object_SetValue*(h: hpi_handle_t; `type`: e_entity_type; count: csize;
                         value: pointer; value_size: csize): hpi_err_t {.cdecl,
    importc: "HPI_Object_SetValue", dynlib: libname.}
proc HPI_Object_GetRole*(hObject: hpi_handle_t; r: ptr e_entity_role): hpi_err_t {.
    cdecl, importc: "HPI_Object_GetRole", dynlib: libname.}
proc HPI_Object_GetInfo*(hObject: hpi_handle_t; `type`: e_entity_type;
                        role: e_entity_role; value: pointer; value_size: ptr csize;
                        value_count: ptr csize): hpi_err_t {.cdecl,
    importc: "HPI_Object_GetInfo", dynlib: libname.}
proc HPI_Object_BlockParameters*(hMixer: hpi_handle_t; `block`: hpi_handle_t;
                                parameters: ptr hpi_handle_t;
                                param_count: ptr csize): hpi_err_t {.cdecl,
    importc: "HPI_Object_BlockParameters", dynlib: libname.}
proc HPI_Object_BlockHandle*(hMixer: hpi_handle_t; wSrcNodeType: uint16;
                            wSrcNodeTypeIndex: uint16; wDstNodeType: uint16;
                            wDstNodeTypeIndex: uint16; block_name: cstring;
                            phBlock: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_Object_BlockHandle", dynlib: libname.}
proc HPI_Object_ParameterHandle*(hMixer: hpi_handle_t; hBlock: hpi_handle_t;
                                parameter_name: cstring;
                                phParameter: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_Object_ParameterHandle", dynlib: libname.}
proc HPI_MemFree*(mem: pointer) {.cdecl, importc: "HPI_MemFree", dynlib: libname.}
proc HPI_SubSysCreate*(): ptr hpi_hsubsys_t {.cdecl, importc: "HPI_SubSysCreate",
    dynlib: libname.}
proc HPI_SubSysFree*(phSubSys: ptr hpi_hsubsys_t) {.cdecl, importc: "HPI_SubSysFree",
    dynlib: libname.}
proc HPI_SubSysGetVersionEx*(phSubSys: ptr hpi_hsubsys_t; pdwVersionEx: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_SubSysGetVersionEx", dynlib: libname.}
proc HPI_SubSysGetNumAdapters*(phSubSys: ptr hpi_hsubsys_t; pnNumAdapters: ptr cint): hpi_err_t {.
    cdecl, importc: "HPI_SubSysGetNumAdapters", dynlib: libname.}
proc HPI_SubSysGetAdapter*(phSubSys: ptr hpi_hsubsys_t; nIterator: cint;
                          pdwAdapterIndex: ptr uint32; pwAdapterType: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_SubSysGetAdapter", dynlib: libname.}
proc HPI_SubSysSsx2Bypass*(phSubSys: ptr hpi_hsubsys_t; wBypass: uint16): uint16 {.
    cdecl, importc: "HPI_SubSysSsx2Bypass", dynlib: libname.}
proc HPI_SubSysSetHostNetworkInterface*(phSubSys: ptr hpi_hsubsys_t;
                                       szInterface: cstring): hpi_err_t {.cdecl,
    importc: "HPI_SubSysSetHostNetworkInterface", dynlib: libname.}
proc HPI_AdapterOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_AdapterOpen", dynlib: libname.}
proc HPI_AdapterClose*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_AdapterClose", dynlib: libname.}
proc HPI_AdapterGetInfo*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                        pwNumOutStreams: ptr uint16; pwNumInStreams: ptr uint16;
                        pwVersion: ptr uint16; pdwSerialNumber: ptr uint32;
                        pwAdapterType: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AdapterGetInfo", dynlib: libname.}
proc HPI_AdapterRestart*(wAdapterIndex: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AdapterRestart", dynlib: libname.}
proc HPI_AdapterGetModuleByIndex*(phSubSys: ptr hpi_hsubsys_t;
                                 wAdapterIndex: uint16; wModuleIndex: uint16;
                                 pwNumOutputs: ptr uint16; pwNumInputs: ptr uint16;
                                 pwVersion: ptr uint16;
                                 pdwSerialNumber: ptr uint32;
                                 pwModuleType: ptr uint16;
                                 phModule: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_AdapterGetModuleByIndex", dynlib: libname.}
proc HPI_AdapterSetMode*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                        dwAdapterMode: uint32): hpi_err_t {.cdecl,
    importc: "HPI_AdapterSetMode", dynlib: libname.}
proc HPI_AdapterSetModeEx*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                          dwAdapterMode: uint32; wQueryOrSet: uint16): hpi_err_t {.
    cdecl, importc: "HPI_AdapterSetModeEx", dynlib: libname.}
proc HPI_AdapterGetMode*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                        pdwAdapterMode: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_AdapterGetMode", dynlib: libname.}
proc HPI_AdapterGetAssert2*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                           pAssertCount: ptr uint16; pszAssert: cstring;
                           pParam1: ptr uint32; pParam2: ptr uint32;
                           pDspStringAddr: ptr uint32; pProcessorId: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_AdapterGetAssert2", dynlib: libname.}
proc HPI_AdapterTestAssert*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                           wAssertId: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AdapterTestAssert", dynlib: libname.}
proc HPI_AdapterEnableCapability*(phSubSys: ptr hpi_hsubsys_t;
                                 wAdapterIndex: uint16; wCapability: uint16;
                                 dwKey: uint32): hpi_err_t {.cdecl,
    importc: "HPI_AdapterEnableCapability", dynlib: libname.}
proc HPI_AdapterSelfTest*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_AdapterSelfTest", dynlib: libname.}
proc HPI_AdapterDebugRead*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                          dwDspAddress: uint32; pBytes: cstring;
                          dwCountBytes: ptr cint): hpi_err_t {.cdecl,
    importc: "HPI_AdapterDebugRead", dynlib: libname.}
proc HPI_AdapterSetProperty*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                            wProperty: uint16; wParamter1: uint16;
                            wParamter2: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AdapterSetProperty", dynlib: libname.}
proc HPI_AdapterGetProperty*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                            wProperty: uint16; pwParamter1: ptr uint16;
                            pwParamter2: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AdapterGetProperty", dynlib: libname.}
proc HPI_AdapterEnumerateProperty*(phSubSys: ptr hpi_hsubsys_t;
                                  wAdapterIndex: uint16; wIndex: uint16;
                                  wWhatToEnumerate: uint16;
                                  wPropertyIndex: uint16; pdwSetting: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_AdapterEnumerateProperty", dynlib: libname.}
proc HPI_NvMemoryOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                      phNvMemory: ptr hpi_handle_t; pwSizeInBytes: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_NvMemoryOpen", dynlib: libname.}
proc HPI_NvMemoryReadByte*(phSubSys: ptr hpi_hsubsys_t; hNvMemory: hpi_handle_t;
                          wIndex: uint16; pwData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_NvMemoryReadByte", dynlib: libname.}
proc HPI_NvMemoryWriteByte*(phSubSys: ptr hpi_hsubsys_t; hNvMemory: hpi_handle_t;
                           wIndex: uint16; wData: uint16): hpi_err_t {.cdecl,
    importc: "HPI_NvMemoryWriteByte", dynlib: libname.}
proc HPI_GpioOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                  phGpio: ptr hpi_handle_t; pwNumberInputBits: ptr uint16;
                  pwNumberOutputBits: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_GpioOpen", dynlib: libname.}
proc HPI_GpioReadBit*(phSubSys: ptr hpi_hsubsys_t; hGpio: hpi_handle_t;
                     wBitIndex: uint16; pwBitData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_GpioReadBit", dynlib: libname.}
proc HPI_GpioReadAllBits*(phSubSys: ptr hpi_hsubsys_t; hGpio: hpi_handle_t;
                         awAllBitData: array[4, uint16]): hpi_err_t {.cdecl,
    importc: "HPI_GpioReadAllBits", dynlib: libname.}
proc HPI_GpioWriteBit*(phSubSys: ptr hpi_hsubsys_t; hGpio: hpi_handle_t;
                      wBitIndex: uint16; wBitData: uint16): hpi_err_t {.cdecl,
    importc: "HPI_GpioWriteBit", dynlib: libname.}
proc HPI_GpioWriteStatus*(phSubSys: ptr hpi_hsubsys_t; hGpio: hpi_handle_t;
                         awAllBitData: array[4, uint16]): hpi_err_t {.cdecl,
    importc: "HPI_GpioWriteStatus", dynlib: libname.}
proc HPI_AsyncEventOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                        phAsync: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_AsyncEventOpen", dynlib: libname.}
proc HPI_AsyncEventClose*(phSubSys: ptr hpi_hsubsys_t; hAsync: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_AsyncEventClose", dynlib: libname.}
proc HPI_AsyncEventWait*(phSubSys: ptr hpi_hsubsys_t; hAsync: hpi_handle_t;
                        wMaximumEvents: uint16; pEvents: ptr hpi_async_event;
                        pwNumberReturned: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AsyncEventWait", dynlib: libname.}
proc HPI_AsyncEventGetCount*(phSubSys: ptr hpi_hsubsys_t; hAsync: hpi_handle_t;
                            pwCount: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AsyncEventGetCount", dynlib: libname.}
proc HPI_AsyncEventGet*(phSubSys: ptr hpi_hsubsys_t; hAsync: hpi_handle_t;
                       wMaximumEvents: uint16; pEvents: ptr hpi_async_event;
                       pwNumberReturned: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AsyncEventGet", dynlib: libname.}
proc HPI_WatchdogOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                      phWatchdog: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_WatchdogOpen", dynlib: libname.}
proc HPI_WatchdogSetTime*(phSubSys: ptr hpi_hsubsys_t; hWatchdog: hpi_handle_t;
                         dwTimeMillisec: uint32): hpi_err_t {.cdecl,
    importc: "HPI_WatchdogSetTime", dynlib: libname.}
proc HPI_WatchdogPing*(phSubSys: ptr hpi_hsubsys_t; hWatchdog: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_WatchdogPing", dynlib: libname.}
proc HPI_OutStreamOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                       wOutStreamIndex: uint16; phOutStream: ptr hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamOpen", dynlib: libname.}
proc HPI_OutStreamClose*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamClose", dynlib: libname.}
proc HPI_OutStreamGetInfoEx*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t;
                            pwState: ptr uint16; pdwBufferSize: ptr uint32;
                            pdwDataToPlay: ptr uint32;
                            pdwSamplesPlayed: ptr uint32;
                            pdwAuxiliaryDataToPlay: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamGetInfoEx", dynlib: libname.}
proc HPI_OutStreamWriteBuf*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t;
                           pbWriteBuf: ptr uint8; dwBytesToWrite: uint32;
                           pFormat: ptr hpi_format): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamWriteBuf", dynlib: libname.}
proc HPI_OutStreamStart*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamStart", dynlib: libname.}
proc HPI_OutStreamWaitStart*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamWaitStart", dynlib: libname.}
proc HPI_OutStreamStop*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamStop", dynlib: libname.}
proc HPI_OutStreamSinegen*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamSinegen", dynlib: libname.}
proc HPI_OutStreamReset*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamReset", dynlib: libname.}
proc HPI_OutStreamQueryFormat*(phSubSys: ptr hpi_hsubsys_t;
                              hOutStream: hpi_handle_t; pFormat: ptr hpi_format): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamQueryFormat", dynlib: libname.}
proc HPI_OutStreamSetFormat*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t;
                            pFormat: ptr hpi_format): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamSetFormat", dynlib: libname.}
proc HPI_OutStreamSetPunchInOut*(phSubSys: ptr hpi_hsubsys_t;
                                hOutStream: hpi_handle_t; dwPunchInSample: uint32;
                                dwPunchOutSample: uint32): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamSetPunchInOut", dynlib: libname.}
proc HPI_OutStreamSetVelocity*(phSubSys: ptr hpi_hsubsys_t;
                              hOutStream: hpi_handle_t; nVelocity: cshort): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamSetVelocity", dynlib: libname.}
proc HPI_OutStreamAncillaryReset*(phSubSys: ptr hpi_hsubsys_t;
                                 hOutStream: hpi_handle_t; wMode: uint16): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamAncillaryReset", dynlib: libname.}
proc HPI_OutStreamAncillaryGetInfo*(phSubSys: ptr hpi_hsubsys_t;
                                   hOutStream: hpi_handle_t;
                                   pdwFramesAvailable: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamAncillaryGetInfo", dynlib: libname.}
proc HPI_OutStreamAncillaryRead*(phSubSys: ptr hpi_hsubsys_t;
                                hOutStream: hpi_handle_t;
                                pAncFrameBuffer: ptr hpi_anc_frame;
                                dwAncFrameBufferSizeInBytes: uint32;
                                dwNumberOfAncillaryFramesToRead: uint32): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamAncillaryRead", dynlib: libname.}
proc HPI_OutStreamSetTimeScale*(phSubSys: ptr hpi_hsubsys_t;
                               hOutStream: hpi_handle_t; dwTimeScaleX10000: uint32): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamSetTimeScale", dynlib: libname.}
proc HPI_OutStreamHostBufferAllocate*(phSubSys: ptr hpi_hsubsys_t;
                                     hOutStream: hpi_handle_t;
                                     dwSizeInBytes: uint32): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamHostBufferAllocate", dynlib: libname.}
proc HPI_OutStreamHostBufferFree*(phSubSys: ptr hpi_hsubsys_t;
                                 hOutStream: hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamHostBufferFree", dynlib: libname.}
proc HPI_OutStreamGroupAdd*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t;
                           hStream: hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamGroupAdd", dynlib: libname.}
proc HPI_OutStreamGroupGetMap*(phSubSys: ptr hpi_hsubsys_t;
                              hOutStream: hpi_handle_t;
                              pdwOutStreamMap: ptr uint32;
                              pdwInStreamMap: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamGroupGetMap", dynlib: libname.}
proc HPI_OutStreamGroupReset*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_OutStreamGroupReset", dynlib: libname.}
proc HPI_OutStreamWait*(phSubSys: ptr hpi_hsubsys_t; hOutStream: hpi_handle_t;
                       dwThresholdBytesToPlay: uint32): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamWait", dynlib: libname.}
proc HPI_OutStreamGetTimestamp*(phSubSys: ptr hpi_hsubsys_t;
                               hOutStream: hpi_handle_t; pdwSample: ptr uint32;
                               pdwNanosPerSample: ptr uint32;
                               pqwTimestamp: ptr int64): hpi_err_t {.cdecl,
    importc: "HPI_OutStreamGetTimestamp", dynlib: libname.}
proc HPI_InStreamOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                      wInStreamIndex: uint16; phInStream: ptr hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamOpen", dynlib: libname.}
proc HPI_InStreamClose*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamClose", dynlib: libname.}
proc HPI_InStreamQueryFormat*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                             pFormat: ptr hpi_format): hpi_err_t {.cdecl,
    importc: "HPI_InStreamQueryFormat", dynlib: libname.}
proc HPI_InStreamSetFormat*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                           pFormat: ptr hpi_format): hpi_err_t {.cdecl,
    importc: "HPI_InStreamSetFormat", dynlib: libname.}
proc HPI_InStreamReadBuf*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                         pbReadBuf: ptr uint8; dwBytesToRead: uint32): hpi_err_t {.
    cdecl, importc: "HPI_InStreamReadBuf", dynlib: libname.}
proc HPI_InStreamStart*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamStart", dynlib: libname.}
proc HPI_InStreamWaitStart*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamWaitStart", dynlib: libname.}
proc HPI_InStreamStop*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamStop", dynlib: libname.}
proc HPI_InStreamReset*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamReset", dynlib: libname.}
proc HPI_InStreamGetInfoEx*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                           pwState: ptr uint16; pdwBufferSize: ptr uint32;
                           pdwDataRecorded: ptr uint32;
                           pdwSamplesRecorded: ptr uint32;
                           pdwAuxiliaryDataRecorded: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_InStreamGetInfoEx", dynlib: libname.}
proc HPI_InStreamAncillaryReset*(phSubSys: ptr hpi_hsubsys_t;
                                hInStream: hpi_handle_t; wBytesPerFrame: uint16;
                                wMode: uint16; wAlignment: uint16; wIdleBit: uint16): hpi_err_t {.
    cdecl, importc: "HPI_InStreamAncillaryReset", dynlib: libname.}
proc HPI_InStreamAncillaryGetInfo*(phSubSys: ptr hpi_hsubsys_t;
                                  hInStream: hpi_handle_t;
                                  pdwFrameSpace: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_InStreamAncillaryGetInfo", dynlib: libname.}
proc HPI_InStreamAncillaryWrite*(phSubSys: ptr hpi_hsubsys_t;
                                hInStream: hpi_handle_t;
                                pAncFrameBuffer: ptr hpi_anc_frame;
                                dwAncFrameBufferSizeInBytes: uint32;
                                dwNumberOfAncillaryFramesToWrite: uint32): hpi_err_t {.
    cdecl, importc: "HPI_InStreamAncillaryWrite", dynlib: libname.}
proc HPI_InStreamHostBufferAllocate*(phSubSys: ptr hpi_hsubsys_t;
                                    hInStream: hpi_handle_t; dwSizeInBytes: uint32): hpi_err_t {.
    cdecl, importc: "HPI_InStreamHostBufferAllocate", dynlib: libname.}
proc HPI_InStreamHostBufferFree*(phSubSys: ptr hpi_hsubsys_t;
                                hInStream: hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_InStreamHostBufferFree", dynlib: libname.}
proc HPI_InStreamGroupAdd*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                          hStream: hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_InStreamGroupAdd", dynlib: libname.}
proc HPI_InStreamGroupGetMap*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                             pdwOutStreamMap: ptr uint32;
                             pdwInStreamMap: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_InStreamGroupGetMap", dynlib: libname.}
proc HPI_InStreamGroupReset*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_InStreamGroupReset", dynlib: libname.}
proc HPI_InStreamWait*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                      dwThresholdBytesRecorded: uint32): hpi_err_t {.cdecl,
    importc: "HPI_InStreamWait", dynlib: libname.}
proc HPI_InStreamGetTimestamp*(phSubSys: ptr hpi_hsubsys_t; hInStream: hpi_handle_t;
                              pdwSample: ptr uint32; pdwNanosPerSample: ptr uint32;
                              pqwTimestamp: ptr int64): hpi_err_t {.cdecl,
    importc: "HPI_InStreamGetTimestamp", dynlib: libname.}
proc HPI_MixerOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                   phMixer: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_MixerOpen", dynlib: libname.}
proc HPI_MixerClose*(phSubSys: ptr hpi_hsubsys_t; hMixer: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_MixerClose", dynlib: libname.}
proc HPI_MixerGetControl*(phSubSys: ptr hpi_hsubsys_t; hMixer: hpi_handle_t;
                         wSrcNodeType: uint16; wSrcNodeTypeIndex: uint16;
                         wDstNodeType: uint16; wDstNodeTypeIndex: uint16;
                         wControlType: uint16; phControl: ptr hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_MixerGetControl", dynlib: libname.}
proc HPI_MixerGetControlByIndex*(phSubSys: ptr hpi_hsubsys_t; hMixer: hpi_handle_t;
                                wControlIndex: uint16; pwSrcNodeType: ptr uint16;
                                pwSrcNodeIndex: ptr uint16;
                                pwDstNodeType: ptr uint16;
                                pwDstNodeIndex: ptr uint16;
                                pwControlType: ptr uint16;
                                phControl: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_MixerGetControlByIndex", dynlib: libname.}
proc HPI_MixerStore*(phSubSys: ptr hpi_hsubsys_t; hMixer: hpi_handle_t;
                    Command: HPI_MIXER_STORE_COMMAND; wIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_MixerStore", dynlib: libname.}
proc HPI_MixerStoreStatus*(phSubSys: ptr hpi_hsubsys_t; hMixer: hpi_handle_t;
                          pwControlsToStore: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_MixerStoreStatus", dynlib: libname.}
proc HPI_VolumeSetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       anGain0_01dB: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_VolumeSetGain", dynlib: libname.}
proc HPI_VolumeGetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       anGain0_01dB_out: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_VolumeGetGain", dynlib: libname.}
proc HPI_VolumeSetMute*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       mute: uint32): hpi_err_t {.cdecl,
    importc: "HPI_VolumeSetMute", dynlib: libname.}
proc HPI_VolumeGetMute*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       mute: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_VolumeGetMute", dynlib: libname.}
proc HPI_VolumeQueryRange*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                          nMinGain_01dB: ptr cshort; nMaxGain_01dB: ptr cshort;
                          nStepGain_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_VolumeQueryRange", dynlib: libname.}
proc HPI_Volume_QueryChannels*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                              pChannels: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Volume_QueryChannels", dynlib: libname.}
proc HPI_VolumeAutoFade*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                        anStopGain0_01dB: array[2, cshort]; wDurationMs: uint32): hpi_err_t {.
    cdecl, importc: "HPI_VolumeAutoFade", dynlib: libname.}
proc HPI_VolumeAutoFadeProfile*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               anStopGain0_01dB: array[2, cshort];
                               dwDurationMs: uint32; dwProfile: uint16): hpi_err_t {.
    cdecl, importc: "HPI_VolumeAutoFadeProfile", dynlib: libname.}
proc HPI_Volume_QueryAutoFadeProfile*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t; i: uint32;
                                     wProfile: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Volume_QueryAutoFadeProfile", dynlib: libname.}
proc HPI_LevelQueryRange*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                         nMinGain_01dB: ptr cshort; nMaxGain_01dB: ptr cshort;
                         nStepGain_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_LevelQueryRange", dynlib: libname.}
proc HPI_LevelSetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      anGain0_01dB: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_LevelSetGain", dynlib: libname.}
proc HPI_LevelGetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      anGain0_01dB_out: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_LevelGetGain", dynlib: libname.}
proc HPI_Meter_QueryChannels*(phSubSys: ptr hpi_hsubsys_t; hMeter: hpi_handle_t;
                             pChannels: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Meter_QueryChannels", dynlib: libname.}
proc HPI_MeterGetPeak*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      anPeak0_01dB_out: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_MeterGetPeak", dynlib: libname.}
proc HPI_MeterGetRms*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                     anPeak0_01dB_out: array[2, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_MeterGetRms", dynlib: libname.}
proc HPI_MeterSetPeakBallistics*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; nAttack: uint16;
                                nDecay: uint16): hpi_err_t {.cdecl,
    importc: "HPI_MeterSetPeakBallistics", dynlib: libname.}
proc HPI_MeterSetRmsBallistics*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               nAttack: uint16; nDecay: uint16): hpi_err_t {.cdecl,
    importc: "HPI_MeterSetRmsBallistics", dynlib: libname.}
proc HPI_MeterGetPeakBallistics*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; nAttack: ptr uint16;
                                nDecay: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_MeterGetPeakBallistics", dynlib: libname.}
proc HPI_MeterGetRmsBallistics*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               nAttack: ptr uint16; nDecay: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_MeterGetRmsBallistics", dynlib: libname.}
proc HPI_ChannelMode_QueryMode*(phSubSys: ptr hpi_hsubsys_t; hMode: hpi_handle_t;
                               dwIndex: uint32; pwMode: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_ChannelMode_QueryMode", dynlib: libname.}
proc HPI_ChannelModeSet*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                        wMode: uint16): hpi_err_t {.cdecl,
    importc: "HPI_ChannelModeSet", dynlib: libname.}
proc HPI_ChannelModeGet*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                        wMode: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_ChannelModeGet", dynlib: libname.}
proc HPI_Tuner_QueryBand*(phSubSys: ptr hpi_hsubsys_t; hTuner: hpi_handle_t;
                         dwIndex: uint32; pwBand: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_QueryBand", dynlib: libname.}
proc HPI_Tuner_SetBand*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       wBand: uint16): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetBand", dynlib: libname.}
proc HPI_Tuner_GetBand*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       pwBand: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetBand", dynlib: libname.}
proc HPI_Tuner_QueryFrequency*(phSubSys: ptr hpi_hsubsys_t; hTuner: hpi_handle_t;
                              dwIndex: uint32; band: uint16; pdwFreq: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_QueryFrequency", dynlib: libname.}
proc HPI_Tuner_SetFrequency*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            wFreqInkHz: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetFrequency", dynlib: libname.}
proc HPI_Tuner_GetFrequency*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            pwFreqInkHz: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetFrequency", dynlib: libname.}
proc HPI_Tuner_QueryGain*(phSubSys: ptr hpi_hsubsys_t; hTuner: hpi_handle_t;
                         dwIndex: uint32; pwGain: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_QueryGain", dynlib: libname.}
proc HPI_Tuner_SetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       nGain: cshort): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetGain", dynlib: libname.}
proc HPI_Tuner_GetGain*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       pnGain: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetGain", dynlib: libname.}
proc HPI_Tuner_GetRFLevel*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                          pwLevel: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetRFLevel", dynlib: libname.}
proc HPI_Tuner_GetRawRFLevel*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             pwLevel: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetRawRFLevel", dynlib: libname.}
proc HPI_Tuner_GetStatus*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                         pwStatusMask: ptr uint16; pwStatus: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetStatus", dynlib: libname.}
proc HPI_Tuner_SetMode*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       nMode: uint32; nValue: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetMode", dynlib: libname.}
proc HPI_Tuner_GetMode*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       nMode: uint32; pnValue: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetMode", dynlib: libname.}
proc HPI_Tuner_GetRDS*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      pRdsData: cstring): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetRDS", dynlib: libname.}
proc HPI_Tuner_QueryDeemphasis*(phSubSys: ptr hpi_hsubsys_t; hTuner: hpi_handle_t;
                               dwIndex: uint32; band: uint16;
                               pdwDeemphasis: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_QueryDeemphasis", dynlib: libname.}
proc HPI_Tuner_SetDeemphasis*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             dwDeemphasis: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetDeemphasis", dynlib: libname.}
proc HPI_Tuner_GetDeemphasis*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             pdwDeemphasis: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetDeemphasis", dynlib: libname.}
proc HPI_Tuner_QueryProgram*(phSubSys: ptr hpi_hsubsys_t; hTuner: hpi_handle_t;
                            pbitmapProgram: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_QueryProgram", dynlib: libname.}
proc HPI_Tuner_SetProgram*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                          dwProgram: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetProgram", dynlib: libname.}
proc HPI_Tuner_GetProgram*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                          pdwProgram: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetProgram", dynlib: libname.}
proc HPI_Tuner_GetHdRadioDspVersion*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t;
                                    pszDspVersion: cstring; dwStringSize: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetHdRadioDspVersion", dynlib: libname.}
proc HPI_Tuner_GetHdRadioSdkVersion*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t;
                                    pszSdkVersion: cstring; dwStringSize: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetHdRadioSdkVersion", dynlib: libname.}
proc HPI_Tuner_GetFirmwareVersion*(phSubSys: ptr hpi_hsubsys_t;
                                  hControl: hpi_handle_t; pszFWVersion: cstring;
                                  dwStringSize: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetFirmwareVersion", dynlib: libname.}
proc HPI_Tuner_GetHdRadioSignalQuality*(phSubSys: ptr hpi_hsubsys_t;
                                       hControl: hpi_handle_t;
                                       pdwQuality: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetHdRadioSignalQuality", dynlib: libname.}
proc HPI_Tuner_GetHdRadioSignalBlend*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t; pdwBlend: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetHdRadioSignalBlend", dynlib: libname.}
proc HPI_Tuner_SetHdRadioSignalBlend*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t; dwBlend: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_SetHdRadioSignalBlend", dynlib: libname.}
proc HPI_Tuner_GetDabAudioServiceCount*(phSubSys: ptr hpi_hsubsys_t;
                                       hControl: hpi_handle_t;
                                       pdwIndex: ptr uint32; pdwCount: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetDabAudioServiceCount", dynlib: libname.}
proc HPI_Tuner_SetDabAudioService*(phSubSys: ptr hpi_hsubsys_t;
                                  hControl: hpi_handle_t; dwIndex: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_SetDabAudioService", dynlib: libname.}
proc HPI_Tuner_GetDabAudioServiceName*(phSubSys: ptr hpi_hsubsys_t;
                                      hControl: hpi_handle_t;
                                      pszAudioServiceName: cstring; nSize: uint32;
                                      nIndex: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetDabAudioServiceName", dynlib: libname.}
proc HPI_Tuner_GetDabMultiplexName*(phSubSys: ptr hpi_hsubsys_t;
                                   hControl: hpi_handle_t;
                                   pszMultiplexName: cstring; nSize: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetDabMultiplexName", dynlib: libname.}
proc HPI_Tuner_GetDabAudioInfo*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               pszAudioInfo: cstring; nSize: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetDabAudioInfo", dynlib: libname.}
proc HPI_Tuner_GetDabServiceInfo*(hControl: hpi_handle_t; nIndex: uint32;
                                 service_info: ptr hpi_dab_service_info): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetDabServiceInfo", dynlib: libname.}
proc HPI_Tuner_GetDabComponentInfo*(hControl: hpi_handle_t; service_id: uint32;
                                   component_id: uint16;
                                   component_info: ptr hpi_dab_component_info): hpi_err_t {.
    cdecl, importc: "HPI_Tuner_GetDabComponentInfo", dynlib: libname.}
proc HPI_Tuner_SetDabService*(hControl: hpi_handle_t; service_id: uint32;
                             component_id: uint16; stop: cint): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_SetDabService", dynlib: libname.}
proc HPI_Tuner_GetDabService*(hControl: hpi_handle_t; service_id: ptr uint32;
                             component_id: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetDabService", dynlib: libname.}
proc HPI_Tuner_GetDabDataPacket*(hControl: hpi_handle_t; buffer: cstring;
                                buf_len: csize; data_len: ptr csize;
                                next_poll_interval_ms: ptr cint): hpi_err_t {.cdecl,
    importc: "HPI_Tuner_GetDabDataPacket", dynlib: libname.}
proc HPI_PAD_GetChannelName*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            pszString: cstring; dwStringLength: uint32): hpi_err_t {.
    cdecl, importc: "HPI_PAD_GetChannelName", dynlib: libname.}
proc HPI_PAD_GetArtist*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                       pszString: cstring; dwStringLength: uint32): hpi_err_t {.
    cdecl, importc: "HPI_PAD_GetArtist", dynlib: libname.}
proc HPI_PAD_GetTitle*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      pszString: cstring; dwStringLength: uint32): hpi_err_t {.cdecl,
    importc: "HPI_PAD_GetTitle", dynlib: libname.}
proc HPI_PAD_GetComment*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                        pszString: cstring; dwStringLength: uint32): hpi_err_t {.
    cdecl, importc: "HPI_PAD_GetComment", dynlib: libname.}
proc HPI_PAD_GetProgramType*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            pdwPTY: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_PAD_GetProgramType", dynlib: libname.}
proc HPI_PAD_GetRdsPI*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                      pdwPI: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_PAD_GetRdsPI", dynlib: libname.}
proc HPI_PAD_GetProgramTypeString*(phSubSys: ptr hpi_hsubsys_t;
                                  hControl: hpi_handle_t; dwDataType: uint32;
                                  nPTY: uint32; pszString: cstring;
                                  dwStringLength: uint32): hpi_err_t {.cdecl,
    importc: "HPI_PAD_GetProgramTypeString", dynlib: libname.}
proc HPI_AESEBU_Receiver_QueryFormat*(phSubSys: ptr hpi_hsubsys_t;
                                     hAesRx: hpi_handle_t; dwIndex: uint32;
                                     pwFormat: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Receiver_QueryFormat", dynlib: libname.}
proc HPI_AESEBU_Receiver_SetFormat*(phSubSys: ptr hpi_hsubsys_t;
                                   hControl: hpi_handle_t; wSource: uint16): hpi_err_t {.
    cdecl, importc: "HPI_AESEBU_Receiver_SetFormat", dynlib: libname.}
proc HPI_AESEBU_Receiver_GetFormat*(phSubSys: ptr hpi_hsubsys_t;
                                   hControl: hpi_handle_t; pwSource: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_AESEBU_Receiver_GetFormat", dynlib: libname.}
proc HPI_AESEBU_Receiver_GetSampleRate*(phSubSys: ptr hpi_hsubsys_t;
                                       hControl: hpi_handle_t;
                                       pdwSampleRate: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_AESEBU_Receiver_GetSampleRate", dynlib: libname.}
proc HPI_AESEBU_Receiver_GetUserData*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t; wIndex: uint16;
                                     pwData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Receiver_GetUserData", dynlib: libname.}
proc HPI_AESEBU_Receiver_GetChannelStatus*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; wIndex: uint16; pwData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Receiver_GetChannelStatus", dynlib: libname.}
proc HPI_AESEBU_Receiver_GetErrorStatus*(phSubSys: ptr hpi_hsubsys_t;
                                        hControl: hpi_handle_t;
                                        pwErrorData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Receiver_GetErrorStatus", dynlib: libname.}
proc HPI_AESEBU_Transmitter_SetSampleRate*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; dwSampleRate: uint32): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_SetSampleRate", dynlib: libname.}
proc HPI_AESEBU_Transmitter_SetUserData*(phSubSys: ptr hpi_hsubsys_t;
                                        hControl: hpi_handle_t; wIndex: uint16;
                                        wData: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_SetUserData", dynlib: libname.}
proc HPI_AESEBU_Transmitter_SetChannelStatus*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; wIndex: uint16; wData: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_SetChannelStatus", dynlib: libname.}
proc HPI_AESEBU_Transmitter_GetChannelStatus*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; wIndex: uint16; pwData: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_GetChannelStatus", dynlib: libname.}
proc HPI_AESEBU_Transmitter_QueryFormat*(phSubSys: ptr hpi_hsubsys_t;
                                        hAesTx: hpi_handle_t; dwIndex: uint32;
                                        pwFormat: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_QueryFormat", dynlib: libname.}
proc HPI_AESEBU_Transmitter_SetFormat*(phSubSys: ptr hpi_hsubsys_t;
                                      hControl: hpi_handle_t;
                                      wOutputFormat: uint16): hpi_err_t {.cdecl,
    importc: "HPI_AESEBU_Transmitter_SetFormat", dynlib: libname.}
proc HPI_AESEBU_Transmitter_GetFormat*(phSubSys: ptr hpi_hsubsys_t;
                                      hControl: hpi_handle_t;
                                      pwOutputFormat: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_AESEBU_Transmitter_GetFormat", dynlib: libname.}
proc HPI_Multiplexer_SetSource*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               wSourceNodeType: uint16; wSourceNodeIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_Multiplexer_SetSource", dynlib: libname.}
proc HPI_Multiplexer_GetSource*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               wSourceNodeType: ptr uint16;
                               wSourceNodeIndex: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Multiplexer_GetSource", dynlib: libname.}
proc HPI_Multiplexer_QuerySource*(phSubSys: ptr hpi_hsubsys_t;
                                 hControl: hpi_handle_t; nIndex: uint16;
                                 wSourceNodeType: ptr uint16;
                                 wSourceNodeIndex: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Multiplexer_QuerySource", dynlib: libname.}
proc HPI_VoxSetThreshold*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                         anGain0_01dB: cshort): hpi_err_t {.cdecl,
    importc: "HPI_VoxSetThreshold", dynlib: libname.}
proc HPI_VoxGetThreshold*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                         anGain0_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_VoxGetThreshold", dynlib: libname.}
proc HPI_Bitstream_SetClockEdge*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; wEdgeType: uint16): hpi_err_t {.
    cdecl, importc: "HPI_Bitstream_SetClockEdge", dynlib: libname.}
proc HPI_Bitstream_SetDataPolarity*(phSubSys: ptr hpi_hsubsys_t;
                                   hControl: hpi_handle_t; wPolarity: uint16): hpi_err_t {.
    cdecl, importc: "HPI_Bitstream_SetDataPolarity", dynlib: libname.}
proc HPI_Bitstream_GetActivity*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               pwClkActivity: ptr uint16;
                               pwDataActivity: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_Bitstream_GetActivity", dynlib: libname.}
proc HPI_SampleClock_QuerySource*(phSubSys: ptr hpi_hsubsys_t; hClock: hpi_handle_t;
                                 dwIndex: uint32; pwSource: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_QuerySource", dynlib: libname.}
proc HPI_SampleClock_SetSource*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               wSource: uint16): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_SetSource", dynlib: libname.}
proc HPI_SampleClock_GetSource*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               pwSource: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_GetSource", dynlib: libname.}
proc HPI_SampleClock_QuerySourceIndex*(phSubSys: ptr hpi_hsubsys_t;
                                      hClock: hpi_handle_t; dwIndex: uint32;
                                      dwSource: uint32; pwSourceIndex: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_QuerySourceIndex", dynlib: libname.}
proc HPI_SampleClock_SetSourceIndex*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t; wSourceIndex: uint16): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_SetSourceIndex", dynlib: libname.}
proc HPI_SampleClock_GetSourceIndex*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t;
                                    pwSourceIndex: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_GetSourceIndex", dynlib: libname.}
proc HPI_SampleClock_GetSampleRate*(phSubSys: ptr hpi_hsubsys_t;
                                   hControl: hpi_handle_t;
                                   pdwSampleRate: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_GetSampleRate", dynlib: libname.}
proc HPI_SampleClock_QueryLocalRate*(phSubSys: ptr hpi_hsubsys_t;
                                    hClock: hpi_handle_t; dwIndex: uint32;
                                    pdwSource: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_QueryLocalRate", dynlib: libname.}
proc HPI_SampleClock_SetLocalRate*(phSubSys: ptr hpi_hsubsys_t;
                                  hControl: hpi_handle_t; dwSampleRateHz: uint32): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_SetLocalRate", dynlib: libname.}
proc HPI_SampleClock_SetLocalRateEx*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t;
                                    dwSampleRateHz: uint32;
                                    dwSampleRatePPB: uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_SetLocalRateEx", dynlib: libname.}
proc HPI_SampleClock_GetLocalRate*(phSubSys: ptr hpi_hsubsys_t;
                                  hControl: hpi_handle_t;
                                  pdwSampleRate: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_GetLocalRate", dynlib: libname.}
proc HPI_SampleClock_SetAuto*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             dwEnable: uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_SetAuto", dynlib: libname.}
proc HPI_SampleClock_GetAuto*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             pdwEnable: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SampleClock_GetAuto", dynlib: libname.}
proc HPI_SampleClock_SetLocalRateLock*(phSubSys: ptr hpi_hsubsys_t;
                                      hControl: hpi_handle_t; dwLock: uint32): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_SetLocalRateLock", dynlib: libname.}
proc HPI_SampleClock_GetLocalRateLock*(phSubSys: ptr hpi_hsubsys_t;
                                      hControl: hpi_handle_t; pdwLock: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_SampleClock_GetLocalRateLock", dynlib: libname.}
proc HPI_Microphone_SetPhantomPower*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t; wOnOff: uint16): hpi_err_t {.
    cdecl, importc: "HPI_Microphone_SetPhantomPower", dynlib: libname.}
proc HPI_Microphone_GetPhantomPower*(phSubSys: ptr hpi_hsubsys_t;
                                    hControl: hpi_handle_t; pwOnOff: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_Microphone_GetPhantomPower", dynlib: libname.}
proc HPI_ParametricEQ_GetInfo*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                              pwNumberOfBands: ptr uint16; pwEnabled: ptr uint16): hpi_err_t {.
    cdecl, importc: "HPI_ParametricEQ_GetInfo", dynlib: libname.}
proc HPI_ParametricEQ_SetState*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               wOnOff: uint16): hpi_err_t {.cdecl,
    importc: "HPI_ParametricEQ_SetState", dynlib: libname.}
proc HPI_ParametricEQ_SetBand*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                              wIndex: uint16; nType: uint16; dwFrequencyHz: uint32;
                              nQ100: cshort; nGain0_01dB: cshort): hpi_err_t {.cdecl,
    importc: "HPI_ParametricEQ_SetBand", dynlib: libname.}
proc HPI_ParametricEQ_GetBand*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                              wIndex: uint16; pnType: ptr uint16;
                              pdwFrequencyHz: ptr uint32; pnQ100: ptr cshort;
                              pnGain0_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_ParametricEQ_GetBand", dynlib: libname.}
proc HPI_ParametricEQ_GetCoeffs*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; wIndex: uint16;
                                coeffs: array[5, cshort]): hpi_err_t {.cdecl,
    importc: "HPI_ParametricEQ_GetCoeffs", dynlib: libname.}
proc HPI_Compander_SetEnable*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             dwOn: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_SetEnable", dynlib: libname.}
proc HPI_Compander_GetEnable*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                             pdwOn: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_GetEnable", dynlib: libname.}
proc HPI_Compander_SetMakeupGain*(phSubSys: ptr hpi_hsubsys_t;
                                 hControl: hpi_handle_t; nMakeupGain0_01dB: cshort): hpi_err_t {.
    cdecl, importc: "HPI_Compander_SetMakeupGain", dynlib: libname.}
proc HPI_Compander_GetMakeupGain*(phSubSys: ptr hpi_hsubsys_t;
                                 hControl: hpi_handle_t;
                                 pnMakeupGain0_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_Compander_GetMakeupGain", dynlib: libname.}
proc HPI_Compander_SetAttackTimeConstant*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; dwIndex: uint32; wAttack: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_SetAttackTimeConstant", dynlib: libname.}
proc HPI_Compander_GetAttackTimeConstant*(phSubSys: ptr hpi_hsubsys_t;
    hControl: hpi_handle_t; dwIndex: uint32; pwAttack: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_GetAttackTimeConstant", dynlib: libname.}
proc HPI_Compander_SetDecayTimeConstant*(phSubSys: ptr hpi_hsubsys_t;
                                        hControl: hpi_handle_t; dwIndex: uint32;
                                        wDecay: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_SetDecayTimeConstant", dynlib: libname.}
proc HPI_Compander_GetDecayTimeConstant*(phSubSys: ptr hpi_hsubsys_t;
                                        hControl: hpi_handle_t; dwIndex: uint32;
                                        pwDecay: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_GetDecayTimeConstant", dynlib: libname.}
proc HPI_Compander_SetThreshold*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; dwIndex: uint32;
                                nThreshold0_01dB: cshort): hpi_err_t {.cdecl,
    importc: "HPI_Compander_SetThreshold", dynlib: libname.}
proc HPI_Compander_GetThreshold*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; dwIndex: uint32;
                                pnThreshold0_01dB: ptr cshort): hpi_err_t {.cdecl,
    importc: "HPI_Compander_GetThreshold", dynlib: libname.}
proc HPI_Compander_SetRatio*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            dwIndex: uint32; wRatio100: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Compander_SetRatio", dynlib: libname.}
proc HPI_Compander_GetRatio*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                            dwIndex: uint32; pwRatio100: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_Compander_GetRatio", dynlib: libname.}
proc HPI_Cobranet_HmiWrite*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                           dwHmiAddress: uint32; dwByteCount: uint32;
                           pbData: ptr uint8): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_HmiWrite", dynlib: libname.}
proc HPI_Cobranet_HmiRead*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                          dwHmiAddress: uint32; dwMaxByteCount: uint32;
                          pdwByteCount: ptr uint32; pbData: ptr uint8): hpi_err_t {.
    cdecl, importc: "HPI_Cobranet_HmiRead", dynlib: libname.}
proc HPI_Cobranet_HmiGetStatus*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               pdwStatus: ptr uint32; pdwReadableSize: ptr uint32;
                               pdwWriteableSize: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_HmiGetStatus", dynlib: libname.}
proc HPI_Cobranet_GetIPaddress*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               pdwIPaddress: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_GetIPaddress", dynlib: libname.}
proc HPI_Cobranet_SetIPaddress*(phSubSys: ptr hpi_hsubsys_t; hControl: hpi_handle_t;
                               dwIPaddress: uint32): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_SetIPaddress", dynlib: libname.}
proc HPI_Cobranet_GetStaticIPaddress*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t;
                                     pdwIPaddress: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_GetStaticIPaddress", dynlib: libname.}
proc HPI_Cobranet_SetStaticIPaddress*(phSubSys: ptr hpi_hsubsys_t;
                                     hControl: hpi_handle_t; dwIPaddress: uint32): hpi_err_t {.
    cdecl, importc: "HPI_Cobranet_SetStaticIPaddress", dynlib: libname.}
proc HPI_Cobranet_GetMACaddress*(phSubSys: ptr hpi_hsubsys_t;
                                hControl: hpi_handle_t; pdwMAC_MSBs: ptr uint32;
                                pdwMAC_LSBs: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_Cobranet_GetMACaddress", dynlib: libname.}
proc HPI_ToneDetector_GetState*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                               state: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_GetState", dynlib: libname.}
proc HPI_ToneDetector_SetEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                enable: uint32): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_SetEnable", dynlib: libname.}
proc HPI_ToneDetector_GetEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                enable: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_GetEnable", dynlib: libname.}
proc HPI_ToneDetector_SetEventEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                     EventEnable: uint32): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_SetEventEnable", dynlib: libname.}
proc HPI_ToneDetector_GetEventEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                     EventEnable: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_GetEventEnable", dynlib: libname.}
proc HPI_ToneDetector_SetThreshold*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                   threshold: cint): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_SetThreshold", dynlib: libname.}
proc HPI_ToneDetector_GetThreshold*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                   threshold: ptr cint): hpi_err_t {.cdecl,
    importc: "HPI_ToneDetector_GetThreshold", dynlib: libname.}
proc HPI_ToneDetector_GetFrequency*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                   nIndex: uint32; dwFrequency: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_ToneDetector_GetFrequency", dynlib: libname.}
proc HPI_SilenceDetector_GetState*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                  state: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SilenceDetector_GetState", dynlib: libname.}
proc HPI_SilenceDetector_SetEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                   enable: uint32): hpi_err_t {.cdecl,
    importc: "HPI_SilenceDetector_SetEnable", dynlib: libname.}
proc HPI_SilenceDetector_GetEnable*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                   enable: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SilenceDetector_GetEnable", dynlib: libname.}
proc HPI_SilenceDetector_SetEventEnable*(phSubSys: ptr hpi_hsubsys_t;
                                        hC: hpi_handle_t; EventEnable: uint32): hpi_err_t {.
    cdecl, importc: "HPI_SilenceDetector_SetEventEnable", dynlib: libname.}
proc HPI_SilenceDetector_GetEventEnable*(phSubSys: ptr hpi_hsubsys_t;
                                        hC: hpi_handle_t; EventEnable: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_SilenceDetector_GetEventEnable", dynlib: libname.}
proc HPI_SilenceDetector_SetDelay*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                  delay: uint32): hpi_err_t {.cdecl,
    importc: "HPI_SilenceDetector_SetDelay", dynlib: libname.}
proc HPI_SilenceDetector_GetDelay*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                                  delay: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_SilenceDetector_GetDelay", dynlib: libname.}
proc HPI_SilenceDetector_SetThreshold*(phSubSys: ptr hpi_hsubsys_t;
                                      hC: hpi_handle_t; threshold: cint): hpi_err_t {.
    cdecl, importc: "HPI_SilenceDetector_SetThreshold", dynlib: libname.}
proc HPI_SilenceDetector_GetThreshold*(phSubSys: ptr hpi_hsubsys_t;
                                      hC: hpi_handle_t; threshold: ptr cint): hpi_err_t {.
    cdecl, importc: "HPI_SilenceDetector_GetThreshold", dynlib: libname.}
proc HPI_Universal_Info*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                        info: ptr ptr hpi_entity): hpi_err_t {.cdecl,
    importc: "HPI_Universal_Info", dynlib: libname.}
proc HPI_Universal_Get*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                       value: ptr ptr hpi_entity): hpi_err_t {.cdecl,
    importc: "HPI_Universal_Get", dynlib: libname.}
proc HPI_Universal_Set*(phSubSys: ptr hpi_hsubsys_t; hC: hpi_handle_t;
                       value: ptr hpi_entity): hpi_err_t {.cdecl,
    importc: "HPI_Universal_Set", dynlib: libname.}
proc HPI_ClockOpen*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                   phDspClock: ptr hpi_handle_t): hpi_err_t {.cdecl,
    importc: "HPI_ClockOpen", dynlib: libname.}
proc HPI_ClockSetTime*(phSubSys: ptr hpi_hsubsys_t; hClock: hpi_handle_t;
                      wHour: uint16; wMinute: uint16; wSecond: uint16;
                      wMilliSecond: uint16): hpi_err_t {.cdecl,
    importc: "HPI_ClockSetTime", dynlib: libname.}
proc HPI_ClockGetTime*(phSubSys: ptr hpi_hsubsys_t; hClock: hpi_handle_t;
                      pwHour: ptr uint16; pwMinute: ptr uint16; pwSecond: ptr uint16;
                      pwMilliSecond: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_ClockGetTime", dynlib: libname.}
proc HPI_ProfileOpenAll*(phSubSys: ptr hpi_hsubsys_t; wAdapterIndex: uint16;
                        wProfileIndex: uint16; phProfile: ptr hpi_handle_t;
                        pwMaxProfiles: ptr uint16): hpi_err_t {.cdecl,
    importc: "HPI_ProfileOpenAll", dynlib: libname.}
proc HPI_ProfileGet*(phSubSys: ptr hpi_hsubsys_t; hProfile: hpi_handle_t;
                    wBinIndex: uint16; pwProfileInterval: ptr uint16;
                    pdwTotalTickCount: ptr uint32; pdwCallCount: ptr uint32;
                    pdwMaxTickCount: ptr uint32; pdwTicksPerMillisecond: ptr uint32): hpi_err_t {.
    cdecl, importc: "HPI_ProfileGet", dynlib: libname.}
proc HPI_ProfileStartAll*(phSubSys: ptr hpi_hsubsys_t; hProfile: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_ProfileStartAll", dynlib: libname.}
proc HPI_ProfileStopAll*(phSubSys: ptr hpi_hsubsys_t; hProfile: hpi_handle_t): hpi_err_t {.
    cdecl, importc: "HPI_ProfileStopAll", dynlib: libname.}
proc HPI_ProfileGetName*(phSubSys: ptr hpi_hsubsys_t; hProfile: hpi_handle_t;
                        wIndex: uint16; szProfileName: cstring;
                        nProfileNameLength: uint16): hpi_err_t {.cdecl,
    importc: "HPI_ProfileGetName", dynlib: libname.}
proc HPI_ProfileGetUtilization*(phSubSys: ptr hpi_hsubsys_t; hProfile: hpi_handle_t;
                               pdwUtilization: ptr uint32): hpi_err_t {.cdecl,
    importc: "HPI_ProfileGetUtilization", dynlib: libname.}
proc HPI_GetErrorText*(wError: hpi_err_t; pszErrorText: cstring) {.cdecl,
    importc: "HPI_GetErrorText", dynlib: libname.}
proc HPI_FormatCreate*(pFormat: ptr hpi_format; wChannels: uint16; wFormat: uint16;
                      dwSampleRate: uint32; dwBitRate: uint32; dwAttributes: uint32): hpi_err_t {.
    cdecl, importc: "HPI_FormatCreate", dynlib: libname.}