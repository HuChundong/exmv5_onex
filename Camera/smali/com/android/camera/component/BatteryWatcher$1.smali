.class Lcom/android/camera/component/BatteryWatcher$1;
.super Lcom/android/camera/WorkerThread;
.source "BatteryWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BatteryWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BatteryWatcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BatteryWatcher$1;->this$0:Lcom/android/camera/component/BatteryWatcher;

    invoke-direct {p0, p2}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$1;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #calls: Lcom/android/camera/component/BatteryWatcher;->checkBatteryCapacity()V
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$000(Lcom/android/camera/component/BatteryWatcher;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$1;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #calls: Lcom/android/camera/component/BatteryWatcher;->checkBatteryTemperature()V
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$100(Lcom/android/camera/component/BatteryWatcher;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$1;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #calls: Lcom/android/camera/component/BatteryWatcher;->checkBatteryCapacity()V
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$000(Lcom/android/camera/component/BatteryWatcher;)V

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$1;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #calls: Lcom/android/camera/component/BatteryWatcher;->checkBatteryTemperature()V
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$100(Lcom/android/camera/component/BatteryWatcher;)V

    return-void
.end method
