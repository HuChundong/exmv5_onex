.class final Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;
.super Ljava/lang/Thread;
.source "ActivityMainDropList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "threadReqMediaList"
.end annotation


# instance fields
.field private mListPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 1
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->mListPlugins:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 4

    .prologue
    .line 664
    :try_start_0
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][threadReqMediaList]: doInBackground... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->mListPlugins:Ljava/util/List;

    if-nez v1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->mListPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 670
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][threadReqMediaList]: no plugins..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][threadReqMediaList]: doInBackground: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;
    invoke-static {v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$500(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 675
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;
    invoke-static {v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$500(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->mListPlugins:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->setPreorderedPluginList(Ljava/util/List;)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #calls: Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCustomizePluginList()V
    invoke-static {v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$600(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 686
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][threadReqMediaList]: onPostExecute... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$700(Lcom/htc/album/AlbumMain/ActivityMainDropList;Z)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->doInBackground()V

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    new-instance v1, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList$1;

    invoke-direct {v1, p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList$1;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method
