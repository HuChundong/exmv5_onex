.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1703
    const/4 v0, 0x0

    .line 1704
    .local v0, isNeedActivityFinish:Z
    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v2, v2, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2200(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v2, v2, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2200(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "share_single_mode"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1705
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v1, v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/ImageProcessManager;->onShowSDCardFullDialog(Z)V

    .line 1706
    return-void

    :cond_0
    move v0, v1

    .line 1704
    goto :goto_0
.end method
