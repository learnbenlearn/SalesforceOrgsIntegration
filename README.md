## Branches

The `ExposingOrg` branch metadata should be pushed to the org that is acting as the API. The `ConsumingOrg` branch metadata should be pushed to the org that is making the callout to the other org.

## Setting Up the Connected App

1. Go to `Setup` > `Apps` > `App Manager` and click `New Connected App`.
    1. Provide a `Name`.
    2. Enter your email for `Contact Email`.
    3. Select the `Enable Oauth Settings` checkbox.
        1. Enter your org's domain in for the `Callback URL`.
        2. Move everything from `Available OAuth Scopes` to the `Selected OAuth Scopes`.
    4. Click `Save` and `Continue`. 
2. Copy the `Consumer Key` and `Consumer Secret` and assign them to the in the `CLIENT_ID` and `CLIENT_SECRET` variables in the `MindfulBearCalloutDemo` class in the `ConsumingOrg` branch.
