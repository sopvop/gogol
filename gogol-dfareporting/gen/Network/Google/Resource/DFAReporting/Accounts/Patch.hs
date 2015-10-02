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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsPatch@.
module Network.Google.Resource.DFAReporting.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , ap1QuotaUser
    , ap1PrettyPrint
    , ap1UserIP
    , ap1ProfileId
    , ap1Account
    , ap1Key
    , ap1Id
    , ap1OAuthToken
    , ap1Fields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsPatch@ which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _ap1QuotaUser   :: !(Maybe Text)
    , _ap1PrettyPrint :: !Bool
    , _ap1UserIP      :: !(Maybe Text)
    , _ap1ProfileId   :: !Int64
    , _ap1Account     :: !Account
    , _ap1Key         :: !(Maybe Key)
    , _ap1Id          :: !Int64
    , _ap1OAuthToken  :: !(Maybe OAuthToken)
    , _ap1Fields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ap1QuotaUser'
--
-- * 'ap1PrettyPrint'
--
-- * 'ap1UserIP'
--
-- * 'ap1ProfileId'
--
-- * 'ap1Account'
--
-- * 'ap1Key'
--
-- * 'ap1Id'
--
-- * 'ap1OAuthToken'
--
-- * 'ap1Fields'
accountsPatch'
    :: Int64 -- ^ 'profileId'
    -> Account -- ^ 'Account'
    -> Int64 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pAp1ProfileId_ pAp1Account_ pAp1Id_ =
    AccountsPatch'
    { _ap1QuotaUser = Nothing
    , _ap1PrettyPrint = True
    , _ap1UserIP = Nothing
    , _ap1ProfileId = pAp1ProfileId_
    , _ap1Account = pAp1Account_
    , _ap1Key = Nothing
    , _ap1Id = pAp1Id_
    , _ap1OAuthToken = Nothing
    , _ap1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ap1QuotaUser :: Lens' AccountsPatch' (Maybe Text)
ap1QuotaUser
  = lens _ap1QuotaUser (\ s a -> s{_ap1QuotaUser = a})

-- | Returns response with indentations and line breaks.
ap1PrettyPrint :: Lens' AccountsPatch' Bool
ap1PrettyPrint
  = lens _ap1PrettyPrint
      (\ s a -> s{_ap1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ap1UserIP :: Lens' AccountsPatch' (Maybe Text)
ap1UserIP
  = lens _ap1UserIP (\ s a -> s{_ap1UserIP = a})

-- | User profile ID associated with this request.
ap1ProfileId :: Lens' AccountsPatch' Int64
ap1ProfileId
  = lens _ap1ProfileId (\ s a -> s{_ap1ProfileId = a})

-- | Multipart request metadata.
ap1Account :: Lens' AccountsPatch' Account
ap1Account
  = lens _ap1Account (\ s a -> s{_ap1Account = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ap1Key :: Lens' AccountsPatch' (Maybe Key)
ap1Key = lens _ap1Key (\ s a -> s{_ap1Key = a})

-- | Account ID.
ap1Id :: Lens' AccountsPatch' Int64
ap1Id = lens _ap1Id (\ s a -> s{_ap1Id = a})

-- | OAuth 2.0 token for the current user.
ap1OAuthToken :: Lens' AccountsPatch' (Maybe OAuthToken)
ap1OAuthToken
  = lens _ap1OAuthToken
      (\ s a -> s{_ap1OAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ap1Fields :: Lens' AccountsPatch' (Maybe Text)
ap1Fields
  = lens _ap1Fields (\ s a -> s{_ap1Fields = a})

instance GoogleAuth AccountsPatch' where
        authKey = ap1Key . _Just
        authToken = ap1OAuthToken . _Just

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsPatch'{..}
          = go _ap1QuotaUser (Just _ap1PrettyPrint) _ap1UserIP
              _ap1ProfileId
              _ap1Key
              (Just _ap1Id)
              _ap1OAuthToken
              _ap1Fields
              (Just AltJSON)
              _ap1Account
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPatchResource)
                      r
                      u