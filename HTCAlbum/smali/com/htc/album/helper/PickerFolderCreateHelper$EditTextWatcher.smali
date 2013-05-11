.class Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTextWatcher"
.end annotation


# instance fields
.field mDialog:Lcom/htc/widget/HtcAlertDialog;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "view"
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 910
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    .line 914
    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 915
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    .line 916
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 921
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mView:Landroid/view/View;

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 922
    .local v2, text:Lcom/htc/widget/HtcAutoCompleteTextView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 925
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 929
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->isStringAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 936
    :goto_0
    return-void

    .line 932
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 935
    :cond_1
    const-string v3, "PickerFolderCreateHelper"

    const-string v4, "button null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 939
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 943
    return-void
.end method
