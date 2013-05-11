.class Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;
.super Landroid/os/HandlerThread;
.source "MfFragmentMainLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    .line 125
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->setPriority(I)V

    .line 128
    :try_start_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;-><init>()V

    .line 129
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 131
    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .line 132
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->quit()Z

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load Scense(s) at beggining:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
