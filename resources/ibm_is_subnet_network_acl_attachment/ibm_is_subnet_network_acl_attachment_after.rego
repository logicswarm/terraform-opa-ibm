package ibmcloud.resources.after.ibm_is_subnet_network_acl_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_network_acl_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_subnet_network_acl_attachment").resources[_]
}
subnet = ret {
    ret := {res.address: object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
network_acl = ret {
    ret := {res.address: object.get(res.attributes, "network_acl", null) |
        res := resources_map[_]
        true
     }
}

