.class Lcom/htc/album/TabPluginDevice/CropImage$3;
.super Landroid/content/BroadcastReceiver;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$3;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1981
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, action:Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1988
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$3;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$3;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3500(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$3;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1994
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$3;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    .line 1995
    const-string v2, "Finish"

    const-string v3, "crop: onReceive"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_1
    return-void

    .line 1989
    :catch_0
    move-exception v1

    .line 1990
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
