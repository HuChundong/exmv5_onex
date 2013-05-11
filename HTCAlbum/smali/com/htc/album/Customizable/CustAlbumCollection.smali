.class public Lcom/htc/album/Customizable/CustAlbumCollection;
.super Ljava/lang/Object;
.source "CustAlbumCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    }
.end annotation


# static fields
.field private static final KEY_ALBUM_COLLECTION:Ljava/lang/String; = "KEY_ALBUM_COLLECTION"

.field private static final KEY_CARMODE_START_OPENING_ALBUM_COLLECTION:Ljava/lang/String; = "KEY_CARMODE_START_OPENING_ALBUM_COLLECTION"

.field private static final LOG_TAG:Ljava/lang/String; = "CustAlbumCollection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAlbumCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    .locals 6
    .parameter "context"
    .parameter "PreferenceKey"

    .prologue
    .line 61
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableEvents()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    sget-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    .line 77
    :goto_0
    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->UNKNOWN:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    .line 65
    .local v0, collection:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 70
    .local v2, prefs:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-virtual {v3}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->ordinal()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, nIndex:I
    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-virtual {v3}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->ordinal()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 72
    sget-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    .line 76
    :goto_1
    const-string v3, "CustAlbumCollection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][CustAlbumCollection][getDefaultAlbumCollection]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    goto :goto_1
.end method

.method public static getCarModeAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "KEY_CARMODE_START_OPENING_ALBUM_COLLECTION"

    invoke-static {p0, v0}, Lcom/htc/album/Customizable/CustAlbumCollection;->getAlbumCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerFolderResourceId(Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static getCustomerSourceType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"
    .parameter "szFilePath"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, nSourceType:I
    return v0
.end method

.method public static getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const-string v0, "KEY_ALBUM_COLLECTION"

    invoke-static {p0, v0}, Lcom/htc/album/Customizable/CustAlbumCollection;->getAlbumCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForCollectionKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "KEY_ALBUM_COLLECTION"

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-virtual {v3}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, nIndex:I
    sget-object v2, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-virtual {v2}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 100
    const-string v2, "Albums"

    .line 104
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Events"

    goto :goto_0
.end method

.method public static isCustomerSmartFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public static setAlbumCollection(Landroid/content/Context;Ljava/lang/String;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V
    .locals 5
    .parameter "context"
    .parameter "PreferenceKey"
    .parameter "collection"

    .prologue
    .line 82
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableEvents()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->ordinal()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    const-string v2, "CustAlbumCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][CustAlbumCollection][setDefaultAlbumCollection]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCarModeAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V
    .locals 1
    .parameter "context"
    .parameter "collection"

    .prologue
    .line 55
    const-string v0, "KEY_CARMODE_START_OPENING_ALBUM_COLLECTION"

    invoke-static {p0, v0, p1}, Lcom/htc/album/Customizable/CustAlbumCollection;->setAlbumCollection(Landroid/content/Context;Ljava/lang/String;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 56
    return-void
.end method

.method public static setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V
    .locals 1
    .parameter "context"
    .parameter "collection"

    .prologue
    .line 45
    const-string v0, "KEY_ALBUM_COLLECTION"

    invoke-static {p0, v0, p1}, Lcom/htc/album/Customizable/CustAlbumCollection;->setAlbumCollection(Landroid/content/Context;Ljava/lang/String;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 46
    return-void
.end method

.method public static setTextColor_PhotoCount(Landroid/widget/TextView;)V
    .locals 0
    .parameter "txtView"

    .prologue
    .line 25
    return-void
.end method
