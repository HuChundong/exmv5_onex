.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->finished()V
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
    .line 1915
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    #getter for: Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->access$2600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    #getter for: Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->access$2600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00f1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1922
    :cond_0
    return-void
.end method
