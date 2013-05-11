.class Lcom/android/internal/policy/impl/PhoneWindow$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 4184
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4187
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4190
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.NEVER_SHOW_MENU"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4191
    const-string v1, "neverShow"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4192
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4195
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 4196
    return-void
.end method
