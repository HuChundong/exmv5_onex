.class Lcom/android/internal/telephony/gsm/GSMPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 3396
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3398
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 3399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3400
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.internal.telephony.icc_30days_expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3402
    const-string v1, "GSM"

    const-string v2, "SBM SIM 30Days Expired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccCard;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->setIccCardExpired(Z)V

    .line 3414
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3407
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3408
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mIccExpiredFromRadio:Z
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3409
    const-string v1, "GSM"

    const-string v2, "User changes times, recalculate the expired info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->calcuateIccExpiredInformation()V

    goto :goto_0
.end method
