.class Lcom/android/camera/component/PhoneCallUI$4;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PhoneCallUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$1500(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pausingEvent m_nCurCallState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v4}, Lcom/android/camera/component/PhoneCallUI;->access$000(Lcom/android/camera/component/PhoneCallUI;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v2}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$700(Lcom/android/camera/component/PhoneCallUI;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v2}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$1600(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pausing- enable phone dialer"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$100(Lcom/android/camera/component/PhoneCallUI;)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$900(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PhoneCallUI;->access$1700(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pausing TelephonyManager - unregister"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI$4;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #setter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v2, v5}, Lcom/android/camera/component/PhoneCallUI;->access$702(Lcom/android/camera/component/PhoneCallUI;Z)Z

    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/service/HtcTelephonyManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/service/HtcTelephonyManager;->showIncallScreen()V

    :cond_1
    return-void
.end method
