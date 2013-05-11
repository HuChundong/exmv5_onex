.class public Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;
.super Landroid/app/DialogFragment;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_LOADING"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    .line 131
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->info:Landroid/os/Bundle;

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    .line 136
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->info:Landroid/os/Bundle;

    .line 137
    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->info:Landroid/os/Bundle;

    .line 138
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 154
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreateDialog][onCancel] dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    invoke-static {v1}, Lcom/htc/album/picker/PickerMultiItemScene;->access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    invoke-static {v1}, Lcom/htc/album/picker/PickerMultiItemScene;->access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->stopLoading()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 162
    :cond_1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 163
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 146
    :cond_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, progDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 176
    return-void
.end method
