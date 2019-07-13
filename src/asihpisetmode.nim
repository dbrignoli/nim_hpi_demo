
import strformat
from hpi/fancy as hpi import set_mode_ex

let hpi_get_mode = hpi.get_mode

proc adapter_open_check(adapter_index: uint16): hpi.Adapter =
    try:
        hpi.adapter_open(adapter_index)
    except hpi.HPIError:
        quit &"Adapter index {adapter_index} not found."

proc list_modes(adapter_index: uint16) =
    let a = adapter_open_check(adapter_index)
    hpi.on_block_exit_do hpi.close(a):
        echo "Supported modes:"
        for mode in hpi.adapter_modes:
            try:
                a.set_mode_ex(mode, hpi.adapter_mode_cmds.HPI_ADAPTER_MODE_QUERY)
            except hpi.HPIError as e:
                if e.errorCode != hpi.error_codes.HPI_ERROR_BAD_ADAPTER_MODE:
                    raise
                continue
            let n = ord(mode)
            echo &"\t{n:02}: {mode}"

proc get_mode(adapter_index: uint16): hpi.adapter_modes =
    let a = adapter_open_check(adapter_index)
    hpi.on_block_exit_do hpi.close(a):
        try:
            result = a.hpi_get_mode()
            let n = ord(result)
            echo &"Current mode: {n} -> {result}."
        except hpi.HPIError as e:
            quit &"Adapter index {adapter_index} does not support multiple modes."

proc set_mode(adapter_index: uint16, adapter_mode: uint32): int =
    let a = adapter_open_check(adapter_index)
    let current_mode = get_mode(adapter_index)
    hpi.on_block_exit_do hpi.close(a):
        let target_mode = hpi.adapter_modes(adapter_mode)
        try:
            a.set_mode_ex(target_mode, hpi.adapter_mode_cmds.HPI_ADAPTER_MODE_SET)
        except hpi.HPIError as e:
            if e.errorCode != hpi.error_codes.HPI_ERROR_BAD_ADAPTER_MODE:
                raise
            quit &"Failed to set adapter mode to {target_mode}."
        if current_mode != target_mode:
            echo &"Mode changed to {target_mode}, driver reload required to activate."
        else:
            echo &"Adapter mode {current_mode} did not change."

when isMainModule:
    import cligen
    hpi.withSubSys:
        dispatchMulti([get_mode, cmdName="get"],
                      [set_mode, cmdName="set"],
                      [list_modes, cmdName="list"])
