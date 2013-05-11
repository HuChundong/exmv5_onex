.class Lcom/android/camera/component/CaptureBar$14;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v3, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/component/CaptureBar;->access$3100(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$3200(Lcom/android/camera/component/CaptureBar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v2}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v2}, Lcom/android/camera/component/CaptureBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$500(Lcom/android/camera/component/CaptureBar;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Duration;

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$1900(Lcom/android/camera/component/CaptureBar;)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$100(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v2}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$14;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$100(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
