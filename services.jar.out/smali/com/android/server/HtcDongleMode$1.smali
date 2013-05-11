.class Lcom/android/server/HtcDongleMode$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcDongleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/HtcDongleMode;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    #getter for: Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/HtcDongleMode;->access$000(Lcom/android/server/HtcDongleMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "HtcDongleMode"

    const-string v2, "onReceive: DONGLE_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    const/4 v2, 0x1

    #calls: Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcDongleMode;->access$100(Lcom/android/server/HtcDongleMode;Z)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    #getter for: Lcom/android/server/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/HtcDongleMode;->access$000(Lcom/android/server/HtcDongleMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "HtcDongleMode"

    const-string v2, "onReceive: DONGLE_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/android/server/HtcDongleMode$1;->this$0:Lcom/android/server/HtcDongleMode;

    const/4 v2, 0x0

    #calls: Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcDongleMode;->access$100(Lcom/android/server/HtcDongleMode;Z)V

    goto :goto_0
.end method
