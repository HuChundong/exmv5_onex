.class public Lcom/htc/album/TabPluginDevice/location/LocationsFullscreenScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.source "LocationsFullscreenScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocationsFullscreenScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "LocationsThumbScene"

    return-object v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "LocationsFullscreenScene"

    return-object v0
.end method
