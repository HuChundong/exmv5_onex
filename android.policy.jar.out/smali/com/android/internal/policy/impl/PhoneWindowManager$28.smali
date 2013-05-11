.class Lcom/android/internal/policy/impl/PhoneWindowManager$28;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6688
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 6690
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleted:Z

    if-eqz v0, :cond_2

    .line 6691
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 6692
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 6694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x7d5

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    .line 6695
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000()I

    move-result v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit16 v8, v0, 0x3e8

    .line 6696
    .local v8, countDownStart:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "shutdown_hw_reset_notify_text"

    const-string v2, "string"

    const-string v3, "com.htc.framework"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 6698
    .local v7, hwResetText:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "shutdown_hw_reset_notify_text_singular"

    const-string v2, "string"

    const-string v3, "com.htc.framework"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 6700
    .local v6, hwResetText_singular:I
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 6701
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwResetText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hwResetText_singular = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6703
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28$1;

    int-to-long v2, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$28$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$28;JJII)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28$1;->start()Landroid/os/CountDownTimer;

    .line 6726
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 6727
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 6728
    const-string v0, "WindowManager"

    const-string v1, "Show hardware reset notification dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6729
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 6731
    .end local v6           #hwResetText_singular:I
    .end local v7           #hwResetText:I
    .end local v8           #countDownStart:I
    :cond_2
    return-void
.end method
