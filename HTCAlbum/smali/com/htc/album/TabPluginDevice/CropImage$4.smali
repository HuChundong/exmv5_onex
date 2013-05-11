.class Lcom/htc/album/TabPluginDevice/CropImage$4;
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
    .line 2002
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$4;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2004
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, action:Ljava/lang/String;
    const-string v1, "INTENT_DISK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2008
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$4;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$4;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3600(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$4;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2013
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$4;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    .line 2014
    const-string v1, "Finish"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crop: onReceive - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    :cond_1
    return-void

    .line 2009
    :catch_0
    move-exception v1

    goto :goto_0
.end method
