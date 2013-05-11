.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;
.super Landroid/os/Handler;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3989
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3991
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3996
    :goto_0
    return-void

    .line 3993
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataServiceStateChanged()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    goto :goto_0

    .line 3991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
