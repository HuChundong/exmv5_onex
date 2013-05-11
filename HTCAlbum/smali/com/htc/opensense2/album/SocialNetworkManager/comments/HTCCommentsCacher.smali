.class public Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
.super Ljava/lang/Object;
.source "HTCCommentsCacher.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCacheItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstUpdating:Z

.field private mIsUpdating:Z

.field private mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mPhotoID:Ljava/lang/String;

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field private mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "obj1"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "HTCCommentsCacher"

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mPhotoID:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsFirstUpdating:Z

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 47
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .end local p2
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 48
    return-void
.end method


# virtual methods
.method public UnInitialize()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public clearAllCache()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 115
    return-void
.end method

.method public clearCommentCache()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    return-void
.end method

.method public clearUserCache()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 120
    return-void
.end method

.method public getCommentSize()I
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, nSize:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, nCount:I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 71
    const/4 v0, 0x1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, object:Ljava/lang/Object;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 101
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 94
    .restart local v0       #object:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUser(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 2
    .parameter "szUserID"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 221
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "nPos"

    .prologue
    .line 230
    const/4 v0, 0x1

    .line 232
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :cond_0
    return v0
.end method

.method public isFirstRequest()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsFirstUpdating:Z

    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return v0
.end method

.method public refreshCommentList()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearCommentCache()V

    .line 160
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedComments()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 162
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 163
    .local v1, iCommentSize:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCommentsCacher][refreshCommentList]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-lez v1, :cond_0

    .line 169
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 170
    .restart local v3       #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 171
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v2, 0x1

    .local v2, nIndex:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 175
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 176
    .restart local v3       #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 177
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2           #nIndex:I
    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .end local v3           #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    .line 183
    .restart local v3       #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 184
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    const/4 v0, 0x1

    .line 188
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 189
    return v0
.end method

.method public requestCommentList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Z
    .locals 2
    .parameter "photo"
    .parameter "bIsForceUpdate"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCommentList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Z

    .line 152
    :cond_0
    return v0
.end method

.method public requestCommentList(Z)Z
    .locals 2
    .parameter "bIsForceUpdate"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCommentList(Lcom/htc/opensense/social/MediumOp;Z)Z

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public setCommentLoader()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 196
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 199
    return-void
.end method

.method public setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V
    .locals 0
    .parameter "mediumOp"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 52
    return-void
.end method

.method public setFirstRequest(Z)V
    .locals 0
    .parameter "bIsFirstTime"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsFirstUpdating:Z

    .line 208
    return-void
.end method

.method public setUser(Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 1
    .parameter "szUserID"
    .parameter "aPerson"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method
