.class Landroid/net/HtcMobileNetworkEngine$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcMobileNetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/HtcMobileNetworkEngine;


# direct methods
.method constructor <init>(Landroid/net/HtcMobileNetworkEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine$1;->this$0:Landroid/net/HtcMobileNetworkEngine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 104
    invoke-static {}, Landroid/net/HtcMobileNetworkEngine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "HtcMobileNetworkEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter mMobileDataStateListener\'s onServiceStateChanged(): the serviceState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine$1;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v0}, Landroid/net/HtcMobileNetworkEngine;->access$100(Landroid/net/HtcMobileNetworkEngine;)V

    .line 108
    return-void
.end method
