## workflow_pattern
# contract_workflow
INSERT INTO workflow_pattern (id, code, wf_pattern_contents, created_at, deleted) VALUES (10, 'contract_workflow', '{"wf_pattern_version": "2016-06-27", "wf_pattern_code": "contract_workflow","wf_pattern_name": {"Default": "Contract Workflow","ja": "\\u5951\\u7d04\\u30ef\\u30fc\\u30af\\u30d5\\u30ed\\u30fc"},"status_list": [{"status_code": "none","status_name": {"Default": "None","ja": "\\u306a\\u3057"},"next_status": [{"next_status_code": "pre-approval","grant_role": "T__DC1__ProjectMember"}]},{"status_code": "pre-approval","status_name": {"Default": "Pre-approval","ja": "\\u672a\\u627f\\u8a8d"},"next_status": [{"next_status_code": "final approval","grant_role": "C__Global__ProjectAdmin"},{"next_status_code": "rejected","grant_role": "C__Global__ProjectAdmin"},{"next_status_code": "canceled","grant_role": "T__DC1__ProjectMember"}]},{"status_code": "rejected","status_name": {"Default": "Rejected","ja": "\\u5426\\u8a8d"},"next_status": [{}]},{"status_code": "canceled","status_name": {"Default": "Canceled","ja": "\\u30ad\\u30e3\\u30f3\\u30bb\\u30eb"},"next_status": [{}]},{"status_code": "final approval","status_name": {"Default": "Final Approval","ja": "\\u6700\\u7d42\\u627f\\u8a8d"},"next_status": [{}]}]}', '2015/09/08', 0);

## ticket_template
# daily_registration
INSERT INTO ticket_template (id, ticket_type, template_contents, workflow_pattern_id, created_at, deleted) VALUES (15, "New Contract", '{"ticket_template_version": "2016-06-27","ticket_template_name": {"Default": "pay-for-use","ja": "\\u5f93\\u91cf\\u8ab2\\u91d1"},"application_kinds_name": {"Default": "VCPU, RAM, Volume Storage","ja": "VCPU, RAM, \\u30dc\\u30ea\\u30e5\\u30fc\\u30e0\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8"},"ticket_type": "New Contract","wf_pattern_code": "contract_workflow","first_status_code": "pre-approval","cancelling_template": {"id": "16"},"target_id": ["catalog0-1111-2222-3333-000000000008", "catalog0-1111-2222-3333-000000000007", "catalog0-1111-2222-3333-000000000006"],"target_key": ["vcpu", "ram", "volume_storage"],"price_notice": ["*Daily fee", "*Tax excluded"],"create":{"parameters": [{"key": "message","type": "string","multi_line": true,"label": {"default": "Message","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8"},"description": {"default": "Please input if there is a message.","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8\\u304c\\u3042\\u308b\\u5834\\u5408\\u306f\\u5165\\u529b\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002"},"constraints": {"length": {"max": 512,"min": 0}}}],"description": {"default": "You can apply for a pay-for-use contract to target the VCPU RAM volume storage.","ja": "VCPU RAM \\u30dc\\u30ea\\u30e5\\u30fc\\u30e0\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8\\u3092\\u5bfe\\u8c61\\u306b\\u5f93\\u91cf\\u8ab2\\u91d1\\u5951\\u7d04\\u3092\\u7533\\u8acb\\u3067\\u304d\\u307e\\u3059\\u3002"},"custom": [{"price_list": "right"}]},"update":{"parameters": [{"key": "message","type": "string","multi_line": true,"label": {"default": "Message","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8"},"constraints": {"length": {"max": 512,"min": 0}}}],"custom": [{"price_list": "right"}]},"action": {"broker_class": "aflo.tickets.broker.sample_set_pay_for_use.PayForUseHandler","broker": [{"status": "pre-approval","timing": "before","validation": "integrity_check_for_contract_approval","broker_method": ""},{"status": "pre-approval","timing": "after","broker_method": ""},{"status": "canceled","timing": "before","validation": "","broker_method": ""},{"status": "canceled","timing": "after","broker_method": ""},{"status": "rejected","timing": "before","validation": "","broker_method": ""},{"status": "rejected","timing": "after","broker_method": ""},{"status": "final approval","timing": "before","validation": "integrity_check_for_contract_approval","broker_method": ""},{"status": "final approval","timing": "after","broker_method": "register_new_contract"}]}}', 10, '2015/09/08', 0);

# daily_cancelling
INSERT INTO ticket_template (id, ticket_type, template_contents, workflow_pattern_id, created_at, deleted) VALUES (16, "Cancel Contract", '{"ticket_template_version": "2016-06-27","ticket_template_name": {"Default": "pay-for-use","ja": "\\u5f93\\u91cf\\u8ab2\\u91d1"},"application_kinds_name": {"Default": "VCPU, RAM, Volume Storage","ja": "VCPU, RAM, \\u30dc\\u30ea\\u30e5\\u30fc\\u30e0\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8"},"ticket_type": "Cancel Contract","wf_pattern_code": "contract_workflow","first_status_code": "pre-approval","target_id": ["catalog0-1111-2222-3333-000000000008", "catalog0-1111-2222-3333-000000000007", "catalog0-1111-2222-3333-000000000006"],"target_key": ["vcpu", "ram", "volume_storage"],"price_notice": ["*Daily fee", "*Tax excluded"],"create": {"parameters": [{"key": "message","type": "string","multi_line": true,"label": {"default": "Message","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8"},"description": {"default": "Please input if there is a message.","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8\\u304c\\u3042\\u308b\\u5834\\u5408\\u306f\\u5165\\u529b\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002"},"constraints": {"length": {"max": 512,"min": 0}}}],"description": {"default": "You can apply for a pay-for-use cancellation to target the VCPU RAM volume storage. If you want to cancel please delete the resources in use.","ja": "VCPU RAM \\u30DC\\u30EA\\u30E5\\u30FC\\u30E0\\u30B9\\u30C8\\u30EC\\u30FC\\u30B8\\u3092\\u5BFE\\u8C61\\u306B\\u5F93\\u91CF\\u8AB2\\u91D1\\u89E3\\u7D04\\u3092\\u7533\\u8ACB\\u3067\\u304D\\u307E\\u3059\\u3002\\u89E3\\u7D04\\u3059\\u308B\\u5834\\u5408\\u306F\\u4F7F\\u7528\\u4E2D\\u306E\\u30EA\\u30BD\\u30FC\\u30B9\\u3092\\u3059\\u3079\\u3066\\u524A\\u9664\\u3057\\u3066\\u304B\\u3089\\u7533\\u8ACB\\u3092\\u3057\\u3066\\u304F\\u3060\\u3055\\u3044\\u3002"},"custom": [{"price_list": "right"}] },"update": {"parameters": [{"key": "message","type": "string","multi_line": true,"label": {"default": "Message","ja": "\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8"},"constraints": {"length": {"max": 512,"min": 0}}}],"custom": [{"price_list": "right"}]},"action": {"broker_class": "aflo.tickets.broker.sample_set_pay_for_use.PayForUseHandler","broker": [{"status": "pre-approval","timing": "before","validation": "integrity_check_for_cancellation","broker_method": ""},{"status": "pre-approval","timing": "after","broker_method": ""},{"status": "canceled","timing": "before","validation": "","broker_method": ""},{"status": "canceled","timing": "after","broker_method": ""},{"status": "rejected","timing": "before","validation": "","broker_method": ""},{"status": "rejected","timing": "after","broker_method": ""},{"status": "final approval","timing": "before","validation": "integrity_check_for_cancellation","broker_method": ""},{"status": "final approval","timing": "after","broker_method": "register_cancel_contract"}]}}', 10, '2016/06/01', 0);