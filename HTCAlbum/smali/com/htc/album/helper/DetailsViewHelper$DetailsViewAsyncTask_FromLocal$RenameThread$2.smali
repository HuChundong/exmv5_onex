.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;
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

.field final synthetic val$showMsg:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    iput p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->val$showMsg:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->access$700(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->access$700(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1530
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->access$800(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->val$showMsg:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1531
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1532
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    #getter for: Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-static {v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->access$600(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 1533
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->onPostExecute()V

    .line 1534
    return-void
.end method
