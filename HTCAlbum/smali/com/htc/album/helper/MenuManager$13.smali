.class Lcom/htc/album/helper/MenuManager$13;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$13;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$13;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$13;->val$textView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3602
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 3603
    .local v3, positiveBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 3604
    .local v1, negativeBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$detailDlg:Lcom/htc/widget/HtcAlertDialog;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 3605
    .local v2, neutralBtn:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 3607
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 3609
    :cond_0
    if-eqz v3, :cond_1

    .line 3613
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 3615
    :cond_1
    if-eqz v1, :cond_2

    .line 3620
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 3623
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3624
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3625
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 3626
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 3628
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Lcom/htc/album/helper/MenuManager$13$1;

    invoke-direct {v6, p0}, Lcom/htc/album/helper/MenuManager$13$1;-><init>(Lcom/htc/album/helper/MenuManager$13;)V

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3670
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3672
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3673
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v8, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 3677
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method
