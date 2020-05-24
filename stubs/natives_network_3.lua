
function UgcCancelQuery() end


--- @param PlayerHandle number
--- @param FilePath string
--- @param Name string
--- @param p3 boolean
--- @return number
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end


function UgcClearOfflineQuery() end


function UgcClearQueryResults() end


function UgcClearCreateResult() end


--- @param p0 any
--- @param p1 any
--- @return boolean
function UgcCopyContent(p0, p1) end


function UgcClearModifyResult() end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetCachedDescription(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function UgcGetBookmarkedContent(p0, p1, p2, p3) end


--- @param p0 any
--- @return number
function UgcGetContentDescriptionHash(p0) end


--- @param p0 number
--- @return number
function UgcGetContentCategory(p0) end


--- @return any
function UgcGetContentHash() end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetContentFileVersion(p0, p1) end

--- 
--- Return the mission id of a job.
--- 
--- @param p0 number
--- @return string
function UgcGetContentId(p0) end


--- @param p0 any
--- @return boolean
function UgcGetContentHasPlayerBookmarked(p0) end


--- @param p0 any
--- @return boolean
function UgcGetContentHasPlayerRecord(p0) end


--- @param p0 any
--- @return boolean
function UgcGetContentIsPublished(p0) end


--- @param p0 any
--- @return any
function UgcGetContentLanguage(p0) end


--- @return any
function UgcGetContentNum() end


--- @param p0 any
--- @return boolean
function UgcGetContentIsVerified(p0) end


--- @param p0 any
--- @return any
function UgcGetContentName(p0) end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetContentRating(p0, p1) end

--- 
--- NativeDB Parameter 1: int p1
--- 
--- @param p0 number
--- @param p1 any
--- @return string
function UgcGetContentPath(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetContentRatingCount(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetContentRatingPositiveCount(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @return any
function UgcGetContentRatingNegativeCount(p0, p1) end


--- @return any
function UgcGetContentTotal() end


--- @param p0 any
--- @param p1 any
function UgcGetContentUpdatedDate(p0, p1) end


--- @return any
function UgcGetCreateContentId() end


--- @param p0 any
--- @return any
function UgcGetContentUserName(p0) end


--- @return any
function UgcGetCreateResult() end


--- @return any
function UgcGetCreatorNum() end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function UgcGetFriendContent(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @return boolean
function UgcGetCrewContent(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @return boolean
function UgcGetGetByCategory(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function UgcGetMyContent(p0, p1, p2, p3) end


--- @return any
function UgcGetModifyResult() end


--- @return any
function UgcGetQueryResult() end

--- 
--- Return the root content id of a job.
--- 
--- @param p0 number
--- @return string
function UgcGetRootContentId(p0) end


--- @return any
function UgcHasCreateFinished() end


--- @return any
function UgcHasModifyFinished() end


--- @return any
function UgcHasGetFinished() end


--- @return any
function UgcIsGetting() end


--- @param p0 any
--- @return boolean
function UgcIsLanguageSupported(p0) end


--- @param p0 any
--- @return boolean
function UgcPoliciesMakePrivate(p0) end


--- @param contentId string
--- @param baseContentId string
--- @param contentTypeName string
--- @return boolean
function UgcPublish(contentId, baseContentId, contentTypeName) end


--- @param contentId string
--- @param latestVersion boolean
--- @param contentTypeName string
--- @return boolean
function UgcQueryByContentId(contentId, latestVersion, contentTypeName) end


--- @param data any
--- @param count number
--- @param latestVersion boolean
--- @param contentTypeName string
--- @return boolean
function UgcQueryByContentIds(data, count, latestVersion, contentTypeName) end

--- 
--- Gets some kind of data related to missions like the online player created races n stuff  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @return boolean
function UgcQueryMyContent(p0, p1, p2, p3, p4, p5) end


--- @param offset number
--- @param count number
--- @param contentTypeName string
--- @param p3 number
--- @return boolean
function UgcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end


--- @param p0 number
--- @return number
function UgcRequestCachedDescription(p0) end


--- @param p0 number
--- @param p1 number
--- @return number
function UgcRequestContentDataFromIndex(p0, p1) end


--- @param contentTypeName string
--- @param contentId string
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return number
function UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end


--- @param contentId string
--- @param bookmarked boolean
--- @param contentTypeName string
--- @return boolean
function UgcSetBookmarked(contentId, bookmarked, contentTypeName) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @return boolean
function UgcSetDeleted(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 boolean
--- @return any
function UgcTextureDownloadRequest(p0, p1, p2, p3, p4, p5) end

--- 
--- NativeDB Added Parameter 2: BOOL p1
--- 
--- @param toggle boolean
function UsePlayerColourInsteadOfTeamColour(toggle) end

--- 
--- calls from vehicle to net.  
--- 
--- @param vehicle Vehicle
--- @return number
function VehToNet(vehicle) end

