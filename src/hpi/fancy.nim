import os
from raw import nil

type
    hpi_subsys_handle* = ptr raw.hpi_hsubsys
    adapter_modes* = raw.HPI_ADAPTER_MODES
    error_codes* = raw.HPI_ERROR_CODES
    adapter_mode_cmds* = raw.HPI_ADAPTER_MODE_CMDS

    Adapter* = object
        index: uint16

# Exceptions

type
    HPIError* = object of CatchableError
        errorCode*: raw.HPI_ERROR_CODES

proc raiseHPIError(hpi_error_num: raw.hpi_err_t) {.raises: [HPIError].} =
    if hpi_error_num != 0:
        var ex: ref HPIError
        new(ex)
        ex.errorCode = raw.HPI_ERROR_CODES(hpi_error_num)
        ex.msg = $ex.errorCode
        raise ex

# Subsys life cycle

var hpi_subsys_global: hpi_subsys_handle = nil
proc getHpiSubSys(): (hpi_subsys_handle, bool) =
    if hpi_subsys_global == nil:
        hpi_subsys_global = raw.HPI_SubSysCreate()
        result = (hpi_subsys_global, true)
    else:
        result = (hpi_subsys_global, false)

proc free*(hs: hpi_subsys_handle) =
    if hs != nil:
        raw.HPI_SubSysFree(hs)
        hpi_subsys_global = nil

template withSubSys*(body: untyped) =
    let (hs, created) = getHpiSubSys()
    try:
        body
    finally:
        if created:
            free(hs)

# Adapter life cycle

proc adapter_open*(adapter_index: uint): Adapter =
    let (hs, _) = getHpiSubSys()
    let index: uint16 = uint16(adapter_index)
    raiseHPIError raw.HPI_AdapterOpen(hs, index)
    result = Adapter(index: index)

proc close*(adapter: Adapter) =
    let (hs, _) = getHpiSubSys()
    raiseHPIError raw.HPI_AdapterClose(hs, adapter.index)

# Adapter functions

proc get_mode*(adapter: Adapter): adapter_modes =
    var current_adapter_mode: uint32 = 0
    let (hs, _) = getHpiSubSys()
    raiseHPIError raw.HPI_AdapterGetMode(hs, adapter.index, addr current_adapter_mode)
    result = adapter_modes(current_adapter_mode)

proc set_mode_ex*(adapter: Adapter, adapter_mode: adapter_modes, call_mode: adapter_mode_cmds) =
    var current_adapter_mode: uint32 = 0
    let (hs, _) = getHpiSubSys()
    raiseHPIError raw.HPI_AdapterSetModeEx(hs, adapter.index, uint32(adapter_mode), uint16(call_mode))
