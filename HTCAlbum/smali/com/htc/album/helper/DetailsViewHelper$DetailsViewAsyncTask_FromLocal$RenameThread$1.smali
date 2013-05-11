.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$1;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$1;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$1;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-static {v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->access$600(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->reloadData()V

    .line 1483
    return-void
.end method
