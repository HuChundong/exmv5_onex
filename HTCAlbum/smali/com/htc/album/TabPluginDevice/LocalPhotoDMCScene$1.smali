.class Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;
.super Ljava/lang/Object;
.source "LocalPhotoDMCScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRequestItemBurstState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

.field final synthetic val$iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$nSelected:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

    iput p2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->val$nSelected:I

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->val$iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 199
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "image_index"

    iget v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->val$nSelected:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->val$iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v0

    .line 203
    .local v0, bIsBurst:Z
    const-string v3, "is_burst_image"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;

    const v4, 0x220180

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onPostMessage(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0           #bIsBurst:Z
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LocalPhotoDMCScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalPhotoDMCScene][onRequestItemBurstState]: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
