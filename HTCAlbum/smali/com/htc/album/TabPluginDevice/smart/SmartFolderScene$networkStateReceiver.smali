.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartFolderScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "networkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 633
    if-nez p1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$400(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 638
    invoke-static {p1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    .line 639
    .local v0, bIsNetworkConnection:Z
    if-ne v3, v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$402(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z

    .line 642
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #calls: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V
    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$500(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)V

    .line 643
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #calls: Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->unregisterNetworkStateReceiver(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$600(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Landroid/content/Context;)V

    goto :goto_0
.end method
