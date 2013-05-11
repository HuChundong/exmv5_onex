.class public Lcom/htc/album/Customizable/CustAlbumTabOrder;
.super Ljava/lang/Object;
.source "CustAlbumTabOrder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustAlbumTabOrder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSocialPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 78
    const/4 v0, 0x1

    .line 81
    .local v0, bIsExist:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 84
    const-string v2, "CustAlbumTabOrder"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[CustAlbumTabOrder][checkSocialPackage] NameNotFoundException: "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultPluginList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, listTabItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginCtrl/TabPluginItem;>;"
    const/4 v0, 0x0

    .line 24
    .local v0, tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 25
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 29
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 33
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 37
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public static removeUnsupportedPlugins(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v0, 0x0

    .line 46
    .local v0, nIndex:I
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .line 48
    .restart local v1       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.facebook.katana"

    invoke-static {p0, v2}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->checkSocialPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 52
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 75
    return-void

    .line 56
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-static {p0, v2}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->checkSocialPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 60
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_4
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
