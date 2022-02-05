## Branches

The `ExposingOrg` branch metadata should be pushed to the org that is acting as the API. The `ConsumingOrg` branch metadata should be pushed to the org that is making the callout to the other org.

## Setting Up the Connected App

1. Go to `Setup` > `Apps` > `App Manager` and click `New Connected App`.
  a. Provide a `Name`.
  b. Enter your email for `Contact Email`.
  c. Select the `Enable Oauth Settings` checkbox.
    i. Enter your org's domain in for the `Callback URL`.
    ii. Move everything from `Available OAuth Scopes` to the `Selected OAuth Scopes`.
  d. Click `Save` and `Continue`.
2. Copy the `Consumer Key` and `Consumer Secret` and assign them to the in the `CLIENT_ID` and `CLIENT_SECRET` variables in the `MindfulBearCalloutDemo` class in the `ConsumingOrg` branch.
