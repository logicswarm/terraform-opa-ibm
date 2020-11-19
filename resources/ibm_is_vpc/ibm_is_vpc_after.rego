package ibmcloud.resources.after.ibm_is_vpc
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_vpc"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpc").resources[_]
}
address_prefix_management = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix_management", null) |
        res := resources_map[_]
        true
     }
}
default_network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_network_acl", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
classic_access = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "classic_access", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
