.class Lcom/android/camera/component/PowerSavingManager$3;
.super Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
.source "PowerSavingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PowerSavingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerSavingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerSavingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    invoke-direct {p0}, Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #setter for: Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/PowerSavingManager;->access$402(Lcom/android/camera/component/PowerSavingManager;Z)Z

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #setter for: Lcom/android/camera/component/PowerSavingManager;->m_IsScreenOnByPhoneCall:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/PowerSavingManager;->access$502(Lcom/android/camera/component/PowerSavingManager;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PowerSavingManager;->access$700(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged() - Call state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z
    invoke-static {v1}, Lcom/android/camera/component/PowerSavingManager;->access$400(Lcom/android/camera/component/PowerSavingManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/component/PowerSavingManager;->m_IsScreenOnByPhoneCall:Z
    invoke-static {v1}, Lcom/android/camera/component/PowerSavingManager;->access$500(Lcom/android/camera/component/PowerSavingManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PowerSavingManager;->access$600(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCallStateChanged() - Call missed, and screen is on by phone call"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    invoke-virtual {v1}, Lcom/android/camera/component/PowerSavingManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #setter for: Lcom/android/camera/component/PowerSavingManager;->m_IsScreenOnByPhoneCall:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/PowerSavingManager;->access$502(Lcom/android/camera/component/PowerSavingManager;Z)Z

    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #setter for: Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/PowerSavingManager;->access$402(Lcom/android/camera/component/PowerSavingManager;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/PowerSavingManager$3;->this$0:Lcom/android/camera/component/PowerSavingManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/PowerSavingManager;->m_IsRinging:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/PowerSavingManager;->access$402(Lcom/android/camera/component/PowerSavingManager;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
