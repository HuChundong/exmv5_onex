.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public DualonReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, action:Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_0

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dual received broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    const-string v17, "android.intent.action.TIME_TICK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "android.intent.action.TIME_SET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 548
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12d

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    :cond_2
    :goto_0
    return-void

    .line 549
    :cond_3
    const-string v17, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 550
    const-string v17, "networkState"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 551
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 552
    const/16 v17, 0x1

    const-string v18, "phone_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    const-string v18, "networkState"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    .line 555
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_4

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mSubServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    .line 559
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_5

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mSubServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  mSubTelephonyPlmn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x128

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 563
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    const-string v18, "networkState"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 564
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_7

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v17

    if-nez v17, :cond_8

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 568
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_8

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  mTelephonyPlmn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12f

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 573
    :cond_9
    const/16 v17, 0x5

    const-string v18, "phone_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    const-string v18, "networkState"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    .line 576
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_a

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mSubServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    .line 580
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_b

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mSubServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  mSubTelephonyPlmn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x128

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 584
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    const-string v18, "networkState"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 585
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_d

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v17

    if-nez v17, :cond_e

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 589
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_e

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mServiceStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  mTelephonyPlmn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12f

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 595
    :cond_f
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_10

    const-string v17, "KeyguardUpdateMonitor"

    const-string v18, "intent doesn\'t have Extra(Telephony.Intents.EXTRA_NETWORK_STATE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getServiceStatusFrom(Landroid/content/Intent;)I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I

    move-result v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v18

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12f

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 601
    :cond_11
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 602
    const-string v17, "status"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 603
    .local v16, status:I
    const-string v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 604
    .local v13, plugged:I
    const-string v17, "level"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 605
    .local v9, level:I
    const-string v17, "health"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 606
    .local v6, health:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x12e

    new-instance v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-direct {v0, v1, v9, v13, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 608
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 610
    .end local v6           #health:I
    .end local v9           #level:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v13           #plugged:I
    .end local v16           #status:I
    :cond_12
    const-string v17, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 613
    :cond_13
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 614
    const/16 v17, 0x1

    const-string v18, "phone_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/4 v8, 0x1

    .line 620
    .local v8, isSubPhone:Z
    :goto_1
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_14

    .line 621
    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "action "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " state"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , isSubPhone = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_14
    sput-boolean v8, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->isSubPhone:Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x129

    if-eqz v8, :cond_18

    const/16 v17, 0x1

    :goto_2
    const/16 v21, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 614
    .end local v8           #isSubPhone:Z
    :cond_15
    const/4 v8, 0x0

    goto :goto_1

    .line 617
    :cond_16
    const/16 v17, 0x5

    const-string v18, "phone_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    const/4 v8, 0x1

    .restart local v8       #isSubPhone:Z
    :goto_3
    goto/16 :goto_1

    .end local v8           #isSubPhone:Z
    :cond_17
    const/4 v8, 0x0

    goto :goto_3

    .line 625
    .restart local v8       #isSubPhone:Z
    :cond_18
    const/16 v17, 0x0

    goto :goto_2

    .line 627
    .end local v8           #isSubPhone:Z
    :cond_19
    const-string v17, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x131

    const-string v20, "android.media.EXTRA_RINGER_MODE"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 630
    :cond_1a
    const-string v17, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1b

    const-string v17, "android.intent.action.PHONE_STATE_EXT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 632
    :cond_1b
    const-string v17, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 633
    .local v15, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x132

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 634
    .end local v15           #state:Ljava/lang/String;
    :cond_1c
    const-string v17, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x135

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 637
    :cond_1d
    const-string v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x136

    const-string v20, "android.intent.extra.user_id"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 640
    :cond_1e
    const-string v17, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 641
    const-string v17, "POVISIONED"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 642
    .local v14, provisioned:Z
    const-string v17, "ICC_TYPE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 643
    .local v7, icc_type:I
    const-string v17, "ICC_OPERATOR_NUMERIC"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 644
    .local v11, operator:Ljava/lang/String;
    const-string v17, "phone_type"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 645
    .local v12, phone_type:I
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_1f

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_EXTRA_SIM_STATE_CHANGED - phone_type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1f
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v12, v0, :cond_21

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12a

    if-eqz v14, :cond_20

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v7, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 652
    .restart local v10       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 647
    .end local v10           #msg:Landroid/os/Message;
    :cond_20
    const/16 v17, 0x0

    goto :goto_4

    .line 654
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x12c

    if-eqz v14, :cond_22

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v7, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 659
    .restart local v10       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 654
    .end local v10           #msg:Landroid/os/Message;
    :cond_22
    const/16 v17, 0x0

    goto :goto_5

    .line 662
    .end local v7           #icc_type:I
    .end local v11           #operator:Ljava/lang/String;
    .end local v12           #phone_type:I
    .end local v14           #provisioned:Z
    :cond_23
    const-string v17, "com.htc.intent.action.PHONE_REQUEST_LOCKED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 664
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 665
    const/16 v17, 0x1

    const-string v18, "phoneType"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    const/4 v8, 0x1

    .line 672
    .restart local v8       #isSubPhone:Z
    :goto_6
    sput-boolean v8, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->isSubPhone:Z

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x129

    if-eqz v8, :cond_27

    const/16 v17, 0x1

    :goto_7
    const/16 v21, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    sget-boolean v17, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v17, :cond_2

    const-string v17, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sendMessage - PHONE_REQUEST_LOCKED , isSubPhone = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 665
    .end local v8           #isSubPhone:Z
    :cond_24
    const/4 v8, 0x0

    goto :goto_6

    .line 668
    :cond_25
    const/16 v17, 0x5

    const-string v18, "phoneType"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    const/4 v8, 0x1

    .restart local v8       #isSubPhone:Z
    :goto_8
    goto :goto_6

    .end local v8           #isSubPhone:Z
    :cond_26
    const/4 v8, 0x0

    goto :goto_8

    .line 673
    .restart local v8       #isSubPhone:Z
    :cond_27
    const/16 v17, 0x0

    goto :goto_7
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 471
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 472
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->DualonReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, action:Ljava/lang/String;
    sget-boolean v11, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v11, :cond_2

    const-string v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received broadcast "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_2
    const-string v11, "android.intent.action.TIME_TICK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.TIME_SET"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 482
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12d

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 483
    :cond_4
    const-string v11, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 485
    const-string v11, "networkState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 486
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getServiceStatusFrom(Landroid/content/Intent;)I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I

    move-result v12

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 487
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v11

    if-nez v11, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 489
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 495
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12f

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 492
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 493
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v12

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 497
    :cond_7
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 498
    const-string v11, "status"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 499
    .local v10, status:I
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 500
    .local v7, plugged:I
    const-string v11, "level"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 501
    .local v4, level:I
    const-string v11, "health"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 502
    .local v2, health:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e

    new-instance v13, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v13, v10, v4, v7, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 504
    .local v5, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 505
    .end local v2           #health:I
    .end local v4           #level:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v7           #plugged:I
    .end local v10           #status:I
    :cond_8
    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 506
    sget-boolean v11, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v11, :cond_9

    .line 507
    const-string v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " state"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x130

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 512
    :cond_a
    const-string v11, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 513
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x131

    const-string v14, "android.media.EXTRA_RINGER_MODE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 515
    :cond_b
    const-string v11, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 516
    const-string v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x132

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 518
    .end local v9           #state:Ljava/lang/String;
    :cond_c
    const-string v11, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 520
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x135

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 521
    :cond_d
    const-string v11, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 522
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x136

    const-string v14, "android.intent.extra.user_id"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 525
    :cond_e
    const-string v11, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 526
    const-string v11, "POVISIONED"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 527
    .local v8, provisioned:Z
    const-string v11, "ICC_TYPE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 528
    .local v3, icc_type:I
    const-string v11, "ICC_OPERATOR_NUMERIC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, operator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12c

    if-eqz v8, :cond_f

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v13, v11, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 535
    .restart local v5       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 530
    .end local v5           #msg:Landroid/os/Message;
    :cond_f
    const/4 v11, 0x0

    goto :goto_2
.end method
