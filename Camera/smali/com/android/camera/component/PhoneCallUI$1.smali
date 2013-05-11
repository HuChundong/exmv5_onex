.class Lcom/android/camera/component/PhoneCallUI$1;
.super Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
.source "PhoneCallUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PhoneCallUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct {p0}, Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$500(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallState onCallDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #setter for: Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v0, p1}, Lcom/android/camera/component/PhoneCallUI;->access$002(Lcom/android/camera/component/PhoneCallUI;I)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$400(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incomingNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$100(Lcom/android/camera/component/PhoneCallUI;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #setter for: Lcom/android/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/camera/component/PhoneCallUI;->access$202(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->getCallerContentBackgroundWorker(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/PhoneCallUI;->access$300(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$100(Lcom/android/camera/component/PhoneCallUI;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreciseCallStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$1;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$600(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallState onPreciseCallStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;->onPreciseCallStateChanged(I)V

    return-void
.end method
