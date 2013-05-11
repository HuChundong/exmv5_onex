.class public Lcom/htc/opensense2/album/cache/CacheFolderCreator;
.super Ljava/lang/Object;
.source "CacheFolderCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateExternalFolder(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, bRes:Z
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, sExternal:Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 80
    .end local v1           #sExternal:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static CreatePhoneFolder(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 13
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    const/4 v2, 0x0

    .line 25
    :goto_0
    return v2

    .line 18
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, sPhone:Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .end local v1           #sPhone:Ljava/lang/String;
    :cond_1
    move v2, v0

    .line 25
    goto :goto_0
.end method

.method public static CreateRemoveableFolder(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    const/4 v3, 0x1

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, bRes:Z
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 65
    :goto_0
    return v2

    .line 58
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, sRemovable:Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .end local v1           #sRemovable:Ljava/lang/String;
    :cond_1
    move v2, v0

    .line 65
    goto :goto_0
.end method

.method public static CreateUsbFolder(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    const/4 v3, 0x1

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 46
    :goto_0
    return v2

    .line 39
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, sUsb:Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .end local v1           #sUsb:Ljava/lang/String;
    :cond_1
    move v2, v0

    .line 46
    goto :goto_0
.end method
