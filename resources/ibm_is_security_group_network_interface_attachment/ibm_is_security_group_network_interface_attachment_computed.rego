package ibmcloud.resources.computed.ibm_is_security_group_network_interface_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_network_interface_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_security_group_network_interface_attachment").resources[_]
}
subnet = ret {
    ret := {res.address: object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
floating_ips = ret {
    ret := {res.address: object.get(res.attributes, "floating_ips", null) |
        res := resources_map[_]
        true
     }
}
related_crn = ret {
    ret := {res.address: object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}
instance_network_interface = ret {
    ret := {res.address: object.get(res.attributes, "instance_network_interface", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
port_speed = ret {
    ret := {res.address: object.get(res.attributes, "port_speed", null) |
        res := resources_map[_]
        true
     }
}
security_groups = ret {
    ret := {res.address: object.get(res.attributes, "security_groups", null) |
        res := resources_map[_]
        true
     }
}
primary_ipv4_address = ret {
    ret := {res.address: object.get(res.attributes, "primary_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
secondary_address = ret {
    ret := {res.address: object.get(res.attributes, "secondary_address", null) |
        res := resources_map[_]
        true
     }
}

