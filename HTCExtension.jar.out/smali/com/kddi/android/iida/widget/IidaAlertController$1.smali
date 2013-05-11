.class Lcom/kddi/android/iida/widget/IidaAlertController$1;
.super Ljava/lang/Object;
.source "IidaAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/iida/widget/IidaAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/iida/widget/IidaAlertController;


# direct methods
.method constructor <init>(Lcom/kddi/android/iida/widget/IidaAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$000(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$100(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$100(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 175
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$700(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$600(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$200(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$300(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$300(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$400(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$500(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$1;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$500(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
