.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;
.super Landroid/os/AsyncTask;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncOpenSensePluginInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 1
    .parameter
    .parameter "plugin"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 568
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 569
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    .line 575
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_2

    .line 577
    const-string v3, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][AsyncOpenSensePluginInit]: doInBackground: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v4, 0x2724

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 584
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v3, v3, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v3, :cond_1

    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, bundle:Landroid/os/Bundle;
    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    .line 588
    .local v2, gridItemWidth:I
    move v1, v2

    .line 589
    .local v1, gridItemHeight:I
    const-string v3, "thumbnail_item_width"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    const-string v3, "thumbnail_item_height"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->setDataBundle(Landroid/os/Bundle;)V

    .line 593
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #gridItemHeight:I
    .end local v2           #gridItemWidth:I
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onInit()V

    .line 594
    const-string v3, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][AsyncOpenSensePluginInit]: doInBackground: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 563
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V

    .line 609
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$002(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 563
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
