.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    invoke-virtual {v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->cancelAllHeavyTasks()V

    .line 707
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;->OnEndDlgCallBack()V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDlgEndCallBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;

    iget-object v2, v2, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
