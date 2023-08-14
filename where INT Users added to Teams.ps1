OfficeActivity
| where TimeGenerated > ago(1d)
| where Operation =~ "MemberAdded"
| extend DisplayName_ = tostring(Members[0].DisplayName)
| extend Role_ = tostring(Members[0].Role)
| extend UPN_ = tostring(Members[0].UPN)
| where parse_json(Members)[0].Role == 2
| project TimeGenerated, Operation, OfficeWorkload, TeamName, TeamGuid, DisplayName_, Role_, UPN_, UserType