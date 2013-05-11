.class public Lcom/htc/album/TabPluginWatch/TabPlugin;
.super Lcom/htc/opensense/album/plugin/TabPluginBase;
.source "TabPlugin.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/plugin/TabPluginBase;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0a0114

    return v0
.end method

.method public getLoginButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginDescriptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoRes()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "WatchDataPlugin"

    return-object v0
.end method

.method public onCreateAlbumListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateCommentViewPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateFriendListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreatePhotoEditorPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreatePhotoFullListPlugin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.htc.album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePhotoThumbListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method
