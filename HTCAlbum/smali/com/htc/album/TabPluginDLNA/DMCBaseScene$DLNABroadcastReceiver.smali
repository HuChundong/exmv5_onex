.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMCBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNABroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1595
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.DLNABroadcastReceiver;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.DLNABroadcastReceiver;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1602
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.DLNABroadcastReceiver;"
    const-string v3, "controllerName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, controller:Ljava/lang/String;
    const-string v3, "appName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, app:Ljava/lang/String;
    const-string v3, "cookie"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1606
    .local v2, cookie:I
    const-string v3, "DLNABaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNABroadcastReceiver][onReceive] controller = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getCookie()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1610
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->gotoThumbnailSense()V

    .line 1614
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$1000(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->setDLNAPlayingState(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1616
    :catch_0
    move-exception v3

    goto :goto_0
.end method
