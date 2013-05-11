.class public Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;
.super Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;
.source "AvatarDecoder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvatarDecoder"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mIsNotifyUpdate:Z

.field private mNotifyHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mAdapter:Landroid/widget/BaseAdapter;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mIsNotifyUpdate:Z

    .line 16
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected doInBackground(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 9
    .parameter "params"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 57
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsNotifyUpdate:Z

    .line 58
    return-object p1

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 51
    const/4 v0, 0x0

    iput v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsNotifyUpdate:Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->doInBackground(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    return-object v0
.end method

.method public isNotifyUpdate()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mIsNotifyUpdate:Z

    return v0
.end method

.method protected onCancelled(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 65
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->onCancelled(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    return-void
.end method

.method protected onPostExecute(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0x4e8d

    .line 78
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-boolean v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsNotifyUpdate:Z

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsNotifyUpdate:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mIsNotifyUpdate:Z

    .line 87
    :cond_2
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->onPostExecute(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    return-void
.end method

.method protected onPreExecute(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 26
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->onPreExecute(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    return-void
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"
    .parameter "source"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-super/range {p0 .. p7}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDecodeManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public resetNotifyUpdate()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mIsNotifyUpdate:Z

    .line 35
    return-void
.end method

.method public setNotifyHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AvatarDecoder;->mNotifyHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method
