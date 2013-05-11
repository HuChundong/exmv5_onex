.class Lcom/android/camera/component/SensorFocusController$9;
.super Lcom/android/camera/trigger/Trigger;
.source "SensorFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$9;->this$0:Lcom/android/camera/component/SensorFocusController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$9;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$202(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$9;->this$0:Lcom/android/camera/component/SensorFocusController;

    #getter for: Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0}, Lcom/android/camera/component/SensorFocusController;->access$100(Lcom/android/camera/component/SensorFocusController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$9;->this$0:Lcom/android/camera/component/SensorFocusController;

    const-wide/16 v1, 0x190

    #calls: Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/SensorFocusController;->access$000(Lcom/android/camera/component/SensorFocusController;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$9;->this$0:Lcom/android/camera/component/SensorFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SensorFocusController;->access$600(Lcom/android/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPreviewStarted - m_NeedSensorFocusAfterPreview is false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
