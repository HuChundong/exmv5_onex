.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

.field final synthetic val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v5, 0x0

    .line 904
    if-eqz p2, :cond_2

    .line 906
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 907
    .local v2, positiveBtn:Landroid/widget/Button;
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 913
    .local v1, negativeBtn:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 918
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getPadding1()Landroid/view/View;

    move-result-object v0

    .line 919
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 922
    .end local v0           #divider:Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    .line 927
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 934
    :cond_1
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 935
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 951
    .end local v1           #negativeBtn:Landroid/widget/Button;
    .end local v2           #positiveBtn:Landroid/widget/Button;
    :cond_2
    return-void
.end method
