.class Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IDownloadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2462
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "nType"
    .parameter "nErrorId"
    .parameter "bundle"

    .prologue
    .line 2468
    return-void
.end method

.method public onDownloadSuccess(ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .parameter "nType"
    .parameter "uri"
    .parameter "bundle"

    .prologue
    .line 2476
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUiThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2477
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;ILandroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2485
    :goto_0
    return-void

    .line 2479
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSDownloadSuccess(ILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2481
    :catch_0
    move-exception v0

    .line 2483
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onDownloadSuccess]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
