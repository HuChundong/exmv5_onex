.class Lcom/android/camera/component/AutoSceneUI$5;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoSceneUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$200(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Effect change, but not photo mode, return."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$300(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/effect/IEffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$400(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Disable Smart Scene Detection by selecting Effect"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoSceneUI;->exitSmartSceneDetectMode()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$500(Lcom/android/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Enable Smart Scene Detection by selecting None Effect"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->Normal:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoSceneUI;->enterSmartSceneDetectMode()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$5;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->checkScene()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$000(Lcom/android/camera/component/AutoSceneUI;)V

    goto :goto_0
.end method
