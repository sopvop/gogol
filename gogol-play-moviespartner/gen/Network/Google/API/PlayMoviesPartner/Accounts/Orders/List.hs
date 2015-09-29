{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlayMoviesPartner.Accounts.Orders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List Orders owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.orders.list@.
module Network.Google.API.PlayMoviesPartner.Accounts.Orders.List
    (
    -- * REST Resource
      AccountsOrdersListAPI

    -- * Creating a Request
    , accountsOrdersList'
    , AccountsOrdersList'

    -- * Request Lenses
    , aolStatus
    , aolPphNames
    , aolXgafv
    , aolStudioNames
    , aolQuotaUser
    , aolPrettyPrint
    , aolUploadProtocol
    , aolPp
    , aolAccessToken
    , aolUploadType
    , aolCustomId
    , aolAccountId
    , aolBearerToken
    , aolKey
    , aolName
    , aolPageToken
    , aolOauthToken
    , aolPageSize
    , aolFields
    , aolCallback
    , aolAlt
    ) where

import           Network.Google.Play.Movies.Partner.Types
import           Network.Google.Prelude

-- | A resource alias for playmoviespartner.accounts.orders.list which the
-- 'AccountsOrdersList'' request conforms to.
type AccountsOrdersListAPI =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "orders" :>
             QueryParam "status" Text :>
               QueryParam "pphNames" Text :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "studioNames" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "customId" Text :>
                                   QueryParam "bearer_token" Text :>
                                     QueryParam "key" Text :>
                                       QueryParam "name" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "pageSize" Int32 :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" Text :>
                                                     Get '[JSON]
                                                       ListOrdersResponse

-- | List Orders owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsOrdersList'' smart constructor.
data AccountsOrdersList' = AccountsOrdersList'
    { _aolStatus         :: !(Maybe Text)
    , _aolPphNames       :: !(Maybe Text)
    , _aolXgafv          :: !(Maybe Text)
    , _aolStudioNames    :: !(Maybe Text)
    , _aolQuotaUser      :: !(Maybe Text)
    , _aolPrettyPrint    :: !Bool
    , _aolUploadProtocol :: !(Maybe Text)
    , _aolPp             :: !Bool
    , _aolAccessToken    :: !(Maybe Text)
    , _aolUploadType     :: !(Maybe Text)
    , _aolCustomId       :: !(Maybe Text)
    , _aolAccountId      :: !Text
    , _aolBearerToken    :: !(Maybe Text)
    , _aolKey            :: !(Maybe Text)
    , _aolName           :: !(Maybe Text)
    , _aolPageToken      :: !(Maybe Text)
    , _aolOauthToken     :: !(Maybe Text)
    , _aolPageSize       :: !(Maybe Int32)
    , _aolFields         :: !(Maybe Text)
    , _aolCallback       :: !(Maybe Text)
    , _aolAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsOrdersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aolStatus'
--
-- * 'aolPphNames'
--
-- * 'aolXgafv'
--
-- * 'aolStudioNames'
--
-- * 'aolQuotaUser'
--
-- * 'aolPrettyPrint'
--
-- * 'aolUploadProtocol'
--
-- * 'aolPp'
--
-- * 'aolAccessToken'
--
-- * 'aolUploadType'
--
-- * 'aolCustomId'
--
-- * 'aolAccountId'
--
-- * 'aolBearerToken'
--
-- * 'aolKey'
--
-- * 'aolName'
--
-- * 'aolPageToken'
--
-- * 'aolOauthToken'
--
-- * 'aolPageSize'
--
-- * 'aolFields'
--
-- * 'aolCallback'
--
-- * 'aolAlt'
accountsOrdersList'
    :: Text -- ^ 'accountId'
    -> AccountsOrdersList'
accountsOrdersList' pAolAccountId_ =
    AccountsOrdersList'
    { _aolStatus = Nothing
    , _aolPphNames = Nothing
    , _aolXgafv = Nothing
    , _aolStudioNames = Nothing
    , _aolQuotaUser = Nothing
    , _aolPrettyPrint = True
    , _aolUploadProtocol = Nothing
    , _aolPp = True
    , _aolAccessToken = Nothing
    , _aolUploadType = Nothing
    , _aolCustomId = Nothing
    , _aolAccountId = pAolAccountId_
    , _aolBearerToken = Nothing
    , _aolKey = Nothing
    , _aolName = Nothing
    , _aolPageToken = Nothing
    , _aolOauthToken = Nothing
    , _aolPageSize = Nothing
    , _aolFields = Nothing
    , _aolCallback = Nothing
    , _aolAlt = "json"
    }

-- | Filter Orders that match one of the given status.
aolStatus :: Lens' AccountsOrdersList' (Maybe Text)
aolStatus
  = lens _aolStatus (\ s a -> s{_aolStatus = a})

-- | See _List methods rules_ for info about this field.
aolPphNames :: Lens' AccountsOrdersList' (Maybe Text)
aolPphNames
  = lens _aolPphNames (\ s a -> s{_aolPphNames = a})

-- | V1 error format.
aolXgafv :: Lens' AccountsOrdersList' (Maybe Text)
aolXgafv = lens _aolXgafv (\ s a -> s{_aolXgafv = a})

-- | See _List methods rules_ for info about this field.
aolStudioNames :: Lens' AccountsOrdersList' (Maybe Text)
aolStudioNames
  = lens _aolStudioNames
      (\ s a -> s{_aolStudioNames = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aolQuotaUser :: Lens' AccountsOrdersList' (Maybe Text)
aolQuotaUser
  = lens _aolQuotaUser (\ s a -> s{_aolQuotaUser = a})

-- | Returns response with indentations and line breaks.
aolPrettyPrint :: Lens' AccountsOrdersList' Bool
aolPrettyPrint
  = lens _aolPrettyPrint
      (\ s a -> s{_aolPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aolUploadProtocol :: Lens' AccountsOrdersList' (Maybe Text)
aolUploadProtocol
  = lens _aolUploadProtocol
      (\ s a -> s{_aolUploadProtocol = a})

-- | Pretty-print response.
aolPp :: Lens' AccountsOrdersList' Bool
aolPp = lens _aolPp (\ s a -> s{_aolPp = a})

-- | OAuth access token.
aolAccessToken :: Lens' AccountsOrdersList' (Maybe Text)
aolAccessToken
  = lens _aolAccessToken
      (\ s a -> s{_aolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aolUploadType :: Lens' AccountsOrdersList' (Maybe Text)
aolUploadType
  = lens _aolUploadType
      (\ s a -> s{_aolUploadType = a})

-- | Filter Orders that match a case-insensitive, partner-specific custom id.
aolCustomId :: Lens' AccountsOrdersList' (Maybe Text)
aolCustomId
  = lens _aolCustomId (\ s a -> s{_aolCustomId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aolAccountId :: Lens' AccountsOrdersList' Text
aolAccountId
  = lens _aolAccountId (\ s a -> s{_aolAccountId = a})

-- | OAuth bearer token.
aolBearerToken :: Lens' AccountsOrdersList' (Maybe Text)
aolBearerToken
  = lens _aolBearerToken
      (\ s a -> s{_aolBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aolKey :: Lens' AccountsOrdersList' (Maybe Text)
aolKey = lens _aolKey (\ s a -> s{_aolKey = a})

-- | Filter Orders that match a title name (case-insensitive, sub-string
-- match).
aolName :: Lens' AccountsOrdersList' (Maybe Text)
aolName = lens _aolName (\ s a -> s{_aolName = a})

-- | See _List methods rules_ for info about this field.
aolPageToken :: Lens' AccountsOrdersList' (Maybe Text)
aolPageToken
  = lens _aolPageToken (\ s a -> s{_aolPageToken = a})

-- | OAuth 2.0 token for the current user.
aolOauthToken :: Lens' AccountsOrdersList' (Maybe Text)
aolOauthToken
  = lens _aolOauthToken
      (\ s a -> s{_aolOauthToken = a})

-- | See _List methods rules_ for info about this field.
aolPageSize :: Lens' AccountsOrdersList' (Maybe Int32)
aolPageSize
  = lens _aolPageSize (\ s a -> s{_aolPageSize = a})

-- | Selector specifying which fields to include in a partial response.
aolFields :: Lens' AccountsOrdersList' (Maybe Text)
aolFields
  = lens _aolFields (\ s a -> s{_aolFields = a})

-- | JSONP
aolCallback :: Lens' AccountsOrdersList' (Maybe Text)
aolCallback
  = lens _aolCallback (\ s a -> s{_aolCallback = a})

-- | Data format for response.
aolAlt :: Lens' AccountsOrdersList' Text
aolAlt = lens _aolAlt (\ s a -> s{_aolAlt = a})

instance GoogleRequest AccountsOrdersList' where
        type Rs AccountsOrdersList' = ListOrdersResponse
        request
          = requestWithRoute defReq playMoviesPartnerURL
        requestWithRoute r u AccountsOrdersList'{..}
          = go _aolStatus _aolPphNames _aolXgafv
              _aolStudioNames
              _aolQuotaUser
              (Just _aolPrettyPrint)
              _aolUploadProtocol
              (Just _aolPp)
              _aolAccessToken
              _aolUploadType
              _aolCustomId
              _aolAccountId
              _aolBearerToken
              _aolKey
              _aolName
              _aolPageToken
              _aolOauthToken
              _aolPageSize
              _aolFields
              _aolCallback
              (Just _aolAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsOrdersListAPI)
                      r
                      u