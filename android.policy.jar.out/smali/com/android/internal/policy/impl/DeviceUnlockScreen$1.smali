.class Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;
.super Landroid/os/Handler;
.source "DeviceUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->handlePinCheckFail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$000(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
