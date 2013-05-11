.class Lcom/android/camera/component/ContinuousBurstUI$6;
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

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$6;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$6;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$1702(Lcom/android/camera/component/ContinuousBurstUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$6;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->removeMessages(I)V

    return-void
.end method
