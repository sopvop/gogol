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
-- Module      : Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsSetCommonInstanceMetadata@.
module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
    (
    -- * REST Resource
      ProjectsSetCommonInstanceMetadataResource

    -- * Creating a Request
    , projectsSetCommonInstanceMetadata'
    , ProjectsSetCommonInstanceMetadata'

    -- * Request Lenses
    , pscimQuotaUser
    , pscimPrettyPrint
    , pscimProject
    , pscimUserIP
    , pscimKey
    , pscimMetadata
    , pscimOAuthToken
    , pscimFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsSetCommonInstanceMetadata@ which the
-- 'ProjectsSetCommonInstanceMetadata'' request conforms to.
type ProjectsSetCommonInstanceMetadataResource =
     Capture "project" Text :>
       "setCommonInstanceMetadata" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ 'projectsSetCommonInstanceMetadata'' smart constructor.
data ProjectsSetCommonInstanceMetadata' = ProjectsSetCommonInstanceMetadata'
    { _pscimQuotaUser   :: !(Maybe Text)
    , _pscimPrettyPrint :: !Bool
    , _pscimProject     :: !Text
    , _pscimUserIP      :: !(Maybe Text)
    , _pscimKey         :: !(Maybe Key)
    , _pscimMetadata    :: !Metadata
    , _pscimOAuthToken  :: !(Maybe OAuthToken)
    , _pscimFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetCommonInstanceMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscimQuotaUser'
--
-- * 'pscimPrettyPrint'
--
-- * 'pscimProject'
--
-- * 'pscimUserIP'
--
-- * 'pscimKey'
--
-- * 'pscimMetadata'
--
-- * 'pscimOAuthToken'
--
-- * 'pscimFields'
projectsSetCommonInstanceMetadata'
    :: Text -- ^ 'project'
    -> Metadata -- ^ 'Metadata'
    -> ProjectsSetCommonInstanceMetadata'
projectsSetCommonInstanceMetadata' pPscimProject_ pPscimMetadata_ =
    ProjectsSetCommonInstanceMetadata'
    { _pscimQuotaUser = Nothing
    , _pscimPrettyPrint = True
    , _pscimProject = pPscimProject_
    , _pscimUserIP = Nothing
    , _pscimKey = Nothing
    , _pscimMetadata = pPscimMetadata_
    , _pscimOAuthToken = Nothing
    , _pscimFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pscimQuotaUser :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimQuotaUser
  = lens _pscimQuotaUser
      (\ s a -> s{_pscimQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscimPrettyPrint :: Lens' ProjectsSetCommonInstanceMetadata' Bool
pscimPrettyPrint
  = lens _pscimPrettyPrint
      (\ s a -> s{_pscimPrettyPrint = a})

-- | Project ID for this request.
pscimProject :: Lens' ProjectsSetCommonInstanceMetadata' Text
pscimProject
  = lens _pscimProject (\ s a -> s{_pscimProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pscimUserIP :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimUserIP
  = lens _pscimUserIP (\ s a -> s{_pscimUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscimKey :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Key)
pscimKey = lens _pscimKey (\ s a -> s{_pscimKey = a})

-- | Multipart request metadata.
pscimMetadata :: Lens' ProjectsSetCommonInstanceMetadata' Metadata
pscimMetadata
  = lens _pscimMetadata
      (\ s a -> s{_pscimMetadata = a})

-- | OAuth 2.0 token for the current user.
pscimOAuthToken :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe OAuthToken)
pscimOAuthToken
  = lens _pscimOAuthToken
      (\ s a -> s{_pscimOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pscimFields :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimFields
  = lens _pscimFields (\ s a -> s{_pscimFields = a})

instance GoogleAuth
         ProjectsSetCommonInstanceMetadata' where
        authKey = pscimKey . _Just
        authToken = pscimOAuthToken . _Just

instance GoogleRequest
         ProjectsSetCommonInstanceMetadata' where
        type Rs ProjectsSetCommonInstanceMetadata' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          ProjectsSetCommonInstanceMetadata'{..}
          = go _pscimQuotaUser (Just _pscimPrettyPrint)
              _pscimProject
              _pscimUserIP
              _pscimKey
              _pscimOAuthToken
              _pscimFields
              (Just AltJSON)
              _pscimMetadata
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSetCommonInstanceMetadataResource)
                      r
                      u