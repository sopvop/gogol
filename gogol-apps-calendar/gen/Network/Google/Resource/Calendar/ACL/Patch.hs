{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Calendar.ACL.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLPatch@.
module Network.Google.Resource.Calendar.ACL.Patch
    (
    -- * REST Resource
      AclPatchResource

    -- * Creating a Request
    , aCLPatch'
    , ACLPatch'

    -- * Request Lenses
    , apQuotaUser
    , apCalendarId
    , apPrettyPrint
    , apUserIP
    , apRuleId
    , apKey
    , apACLRule
    , apOAuthToken
    , apFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLPatch@ which the
-- 'ACLPatch'' request conforms to.
type AclPatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           Capture "ruleId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ACLRule :> Patch '[JSON] ACLRule

-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ 'aCLPatch'' smart constructor.
data ACLPatch' = ACLPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apCalendarId  :: !Text
    , _apPrettyPrint :: !Bool
    , _apUserIP      :: !(Maybe Text)
    , _apRuleId      :: !Text
    , _apKey         :: !(Maybe Key)
    , _apACLRule     :: !ACLRule
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apCalendarId'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apRuleId'
--
-- * 'apKey'
--
-- * 'apACLRule'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
aCLPatch'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'ruleId'
    -> ACLRule -- ^ 'ACLRule'
    -> ACLPatch'
aCLPatch' pApCalendarId_ pApRuleId_ pApACLRule_ =
    ACLPatch'
    { _apQuotaUser = Nothing
    , _apCalendarId = pApCalendarId_
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apRuleId = pApRuleId_
    , _apKey = Nothing
    , _apACLRule = pApACLRule_
    , _apOAuthToken = Nothing
    , _apFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' ACLPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
apCalendarId :: Lens' ACLPatch' Text
apCalendarId
  = lens _apCalendarId (\ s a -> s{_apCalendarId = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' ACLPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIP :: Lens' ACLPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | ACL rule identifier.
apRuleId :: Lens' ACLPatch' Text
apRuleId = lens _apRuleId (\ s a -> s{_apRuleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' ACLPatch' (Maybe Key)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Multipart request metadata.
apACLRule :: Lens' ACLPatch' ACLRule
apACLRule
  = lens _apACLRule (\ s a -> s{_apACLRule = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' ACLPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' ACLPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth ACLPatch' where
        authKey = apKey . _Just
        authToken = apOAuthToken . _Just

instance GoogleRequest ACLPatch' where
        type Rs ACLPatch' = ACLRule
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLPatch'{..}
          = go _apQuotaUser _apCalendarId (Just _apPrettyPrint)
              _apUserIP
              _apRuleId
              _apKey
              _apOAuthToken
              _apFields
              (Just AltJSON)
              _apACLRule
          where go
                  = clientWithRoute (Proxy :: Proxy AclPatchResource) r
                      u