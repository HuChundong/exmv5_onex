.class Lcom/htc/opensense2/album/cache/InkCacheManager$1;
.super Landroid/os/Handler;
.source "InkCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/cache/InkCacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$1;->this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 57
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[handleMessage] CACHE_FILE_LOAD_COMPLETED"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 63
    .local v1, task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$1;->this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;

    #calls: Lcom/htc/opensense2/album/cache/InkCacheManager;->saveToPool(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    invoke-static {v2, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$100(Lcom/htc/opensense2/album/cache/InkCacheManager;Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    .line 67
    .end local v1           #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :pswitch_1
    invoke-static {}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[handleMessage] CACHE_FILE_LOAD_FAILED"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 69
    .restart local v1       #task:Lcom/htc/opensense2/album/cache/InkCacheTask;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCacheManager$1;->this$0:Lcom/htc/opensense2/album/cache/InkCacheManager;

    #getter for: Lcom/htc/opensense2/album/cache/InkCacheManager;->mListener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    invoke-static {v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->access$200(Lcom/htc/opensense2/album/cache/InkCacheManager;)Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;

    move-result-object v0

    .line 70
    .local v0, listener:Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;->onInkCacheReady(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
