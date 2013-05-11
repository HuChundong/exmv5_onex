.class Lcom/android/camera/component/PowerSavingManager$1;
.super Ljava/lang/Object;
.source "PowerSavingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PowerSavingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerSavingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerSavingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerSavingManager$1;->this$0:Lcom/android/camera/component/PowerSavingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/PowerSavingManager$1;->this$0:Lcom/android/camera/component/PowerSavingManager;

    invoke-virtual {v2}, Lcom/android/camera/component/PowerSavingManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/PowerSavingManager$1;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PowerSavingManager;->access$000(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Register P-Sensor listener"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/PowerSavingManager$1;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/component/PowerSavingManager;->m_SensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/camera/component/PowerSavingManager;->access$100(Lcom/android/camera/component/PowerSavingManager;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PowerSavingManager$1;->this$0:Lcom/android/camera/component/PowerSavingManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PowerSavingManager;->access$200(Lcom/android/camera/component/PowerSavingManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No P-Sensor"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
