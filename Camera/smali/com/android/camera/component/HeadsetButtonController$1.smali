.class Lcom/android/camera/component/HeadsetButtonController$1;
.super Lcom/android/camera/trigger/Trigger;
.source "HeadsetButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HeadsetButtonController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HeadsetButtonController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HeadsetButtonController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    #getter for: Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I
    invoke-static {v0}, Lcom/android/camera/component/HeadsetButtonController;->access$000(Lcom/android/camera/component/HeadsetButtonController;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    invoke-virtual {v0}, Lcom/android/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableActionScreen()V

    iget-object v0, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    invoke-static {v0}, Lcom/android/camera/component/HeadsetButtonController;->access$006(Lcom/android/camera/component/HeadsetButtonController;)I

    goto :goto_0

    :cond_0
    return-void
.end method
