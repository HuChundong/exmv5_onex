.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v1, "MobileDataStateReceiver::onReceive: should not be called"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/MobileDataStateTracker;->internalBroadcast_onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 223
    return-void
.end method
