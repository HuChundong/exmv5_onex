.class public Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
.super Ljava/lang/Object;
.source "HTCCommentsHeader.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCacheItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

.field private mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

.field private mPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "HTCCommentsHeader"

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->LOG_TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    .line 18
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 20
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, object:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .end local v0           #object:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 39
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .local v0, object:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    goto :goto_0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public refreshCommentHeaderCache()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCacheItem:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method public setCommentHeader(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;)V
    .locals 0
    .parameter "commentHeader"

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 28
    :cond_0
    return-void
.end method

.method public setPersonIconURL(Ljava/lang/String;)V
    .locals 1
    .parameter "aPersonIconURL"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setOwnerAvatarURL(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setPersonName(Ljava/lang/String;)V
    .locals 1
    .parameter "aPersonName"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setOwnerName(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mPhoto:Landroid/graphics/Bitmap;

    .line 100
    return-void
.end method

.method public setPhotoDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "aPhotoDescription"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setPhotoComment(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setPhotoIconURL(Ljava/lang/String;)V
    .locals 1
    .parameter "aPhotoIconURL"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setPhotoURL(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 1
    .parameter "aPhotoName"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setPhotoName(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->mCommentHeader:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->setTime(J)V

    .line 61
    :cond_0
    return-void
.end method
