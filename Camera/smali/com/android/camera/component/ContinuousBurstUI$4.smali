.class Lcom/android/camera/component/ContinuousBurstUI$4;
.super Lcom/android/camera/trigger/Trigger;
.source "ContinuousBurstUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v1, 0x1f4

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_continuous_burst_long_press_timeout"

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstUI$4;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
