# KQL-for-M365-Compliance
KQL for M365 Compliance


How to search for events

Office 365 DLP has three types of events that are ingested into Log Analytics workspace and are available for search.

DlpRuleMatch - This indicates a rule was matched. These events exist in both Exchange and SharePoint Online and OneDrive for Business. For Exchange, it includes false positives and overrides information. For SharePoint Online and OneDrive for Business, false positives and overrides generate separate events.

DlpRuleUndo - These only exist in SharePoint Online and OneDrive for Business. They indicate a previously applied policy action has been "undone" – either because of a false-positive/override designation by the user or because the document is no longer subject to policy, due to policy change or change in the document content.

DlpInfo - These only exist in SharePoint Online and OneDrive for Business and indicate a false positive designation, but no action was "undone."**
