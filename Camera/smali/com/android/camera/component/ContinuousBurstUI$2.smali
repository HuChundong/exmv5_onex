.class Lcom/android/camera/component/ContinuousBurstUI$2;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 10
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

    const/16 v2, 0x2712

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v4}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v4

    int-to-long v6, v4

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Release capture button"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ContinuousBurstUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/AutoDetectedScene;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1400(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    if-ne v9, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1500(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set burst mode to 1-shot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V
    invoke-static {v0, v8}, Lcom/android/camera/component/ContinuousBurstUI;->access$1600(Lcom/android/camera/component/ContinuousBurstUI;I)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v3}, Lcom/android/camera/component/ContinuousBurstUI;->access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$500(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-ne v0, v8, :cond_3

    sget-object v0, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    if-ne v9, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/4 v1, 0x2

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/ContinuousBurstUI;->access$1702(Lcom/android/camera/component/ContinuousBurstUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$2;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1800(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No controller to stop playing shutter sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
