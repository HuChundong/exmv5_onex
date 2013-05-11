.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    .prologue
    .line 748
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][onBinderDied]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 13
    .parameter "serviceManager"

    .prologue
    const/16 v12, 0x4e84

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 623
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$202(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;

    .line 625
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 627
    :cond_0
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][onConnected]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 631
    :cond_1
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][onConnected]: no account info..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x274d

    invoke-virtual {v0, v1, v11, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 743
    :cond_2
    :goto_0
    return-void

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    if-nez v0, :cond_8

    .line 637
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v2

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v7, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    .line 643
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 644
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 652
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    if-nez v0, :cond_9

    .line 654
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$802(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 659
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setDataHandler(Landroid/os/Handler;)V

    .line 660
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setUIHandler(Landroid/os/Handler;)V

    .line 661
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v10, v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->enableRecentPhotoList()V

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v10, v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 666
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v10, v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->enablePhotoOfMe()V

    .line 670
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v10, v0, :cond_6

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 672
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v10, v0, :cond_6

    .line 674
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->enableRecentVideoList()V

    .line 684
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    if-nez v0, :cond_a

    .line 686
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1302(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 691
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 692
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    .line 701
    :goto_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    if-nez v0, :cond_b

    .line 703
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1402(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    .line 708
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    .line 709
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    .line 718
    :goto_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    if-nez v0, :cond_c

    .line 720
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1502(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 725
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    .line 726
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    .line 734
    :goto_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 736
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v12, v11, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 737
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v12, v11, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 739
    :cond_7
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v6

    .line 740
    .local v6, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    if-eqz v6, :cond_2

    .line 741
    invoke-interface {v6, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setSignInState(Z)V

    goto/16 :goto_0

    .line 648
    .end local v6           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 649
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 650
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 680
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 681
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setDataHandler(Landroid/os/Handler;)V

    .line 682
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setUIHandler(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 696
    :cond_a
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 697
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 698
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    goto/16 :goto_3

    .line 713
    :cond_b
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 714
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    .line 715
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 730
    :cond_c
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 731
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    .line 732
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    goto/16 :goto_5
.end method
