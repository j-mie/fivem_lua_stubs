
function UgcCancelQuery() end


--- @param PlayerHandle number
--- @param FilePath string
--- @param Name string
--- @param p3 boolean
--- @returns number
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end


function UgcClearOfflineQuery() end


function UgcClearQueryResults() end


function UgcClearCreateResult() end


--- @param p0 any
--- @param p1 any
--- @returns boolean
function UgcCopyContent(p0, p1) end


function UgcClearModifyResult() end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetCachedDescription(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function UgcGetBookmarkedContent(p0, p1, p2, p3) end


--- @param p0 any
--- @returns number
function UgcGetContentDescriptionHash(p0) end


--- @param p0 number
--- @returns number
function UgcGetContentCategory(p0) end


--- @returns any
function UgcGetContentHash() end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetContentFileVersion(p0, p1) end

--- 
--- Return the mission id of a job.
--- 
--- @param p0 number
--- @returns string
function UgcGetContentId(p0) end


--- @param p0 any
--- @returns boolean
function UgcGetContentHasPlayerBookmarked(p0) end


--- @param p0 any
--- @returns boolean
function UgcGetContentHasPlayerRecord(p0) end


--- @param p0 any
--- @returns boolean
function UgcGetContentIsPublished(p0) end


--- @param p0 any
--- @returns any
function UgcGetContentLanguage(p0) end


--- @returns any
function UgcGetContentNum() end


--- @param p0 any
--- @returns boolean
function UgcGetContentIsVerified(p0) end


--- @param p0 any
--- @returns any
function UgcGetContentName(p0) end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetContentRating(p0, p1) end

--- 
--- NativeDB Parameter 1: int p1
--- 
--- @param p0 number
--- @param p1 any
--- @returns string
function UgcGetContentPath(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetContentRatingCount(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetContentRatingPositiveCount(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @returns any
function UgcGetContentRatingNegativeCount(p0, p1) end


--- @returns any
function UgcGetContentTotal() end


--- @param p0 any
--- @param p1 any
function UgcGetContentUpdatedDate(p0, p1) end


--- @returns any
function UgcGetCreateContentId() end


--- @param p0 any
--- @returns any
function UgcGetContentUserName(p0) end


--- @returns any
function UgcGetCreateResult() end


--- @returns any
function UgcGetCreatorNum() end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function UgcGetFriendContent(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @returns boolean
function UgcGetCrewContent(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @returns boolean
function UgcGetGetByCategory(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function UgcGetMyContent(p0, p1, p2, p3) end


--- @returns any
function UgcGetModifyResult() end


--- @returns any
function UgcGetQueryResult() end

--- 
--- Return the root content id of a job.
--- 
--- @param p0 number
--- @returns string
function UgcGetRootContentId(p0) end


--- @returns any
function UgcHasCreateFinished() end


--- @returns any
function UgcHasModifyFinished() end


--- @returns any
function UgcHasGetFinished() end


--- @returns any
function UgcIsGetting() end


--- @param p0 any
--- @returns boolean
function UgcIsLanguageSupported(p0) end


--- @param p0 any
--- @returns boolean
function UgcPoliciesMakePrivate(p0) end


--- @param contentId string
--- @param baseContentId string
--- @param contentTypeName string
--- @returns boolean
function UgcPublish(contentId, baseContentId, contentTypeName) end


--- @param contentId string
--- @param latestVersion boolean
--- @param contentTypeName string
--- @returns boolean
function UgcQueryByContentId(contentId, latestVersion, contentTypeName) end


--- @param data any
--- @param count number
--- @param latestVersion boolean
--- @param contentTypeName string
--- @returns boolean
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
--- @returns boolean
function UgcQueryMyContent(p0, p1, p2, p3, p4, p5) end


--- @param offset number
--- @param count number
--- @param contentTypeName string
--- @param p3 number
--- @returns boolean
function UgcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end


--- @param p0 number
--- @returns number
function UgcRequestCachedDescription(p0) end


--- @param p0 number
--- @param p1 number
--- @returns number
function UgcRequestContentDataFromIndex(p0, p1) end


--- @param contentTypeName string
--- @param contentId string
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @returns number
function UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end


--- @param contentId string
--- @param bookmarked boolean
--- @param contentTypeName string
--- @returns boolean
function UgcSetBookmarked(contentId, bookmarked, contentTypeName) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @returns boolean
function UgcSetDeleted(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 boolean
--- @returns any
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
--- @returns number
function VehToNet(vehicle) end

