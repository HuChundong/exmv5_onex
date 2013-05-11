.class Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleListBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;Lcom/htc/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 355
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleListBroadcastReceiver"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v2}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v1

    .line 357
    .local v1, listener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    if-nez v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->access$400(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 361
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onReadyDongleFound()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoReadyDongle()V

    goto :goto_0
.end method
