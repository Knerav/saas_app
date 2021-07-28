module ApplicationHelper

  def tenant_name(tenant_id)
    Tenant.find(tenant_id).name
  end

  def s3_link(tenant_id, artifact_key)
    link_to artifact_key, "#{artifact_key}", class: "text-decoration-none", target: 'new'
  end
  
  def class_name_for_tenant_form(tenant)
    return "cc_form" if tenant.payment.blank?
    ""
  end
end
