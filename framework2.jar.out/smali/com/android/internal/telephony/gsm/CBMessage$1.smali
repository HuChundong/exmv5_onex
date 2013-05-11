.class Lcom/android/internal/telephony/gsm/CBMessage$1;
.super Ljava/lang/Object;
.source "CBMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/CBMessage;

.field final synthetic val$sChannels:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/CBMessage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->this$0:Lcom/android/internal/telephony/gsm/CBMessage;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->val$sChannels:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 572
    const-string v1, ""

    .line 573
    .local v1, cbmiChannelList:Ljava/lang/String;
    const-string v2, ""

    .line 574
    .local v2, cbmirChannelList:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->val$sChannels:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 575
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->val$sChannels:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 576
    .local v7, tmp:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 577
    .local v3, channel:Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 578
    const-string v8, ""

    if-eq v1, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    :cond_1
    const-string v8, ""

    if-eq v2, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 589
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #channel:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tmp:[Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v8, "isms"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v6

    .line 590
    .local v6, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v6, :cond_4

    .line 591
    invoke-interface {v6, v1}, Lcom/android/internal/telephony/ISms;->updateCBMI(Ljava/lang/String;)V

    .line 592
    invoke-interface {v6, v2}, Lcom/android/internal/telephony/ISms;->updateCBMIR(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v6           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_2
    return-void

    .line 594
    :catch_0
    move-exception v8

    goto :goto_2
.end method
