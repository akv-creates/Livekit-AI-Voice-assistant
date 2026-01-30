import re
from api import AssistantFnc


def test_generate_unique_id_format():
    fnc = AssistantFnc()
    res = fnc.generate_unique_id("test")
    # expect UUID v4 in the returned string
    m = re.search(r"[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", res)
    assert m is not None, "No UUID found in generate_unique_id output"
