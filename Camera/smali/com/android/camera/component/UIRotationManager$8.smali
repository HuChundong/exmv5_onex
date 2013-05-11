.class Lcom/android/camera/component/UIRotationManager$8;
.super Lcom/android/camera/trigger/Trigger;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIRotationManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$8;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$8;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-virtual {v1}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$8;->this$0:Lcom/android/camera/component/UIRotationManager;

    #calls: Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V
    invoke-static {v1}, Lcom/android/camera/component/UIRotationManager;->access$900(Lcom/android/camera/component/UIRotationManager;)V

    :cond_0
    return-void
.end method
