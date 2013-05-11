.class Lcom/android/camera/component/AutoFocusController$1;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$1;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/camera/component/AutoFocusController$14;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    invoke-static {}, Lcom/android/camera/FeatureConfig;->getDriverCallbackTimeoutHandlingPolicy()Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$1;->this$0:Lcom/android/camera/component/AutoFocusController;

    check-cast p7, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, p7, v1}, Lcom/android/camera/component/AutoFocusController;->access$000(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Auto-focus call-back timeout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
