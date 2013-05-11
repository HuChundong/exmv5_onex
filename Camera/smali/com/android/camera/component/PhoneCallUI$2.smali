.class Lcom/android/camera/component/PhoneCallUI$2;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


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
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v4, Lcom/android/camera/component/PhoneCallUI$8;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$900(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    move-result-object v3

    const v4, 0x40000020

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$1000(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager - register"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$1100(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "record Starting - disable phone dialer "

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #setter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v3, v6}, Lcom/android/camera/component/PhoneCallUI;->access$702(Lcom/android/camera/component/PhoneCallUI;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$700(Lcom/android/camera/component/PhoneCallUI;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$1200(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "record Stopping- enable phone dialer"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/component/PhoneCallUI;->m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$900(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PhoneCallUI;->access$1300(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager - unregister"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI$2;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #setter for: Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v3, v5}, Lcom/android/camera/component/PhoneCallUI;->access$702(Lcom/android/camera/component/PhoneCallUI;Z)Z

    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->showIncallScreen()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
