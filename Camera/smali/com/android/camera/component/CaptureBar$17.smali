.class Lcom/android/camera/component/CaptureBar$17;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 6
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/camera/component/CaptureBar$21;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3200(Lcom/android/camera/component/CaptureBar;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V
    invoke-static {v0, v4, v5}, Lcom/android/camera/component/CaptureBar;->access$3400(Lcom/android/camera/component/CaptureBar;ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$3100(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/android/camera/component/CaptureBar;->access$3400(Lcom/android/camera/component/CaptureBar;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$400(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIcon(Z)V
    invoke-static {v0, v4}, Lcom/android/camera/component/CaptureBar;->access$2400(Lcom/android/camera/component/CaptureBar;Z)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showRecordingTimer(Z)V
    invoke-static {v0, v4}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;Z)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$400(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)Z

    move-result v1

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$2100(Lcom/android/camera/component/CaptureBar;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
